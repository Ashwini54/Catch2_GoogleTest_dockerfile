cmake_minimum_required(VERSION 3.0)
 
file(GLOB_RECURSE TEST_SOURCES *.cpp)

Project(gtest)

# Link include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)

# Link conan_basic_setup()

# Locate GTest
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})
 
# Link runTests with what we want to test and the GTest and pthread library
add_executable(executeTests sqrt_test.cpp)
target_link_libraries(executeTests ${GTEST_LIBRARIES} pthread)


# EOF
