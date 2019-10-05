cmake_minimum_required(VERSION 3.12.4)
project(GITuck)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

file(GLOB SRC_FILES sources/*.cpp)

add_executable(GITuck ${SRC_FILES})
add_custom_target(run COMMAND ./GITuck DEPENDS GITuck)

add_custom_target(check_everything DEPENDS GITuck)
