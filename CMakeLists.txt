# See: https://cmake.org/cmake/help/latest/command/cmake_minimum_required.html
cmake_minimum_required(VERSION 3.15...3.25)

# See: https://cmake.org/cmake/help/latest/command/project.html
project(
    hello
    VERSION 1.0
    LANGUAGES CXX
)

# See: https://cmake.org/cmake/help/latest/command/add_executable.html
add_executable(
    hello
    hello.cpp
)

# See: https://cmake.org/cmake/help/latest/command/target_compile_features.html
target_compile_features(hello
    PUBLIC
        cxx_std_17          # See: https://cmake.org/cmake/help/latest/prop_gbl/CMAKE_CXX_KNOWN_FEATURES.html#prop_gbl:CMAKE_CXX_KNOWN_FEATURES
)
# See: https://cmake.org/cmake/help/latest/command/set_target_properties.html
set_target_properties(hello
    PROPERTIES              # See: https://cmake.org/cmake/help/latest/manual/cmake-properties.7.html#target-properties
        CXX_EXTENSIONS OFF  # See: https://cmake.org/cmake/help/latest/prop_tgt/CXX_EXTENSIONS.html
)
