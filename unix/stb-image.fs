\ stb-image bindings

c-library stb-image
    s" -O3" add-cflags
    s" m" add-lib
    \c #define STB_IMAGE_IMPLEMENTATION
    \c #include <stb/stb_image.h>
    c-function stbi_load_from_memory stbi_load_from_memory a n a a a n -- a ( buffer buffer_length *width *height *channels force_channels -- image )
end-c-library
