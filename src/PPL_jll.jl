# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule PPL_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("PPL")
JLLWrappers.@generate_main_file("PPL", UUID("80dd9cbb-8b87-5171-a280-372cc418f402"))
end  # module PPL_jll
