using Test
using TwoBit
using BioSequences
using BioGenerics
using FormatSpecimens
using Documenter

@testset "TwoBit" begin
    buffer = IOBuffer()
    writer = TwoBit.Writer(buffer, ["chr1", "chr2"])
    chr1 = dna"ACGTNN"
    chr2 = dna"N" ^ 100 * dna"ACGT" ^ 100 * dna"N" ^ 100
    write(writer, TwoBit.Record("chr1", chr1))
    write(writer, TwoBit.Record("chr2", chr2))
    seekstart(buffer)
    reader = TwoBit.Reader(buffer)
    @test length(reader) == 2
    @test TwoBit.seqnames(reader) == ["chr1", "chr2"]
    @test TwoBit.sequence(reader["chr1"]) == chr1
    @test TwoBit.sequence(reader["chr2"]) == chr2
    @test TwoBit.sequence(reader["chr1"]) == chr1
    @test_throws KeyError reader["chr10"]
    @test_throws BoundsError reader[3]

    function check_2bit_parse(filename)
        stream = open(TwoBit.Reader, filename)
        @test eltype(stream) === TwoBit.Record
        # read from a stream
        for record in stream
            @test hassequence(record) == TwoBit.hassequence(record) == true
            a = TwoBit.sequence(ReferenceSequence, record)
            b = TwoBit.sequence(LongDNASeq, record)
            @test TwoBit.sequence(ReferenceSequence, record) == TwoBit.sequence(LongDNASeq, record)
        end
        close(stream)

        # round trip
        buffer = IOBuffer()
        reader = open(TwoBit.Reader, filename)
        writer = TwoBit.Writer(buffer, TwoBit.seqnames(reader))
        expected_entries = TwoBit.Record[]
        for (name, record) in zip(TwoBit.seqnames(reader), reader)
            write(writer, TwoBit.Record(name, TwoBit.sequence(record), TwoBit.maskedblocks(record)))
            push!(expected_entries, record)
        end

        read_entries = TwoBit.Record[]
        seekstart(buffer)
        for record in TwoBit.Reader(buffer)
            push!(read_entries, record)
        end

        return expected_entries == read_entries
    end

    path = path_of_format("2bit")
    goodfiles = list_valid_specimens("2bit")

    for specimen in goodfiles
        filepath = joinpath(path, filename(specimen))
        @test check_2bit_parse(filepath)
    end

    # Include doctests.
    DocMeta.setdocmeta!(TwoBit, :DocTestSetup, :(using TwoBit); recursive=true)
    doctest(TwoBit; manual = false)
end
