# See: https://cmake.org/cmake/help/latest/command/add_executable.html
add_executable(
    hello
    hello.cpp
)

# See: https://cmake.org/cmake/help/latest/command/target_compile_features.html
target_compile_features(hello
    PRIVATE
        cxx_std_17          # See: https://cmake.org/cmake/help/latest/prop_gbl/CMAKE_CXX_KNOWN_FEATURES.html#prop_gbl:CMAKE_CXX_KNOWN_FEATURES
)
# See: https://cmake.org/cmake/help/latest/command/set_target_properties.html
set_target_properties(hello
    PROPERTIES              # See: https://cmake.org/cmake/help/latest/manual/cmake-properties.7.html#target-properties
        CXX_EXTENSIONS OFF  # See: https://cmake.org/cmake/help/latest/prop_tgt/CXX_EXTENSIONS.html
)

# See: https://cmake.org/cmake/help/latest/command/target_link_libraries.html
target_link_libraries(hello
    PRIVATE
        mylib
)
