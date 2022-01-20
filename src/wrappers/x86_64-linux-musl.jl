# Autogenerated wrapper script for MariaDB_Connector_C_jll for x86_64-linux-musl
export libmariadb

using LibCURL_jll
using Libiconv_jll
using OpenSSL_jll
using Zlib_jll
JLLWrappers.@generate_wrapper_header("MariaDB_Connector_C")
JLLWrappers.@declare_library_product(libmariadb, "libmariadb.so.3")
function __init__()
    JLLWrappers.@generate_init_header(LibCURL_jll, Libiconv_jll, OpenSSL_jll, Zlib_jll)
    JLLWrappers.@init_library_product(
        libmariadb,
        "lib/mariadb/libmariadb.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
