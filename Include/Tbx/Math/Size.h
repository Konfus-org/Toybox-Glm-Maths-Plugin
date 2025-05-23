#pragma once
#include "Tbx/Core/DllExport.h"
#include "Tbx/Core/Math/Int.h"
#include "Tbx/Core/Debug/IPrintable.h"
#include <format>

namespace Tbx
{
    struct EXPORT Size : public IPrintable
    {
    public:
        Size() = default;
        Size(int width, int height) : Width(width), Height(height) {}

        std::string ToString() const override { return std::format("(Width: {}, Height: {})", Width, Height); }
        float GetAspectRatio() const { return (float)Width / (float)Height; }

        uint Width = 0;
        uint Height = 0;
    };
}