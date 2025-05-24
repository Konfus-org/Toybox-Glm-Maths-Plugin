project "Glm Math Plugin Tests"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++20"
    staticruntime "Off"
    ignoredefaultlibraries { "MSVCRT" }

    targetdir ("../../../" .. OutputTargetDir .. "")
    objdir    ("../../../" .. OutputIntermediateDir .. "")

    pchheader "PCH.h"
    pchsource "PCH.cpp" -- Full path MUST be specified relative to the premake5.lua (this) script.

    files
    {
        "./**.h",
        "./**.c",
        "./**.hpp",
        "./**.cpp",
        "./**.md",
        "./**.lua",
    }

    includedirs
    {
        "./",
        "../Include",
        "%{Using.googletest}",
        "%{Using.googletest}/include",
        "%{Using.googlemock}",
        "%{Using.googlemock}/include",
    }

    links
    {
        "googletest",
        "googlemock",
        "Glm Maths"
    }

    ToyboxProjectConfigs()