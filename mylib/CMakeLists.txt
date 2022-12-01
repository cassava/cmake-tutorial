# See: https://cmake.org/cmake/help/latest/command/add_library.html
add_library(mylib
    src/mylib.cpp
    include/mylib.hpp
)

# See: https://cmake.org/cmake/help/latest/command/target_include_directories.html
target_include_directories(mylib
    PUBLIC
        include
)

# See: https://cmake.org/cmake/help/latest/command/target_link_libraries.html
target_link_libraries(mylib
    PRIVATE
        Boost::chrono
)

# See: https://cmake.org/cmake/help/latest/command/target_compile_features.html
target_compile_features(mylib
    PRIVATE
        cxx_std_11
)
