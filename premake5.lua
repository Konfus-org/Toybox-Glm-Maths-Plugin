project "Glm Maths"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "Off"

    local projectDir = os.getcwd()
    local includePath = path.join(projectDir, "./Include")
    RegisterStaticPlugin(includePath, "Glm Maths")

    pchheader "Tbx/Math/PCH.h"
    pchsource "Source/Tbx/Math/PCH.cpp" -- Full path MUST be specified relative to the premake5.lua (this) script.

    files
    {
        "./Source/**.h",
        "./Source/**.c",
        "./Source/**.cc",
        "./Source/**.hpp",
        "./Source/**.cpp",
        "./Include/**.h",
        "./Include/**.c",
        "./Include/**.cc",
        "./Include/**.hpp",
        "./Include/**.cpp",
        "./**.plugin",
        "./**.md",
        "./*.lua",
        "./*.txt"
    }
    includedirs
    {
        "./Include",
        "./Source",
        _MAIN_SCRIPT_DIR .. "/Dependencies/glm"
    }
    links
    {
        "glm"
    }
    defines
    {
        "TOYBOX",
        "COMPILING_TOYBOX",
        "GLM_ENABLE_EXPERIMENTAL",
        "GLM_FORCE_LEFT_HANDED",
        "GLM_DEPTH_ZERO_TO_ONE"
    }