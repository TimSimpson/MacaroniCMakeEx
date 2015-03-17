cmake_minimum_required (VERSION 3.2)
project (MacaroniFromCMake)


find_package(Boost REQUIRED)
include_directories(${Boost_INCLUDE_DIRS})

execute_process(
    COMMAND
        "macaroni" "-g"
    WORKING_DIRECTORY
        "${CMAKE_CURRENT_SOURCE_DIR}/../Macaroni"
)

include("${CMAKE_CURRENT_SOURCE_DIR}/../Macaroni/target/CMakeLists.txt")
