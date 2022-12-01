# See: https://cmake.org/cmake/help/latest/command/add_library.html
add_library(mylib INTERFACE)

# See: https://cmake.org/cmake/help/latest/command/target_include_directories.html
target_include_directories(mylib
    INTERFACE
        include
)

# See: https://cmake.org/cmake/help/latest/command/target_sources.html
target_sources(mylib
    INTERFACE
        include/mylib.hpp
)
