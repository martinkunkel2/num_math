# Design

## Build time

### No standard library
`dsn~no_std~1`

Deactivate usage of the rust standard library.

Rational:

The usage of the standard library leads to linkage against system libraries which are not available in all embedded systems.

Covers:

* [req~dependency_free~1]

Needs: impl, itest

### No dependencies
`dsn~no_deps~1`

There shall be no dependencies defined to other libraries.

Rational:

The library shall be dependency-free.

Covers:

* [req~dependency_free~1]

Needs: itest
