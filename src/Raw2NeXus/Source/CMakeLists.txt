# Set minimum version
cmake_minimum_required(VERSION 2.6)

# Add the path to our custom 'find' modules
set ( CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/Build/CMake")

# Set the project name
project( Raw2NeXus )

# Set up the third party locations for Windows
if ( WIN32 )
    set ( THIRD_PARTY "${PROJECT_SOURCE_DIR}/Third_Party" )
    set ( CMAKE_INCLUDE_PATH "${THIRD_PARTY}/include" )
    set ( BOOST_INCLUDEDIR "${THIRD_PARTY}/include" )
    set ( Boost_NO_SYSTEM_PATHS TRUE )
    if ( CMAKE_CL_64 )
        message ( FATAL_ERROR "64 bit compiler found. Currently unsupported" )
    else()
        message ( STATUS "32 bit compiler found" )
        set ( CMAKE_LIBRARY_PATH "${THIRD_PARTY}/lib/win32" )
        set ( BOOST_LIBRARY_DIR  "${THIRD_PARTY}/lib/win32" )
    endif ()
endif ()

# Try and find the dependencies

# Boost date_time
find_package ( Boost REQUIRED date_time )
include_directories( ${Boost_INCLUDE_DIRS} )
link_directories ( ${Boost_LIBRARY_DIRS} ) 
add_definitions ( -DBOOST_ALL_DYN_LINK )
add_definitions ( -DBOOST_DATE_TIME_POSIX_TIME_STD_CONFIG )


# Poco Foundation
find_package ( PocoFoundation REQUIRED )
include_directories ( ${POCO_INCLUDE_DIRS} )

# NeXus library
find_package ( Nexus REQUIRED )
include_directories ( ${NEXUS_INCLUDE_DIR} )

###############################################################################

# BUILD 
###############################################################################

set ( SRC_FILES 
    SaveISISNeXus.cpp
    main.cpp
		LoadRaw/byte_rel_comp.cpp
		LoadRaw/isisraw2.cpp
		LoadRaw/isisraw.cpp
		LoadRaw/item_struct.cpp
		LoadRaw/vms_convert.cpp
		)

set ( INC_FILES 
    SaveISISNeXus.h
		LoadRaw/byte_rel_comp.h
		LoadRaw/isisraw2.h
		LoadRaw/isisraw.h
		LoadRaw/item_struct.h
		LoadRaw/vms_convert.h
		)

# ISIS RAW headers
include_directories ( LoadRaw )

# Add the target for this directory
add_executable ( raw2nexus ${SRC_FILES} ${INC_FILES} )

# Set library dependencies
target_link_libraries ( raw2nexus ${Boost_LIBRARIES} ${POCO_LIB_FOUNDATION} ${NEXUS_LIBRARIES} )
