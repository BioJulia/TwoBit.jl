# Writing to 2Bit files

To write a 2Bit file, you have to use a [`TwoBit.Writer`](@ref).

```@docs
TwoBit.Writer
```

[`TwoBit.Writer`](@ref) wraps an IO type, and must be provided a set of names
of the sequences that shall be written on construction.

To write a sequence to 2Bit file, create a [`TwoBit.Record`](@ref) using the
sequence and then use the `Base.write` method.

