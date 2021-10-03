#version 140

uniform sampler2D heightmap;
uniform sampler2D texture;
uniform sampler2D rocks;
uniform sampler2D snowrocks;

in vec2 v_texcoord;
in vec3 v_position;
//! [0]
void main()
{
    float height = texture2D(heightmap, v_texcoord).p;

    // Set fragment color from texture
    if (height < 0.1) {
        gl_FragColor = texture2D(texture, v_texcoord);
    } else if (height < 0.4)
        gl_FragColor = texture2D(rocks, v_texcoord);
    } else {
        gl_FragColor = texture2D(snowrocks, v_texcoord);
    }
}
//! [0]

