project "Glm Maths"
    kind "StaticLib"
    language "C++"
    cppdialect "C++20"
    staticruntime "Off"
    externalwarnings "Off"

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
        "./3rd Party/glm"
    }

    -- To debug loading shared libs at runtime
    filter "system:Windows"
        links "DbgHelp.lib"

    ToyboxProjectConfigs()