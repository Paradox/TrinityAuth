# output generic information about the core and buildtype chosen
message("")
message("* TrinityCore rev. hash  : ${rev_hash}")
message("* TrinityCore rev. date  : ${rev_date}")
if( UNIX )
  message("* TrinityCore buildtype  : ${CMAKE_BUILD_TYPE}")
endif()
message("")

# output information about installation-directories and locations

message("* Install core to        : ${CMAKE_INSTALL_PREFIX}")
if( UNIX )
  message("* Install libraries to   : ${LIBSDIR}")
  message("* Install configs to     : ${CONF_DIR}")
endif()
message("")

# Show infomation about the options selected during configuration

if( USE_COREPCH )
  message("* Build core w/PCH       : Yes (default)")
else()
  message("* Build core w/PCH       : No")
endif()

if( WITH_WARNINGS )
  message("* Show all warnings      : Yes")
else()
  message("* Show compile-warnings  : No  (default)")
endif()

if( WITH_COREDEBUG )
  message("* Use coreside debug     : Yes")
  add_definitions(-DTRINITY_DEBUG)
else()
  message("* Use coreside debug     : No  (default)")
endif()

if( WIN32 )
  if( USE_MYSQL_SOURCES )
    message("* Use MySQL sourcetree   : Yes (default)")
  else()
    message("* Use MySQL sourcetree   : No")
  endif()
endif( WIN32 )

if ( NOJEM )
  message("")
  message("*** WARNING: jemalloc linking has been disabled!")
  message("*** Please note that this is for DEBUGGING WITH VALGRIND only!")
  message("*** DO NOT DISABLE IT UNLESS YOU KNOW WHAT YOU'RE DOING!")
endif()
message("")
