# Requirements

## Features

### Embedded development
`feat~embedded_development~1`

The library shall be created with focus on embedded use cases.

Needs: req

## Requirements

### Dependency-free
`req~dependency_free~1`

The library shall have no dependencies to other rust or system libraries.

Rationale:

In embedded system those libraries might not be available or are not designed for embedded systems.

Covers:

* [feat~embedded_development~1]

Needs: dsn
