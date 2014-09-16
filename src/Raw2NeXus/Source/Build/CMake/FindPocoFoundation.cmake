# - Try to find Poco Foundation library and include files
# POCO_INCLUDE_DIR where to find Standard.hxx, etc.
# POCO_LIB_FOUNDATION libraries to link against
# POCO_FOUND If false, do not try to use POCO

find_path ( POCO_INCLUDE_DIR Poco/Poco.h )

find_library ( POCO_LIB_FOUNDATION NAMES PocoFoundation )
find_library ( POCO_LIB_FOUNDATION_DEBUG NAMES PocoFoundationd )

if ( POCO_LIB_FOUNDATION_DEBUG )

set ( POCO_LIB_FOUNDATION optimized ${POCO_LIB_FOUNDATION}
                     debug ${POCO_LIB_FOUNDATION_DEBUG}
)

endif ()

# handle the QUIETLY and REQUIRED arguments and set POCO_FOUND to TRUE if 
# all listed variables are TRUE
include ( FindPackageHandleStandardArgs )
find_package_handle_standard_args( PocoFoundation DEFAULT_MSG POCO_LIB_FOUNDATION POCO_INCLUDE_DIR )
