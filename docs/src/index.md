# TwoBit

[![Latest Release](https://img.shields.io/github/release/BioJulia/TwoBit.jl.svg)](https://github.com/BioJulia/TwoBit.jl/releases/latest)
[![MIT license](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/BioJulia/TwoBit.jl/blob/master/LICENSE)
[![Stable documentation](https://img.shields.io/badge/docs-stable-blue.svg)](https://biojulia.github.io/TwoBit.jl/stable)
[![Latest documentation](https://img.shields.io/badge/docs-latest-blue.svg)](https://biojulia.github.io/TwoBit.jl/dev/)
[![Pkg Status](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)

## Description

TwoBit.jl provides I/O and utilities for manipulating 2Bit sequence data files.

2Bit is a binary file format designed for storing a genome consists of multiple chromosomal sequences.

The reading speed is often an order of magnitude faster than that of FASTA and the file size is smaller.

However, since the .2bit file format is specialized for genomic sequences, it cannot store either RNA or amino acid sequences.

For storage of sequencing read datasets, compressed and indexed on disk, head over to [ReadDatastores.jl](https://github.com/BioJulia/ReadDatastores.jl)

## Installation

You can install TwoBit from the julia REPL.
Press `]` to enter pkg mode again, and enter the following:

```julia
add TwoBit
```

If you are interested in the cutting edge of the development, please check out
the master branch to try new features before release.


## Testing

TwoBit is tested against Julia `1.X` on Linux, OS X, and Windows.

**Latest build status:**

[![Unit Tests](https://github.com/BioJulia/TwoBit.jl/actions/workflows/UnitTests.yml/badge.svg)](https://github.com/BioJulia/TwoBit.jl/actions/workflows/UnitTests.yml)
[![Documentation](https://github.com/BioJulia/TwoBit.jl/actions/workflows/Documentation.yml/badge.svg)](https://github.com/BioJulia/TwoBit.jl/actions/workflows/Documentation.yml)


## Contributing

We appreciate contributions from users including reporting bugs, fixing issues, improving performance and adding new features.

Take a look at the [contributing files](https://github.com/BioJulia/Contributing) detailed contributor and maintainer guidelines, and code of conduct.


### Financial contributions

We also welcome financial contributions in full transparency on our [open collective](https://opencollective.com/biojulia).
Anyone can file an expense.
If the expense makes sense for the development of the community, it will be "merged" in the ledger of our open collective by the core contributors and the person who filed the expense will be reimbursed.


## Backers & Sponsors

Thank you to all our backers and sponsors!

Love our work and community? [Become a backer](https://opencollective.com/biojulia#backer).

[![backers](https://opencollective.com/biojulia/backers.svg?width=890)](https://opencollective.com/biojulia#backers)

Does your company use BioJulia? Help keep BioJulia feature rich and healthy by [sponsoring the project](https://opencollective.com/biojulia#sponsor).
Your logo will show up here with a link to your website.

[![](https://opencollective.com/biojulia/sponsor/0/avatar.svg)](https://opencollective.com/biojulia/sponsor/0/website)
[![](https://opencollective.com/biojulia/sponsor/1/avatar.svg)](https://opencollective.com/biojulia/sponsor/1/website)
[![](https://opencollective.com/biojulia/sponsor/2/avatar.svg)](https://opencollective.com/biojulia/sponsor/2/website)
[![](https://opencollective.com/biojulia/sponsor/3/avatar.svg)](https://opencollective.com/biojulia/sponsor/3/website)
[![](https://opencollective.com/biojulia/sponsor/4/avatar.svg)](https://opencollective.com/biojulia/sponsor/4/website)
[![](https://opencollective.com/biojulia/sponsor/5/avatar.svg)](https://opencollective.com/biojulia/sponsor/5/website)
[![](https://opencollective.com/biojulia/sponsor/6/avatar.svg)](https://opencollective.com/biojulia/sponsor/6/website)
[![](https://opencollective.com/biojulia/sponsor/7/avatar.svg)](https://opencollective.com/biojulia/sponsor/7/website)
[![](https://opencollective.com/biojulia/sponsor/8/avatar.svg)](https://opencollective.com/biojulia/sponsor/8/website)
[![](https://opencollective.com/biojulia/sponsor/9/avatar.svg)](https://opencollective.com/biojulia/sponsor/9/website)


## Questions?

If you have a question about contributing or using BioJulia software, come on over and chat to us on [the Julia Slack workspace](https://julialang.org/slack/), or you can try the [Bio category of the Julia discourse site](https://discourse.julialang.org/c/domain/bio).
