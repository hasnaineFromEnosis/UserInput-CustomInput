# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\UserInput-CustomInput_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\UserInput-CustomInput_autogen.dir\\ParseCache.txt"
  "UserInput-CustomInput_autogen"
  )
endif()
