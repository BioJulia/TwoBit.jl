# Reading 2Bit files

You read 2Bit files using the TwoBit.Reader type.

```@docs
TwoBit.Reader
```

The type wraps an IO type and supports random access to the sequence records
in the file.

```julia
reader = TwoBit.Reader(open("sacCer.2bit", "r"))
chrIV = reader["chrIV"] # directly read chromosome 4
```

If you want to know the names of the sequences available in the file, you can 
use the `seqnames` method on the reader.

```julia
TwoBit.seqnames(reader)
```

Reading from a [`TwoBit.Reader`](@ref) will yield a [`TwoBit.Record`](@ref) type
variable.