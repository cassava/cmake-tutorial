CMake Tutorial "Slides"
=======================

This repository is a CMake tutorial. Each commit is a slide.
It's meant to be accompanied by someone talking and walking you through the
code.

Source `.present.sh` to make some `git-go-*` aliases available, then:

    alias nx="git-go-next -c -d"
    git-go-begin

I like to set an alias `nx` because that is the command I will be using most
often. I also recommend using `git-delta`, which you can install and configure
with:

    cargo install git-delta
    git config core.pager delta
    git config delta.side-by-side true

This makes it a lot easier for people to follow what's happening.

Upcoming
--------

This tutorial is not complete yet. The following topics have not been covered
and will be at a future point:

- Defining and Using Options: `option()`
- Control Flow: `if()`, `endif()`, ...

- Testing (using CTest)

- Compile time definitions: `target_compile_definitions()`
- Configuring files (header.hpp.in -> header.hpp): `configure_file()`

These topics are advanced and I'm not sure if they will be covered:

- Installing project
- Creating packages (using CPack)
- Variables: `set()`, `list()`
- Writing CMake functions / macros
- Writing CMake modules (*.cmake)

Contributing
------------

Since the entire history is the tutorial, you should not expect `git pull`
to work with this repository.
