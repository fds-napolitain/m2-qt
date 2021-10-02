#version 140

uniform sampler2D texture;
uniform sampler2D heightmap;

in vec2 v_texcoord;
in vec3 v_position;
//! [0]
void main()
{
    float height = texture2D(heightmap, v_texcoord).p;

    // Set fragment color from texture
    gl_FragColor = texture2D(texture, v_texcoord);
}
//! [0]

