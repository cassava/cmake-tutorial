# See: https://cmake.org/cmake/help/latest/command/cmake_minimum_required.html
cmake_minimum_required(VERSION 3.15...3.25)

# See: https://cmake.org/cmake/help/latest/command/project.html
project(
    ModernCMakeTutorial
    VERSION 1.0
    LANGUAGES CXX
)

find_package(Boost COMPONENTS chrono REQUIRED)

# https://cmake.org/cmake/help/latest/command/add_subdirectory.html
add_subdirectory(mylib)
add_subdirectory(app)
