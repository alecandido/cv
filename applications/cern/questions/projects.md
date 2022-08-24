During my master thesis, I developed an algorithm for an MCMC for a lattice
calculation with gauge fields in a dynamical background. I implemented the
algorithm from scratch in a C++ application, while the collected results have
been analysed with Python scripts and common packages (e.g. NumPy, Matplotlib).

In my PhD I worked instead in the field of pQCD, developing an integrated
pipeline to produce PDF agnostic predictions.
The whole framework is oriented towards a PDF fit, but each module on its own
have its separate goal: PDF evolution, DIS predictions, grids management, and so
on. In this way, we provided many useful applications and libraries, extensible
and maintainable, while the framework is realized one layer above, with separate
(thin) integrations.
All the code is in Python and Rust, but each element is interfaced to the others
through generated files, stored in simple formats to be read from all main
scientific programming languages (Fortran, C/C++, Python and Rust). When needed
bindings to other languages are provided.
Since performances are critical to make physiological iterations possible, the
code is written in a suitable language (e.g. Rust) or making use of third party
frameworks (e.g. Numba).
Each project of the pipeline is open-source, continuously integrated and
deployed, and detailed docs are provided (user-friendly, to the best of our
ability).

Project references in the attached CV.
