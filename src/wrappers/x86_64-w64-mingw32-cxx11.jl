# Autogenerated wrapper script for PPL_jll for x86_64-w64-mingw32-cxx11
export libppl, libppl_c, ppl_config, ppl_lcdd, ppl_pips

using GMP_jll
JLLWrappers.@generate_wrapper_header("PPL")
JLLWrappers.@declare_library_product(libppl, "libppl-14.dll")
JLLWrappers.@declare_library_product(libppl_c, "libppl_c-4.dll")
JLLWrappers.@declare_executable_product(ppl_config)
JLLWrappers.@declare_executable_product(ppl_lcdd)
JLLWrappers.@declare_executable_product(ppl_pips)
function __init__()
    JLLWrappers.@generate_init_header(GMP_jll)
    JLLWrappers.@init_library_product(
        libppl,
        "bin\\libppl-14.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libppl_c,
        "bin\\libppl_c-4.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        ppl_config,
        "bin\\ppl-config.exe",
    )

    JLLWrappers.@init_executable_product(
        ppl_lcdd,
        "bin\\ppl_lcdd.exe",
    )

    JLLWrappers.@init_executable_product(
        ppl_pips,
        "bin\\ppl_pips.exe",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
