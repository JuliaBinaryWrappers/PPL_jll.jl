# Autogenerated wrapper script for PPL_jll for aarch64-linux-gnu-cxx11
export libppl, libppl_c, ppl_lcdd, ppl_config, ppl_pips

using GMP_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libppl`
const libppl_splitpath = ["lib", "libppl.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libppl_path = ""

# libppl-specific global declaration
# This will be filled out by __init__()
libppl_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libppl = "libppl.so.14"


# Relative path to `libppl_c`
const libppl_c_splitpath = ["lib", "libppl_c.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libppl_c_path = ""

# libppl_c-specific global declaration
# This will be filled out by __init__()
libppl_c_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libppl_c = "libppl_c.so.4"


# Relative path to `ppl_lcdd`
const ppl_lcdd_splitpath = ["bin", "ppl_lcdd"]

# This will be filled out by __init__() for all products, as it must be done at runtime
ppl_lcdd_path = ""

# ppl_lcdd-specific global declaration
function ppl_lcdd(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(ppl_lcdd_path)
    end
end


# Relative path to `ppl_config`
const ppl_config_splitpath = ["bin", "ppl-config"]

# This will be filled out by __init__() for all products, as it must be done at runtime
ppl_config_path = ""

# ppl_config-specific global declaration
function ppl_config(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(ppl_config_path)
    end
end


# Relative path to `ppl_pips`
const ppl_pips_splitpath = ["bin", "ppl_pips"]

# This will be filled out by __init__() for all products, as it must be done at runtime
ppl_pips_path = ""

# ppl_pips-specific global declaration
function ppl_pips(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(ppl_pips_path)
    end
end


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"PPL")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (GMP_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (GMP_jll.LIBPATH_list,))

    global libppl_path = normpath(joinpath(artifact_dir, libppl_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libppl_handle = dlopen(libppl_path)
    push!(LIBPATH_list, dirname(libppl_path))

    global libppl_c_path = normpath(joinpath(artifact_dir, libppl_c_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libppl_c_handle = dlopen(libppl_c_path)
    push!(LIBPATH_list, dirname(libppl_c_path))

    global ppl_lcdd_path = normpath(joinpath(artifact_dir, ppl_lcdd_splitpath...))

    push!(PATH_list, dirname(ppl_lcdd_path))
    global ppl_config_path = normpath(joinpath(artifact_dir, ppl_config_splitpath...))

    push!(PATH_list, dirname(ppl_config_path))
    global ppl_pips_path = normpath(joinpath(artifact_dir, ppl_pips_splitpath...))

    push!(PATH_list, dirname(ppl_pips_path))
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

