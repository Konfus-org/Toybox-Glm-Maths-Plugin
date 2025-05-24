project "Glm Maths"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "Off"
    externalwarnings "Off"

    targetdir ("../../" .. OutputTargetDir .. "")
    objdir    ("../../" .. OutputIntermediateDir .. "")

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
        "./*.lua"
    }

    defines
    {
        "TOYBOX",
        "COMPILING_TOYBOX",
        "GLM_ENABLE_EXPERIMENTAL",
        "GLM_FORCE_LEFT_HANDED",
        "GLM_DEPTH_ZERO_TO_ONE"
    }

    links
    {
        "glm"
    }

    includedirs
    {
        "./Include",
        "./Source",
        "%{Using.glm}"
    }

    ToyboxCorePluginConfigs()

    local projectDir = os.getcwd()
    local includePath = path.join(projectDir, "./Include")
    RegisterCorePlugin(includePath, "Glm Maths")