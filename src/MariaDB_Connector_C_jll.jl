# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule MariaDB_Connector_C_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("MariaDB_Connector_C")
JLLWrappers.@generate_main_file("MariaDB_Connector_C", UUID("aabc7e14-95f1-5e66-9f32-aea603782360"))
end  # module MariaDB_Connector_C_jll
