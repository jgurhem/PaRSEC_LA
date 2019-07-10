project (parsec-la C)
cmake_minimum_required(VERSION 3.13)

find_package(PARSEC)
find_package(MPI)
include(ParsecConfig)
include(ParsecCompilePTG)
include(ParsecConfigVersion)


macro(parsec_addexample lang target input)
  add_executable(${target} ${input})
  #set_target_properties(${target} PROPERTIES
    #LINKER_LANGUAGE ${lang})
  target_include_directories(${target} PUBLIC ${MPI_INCLUDE_PATH})
  target_link_libraries(${target} ${MPI_C_LIBRARIES} parsec)
  #  install(TARGETS ${target} RUNTIME DESTINATION bin)
endmacro(parsec_addexample)

parsec_compile_ptg(lu_generated "${CMAKE_CURRENT_SOURCE_DIR}/lu.jdf")
parsec_addexample(C lu "${lu_generated}")
target_compile_definitions(lu PRIVATE DEBUG_OUTPUT_COO=${DEBUG_OUTPUT_COO} DEBUG_PRINT_TASK=${DEBUG_PRINT_TASK})
