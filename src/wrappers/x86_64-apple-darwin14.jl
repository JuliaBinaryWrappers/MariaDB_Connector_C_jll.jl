# Autogenerated wrapper script for MariaDB_Connector_C_jll for x86_64-apple-darwin14
export libmariadb

using LibCURL_jll
using Libiconv_jll
using OpenSSL_jll
using Zlib_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "DYLD_FALLBACK_LIBRARY_PATH"

# Relative path to `libmariadb`
const libmariadb_splitpath = ["lib", "mariadb", "libmariadb.3.dylib"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libmariadb_path = ""

# libmariadb-specific global declaration
# This will be filled out by __init__()
libmariadb_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libmariadb = "@rpath/libmariadb.3.dylib"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"MariaDB_Connector_C")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (LibCURL_jll.PATH_list, Libiconv_jll.PATH_list, OpenSSL_jll.PATH_list, Zlib_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (LibCURL_jll.LIBPATH_list, Libiconv_jll.LIBPATH_list, OpenSSL_jll.LIBPATH_list, Zlib_jll.LIBPATH_list,))

    global libmariadb_path = normpath(joinpath(artifact_dir, libmariadb_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libmariadb_handle = dlopen(libmariadb_path)
    push!(LIBPATH_list, dirname(libmariadb_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

