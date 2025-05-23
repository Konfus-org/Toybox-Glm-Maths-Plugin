#include "Tbx/Core/PCH.h"
#include "Tbx/Core/Math/Bounds.h"
#include "Tbx/Core/Math/Trig.h"

namespace Tbx
{
    Bounds Bounds::FromOrthographicProjection(float size, float aspect)
    {
        float halfWidth = (size * aspect);
        float halfHeight = size;

        float left = -halfWidth;
        float right = halfWidth;
        float top = halfHeight;
        float bottom = -halfHeight;

        return { left, right, top, bottom };
    }

    Bounds Bounds::FromPerspectiveProjection(float fov, float aspectRatio, float zNear)
    {
        float scale = Math::Tan(fov * 0.5f * zNear);

        const float left = aspectRatio * -scale;
        const float right = -left;
        const float top = scale;
        const float bottom = -top;

        return { left, right, top, bottom };
    }
}
