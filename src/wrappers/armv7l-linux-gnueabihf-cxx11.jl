# Autogenerated wrapper script for PPL_jll for armv7l-linux-gnueabihf-cxx11
export libppl, libppl_c, ppl_config, ppl_lcdd, ppl_pips

using GMP_jll
JLLWrappers.@generate_wrapper_header("PPL")
JLLWrappers.@declare_library_product(libppl, "libppl.so.14")
JLLWrappers.@declare_library_product(libppl_c, "libppl_c.so.4")
JLLWrappers.@declare_executable_product(ppl_config)
JLLWrappers.@declare_executable_product(ppl_lcdd)
JLLWrappers.@declare_executable_product(ppl_pips)
function __init__()
    JLLWrappers.@generate_init_header(GMP_jll)
    JLLWrappers.@init_library_product(
        libppl,
        "lib/libppl.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libppl_c,
        "lib/libppl_c.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        ppl_config,
        "bin/ppl-config",
    )

    JLLWrappers.@init_executable_product(
        ppl_lcdd,
        "bin/ppl_lcdd",
    )

    JLLWrappers.@init_executable_product(
        ppl_pips,
        "bin/ppl_pips",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
