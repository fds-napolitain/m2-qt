#version 140

uniform mat4 mvp_matrix;

in vec4 a_position;
in vec2 a_texcoord;

out vec2 v_texcoord;
uniform sampler2D heightmap;


//! [0]
void main()
{
    float height = texture2D(heightmap, a_texcoord).p; // valeur pixel: hauteur ici

    // Calculate vertex position in screen space
    gl_Position = mvp_matrix * vec4(a_position.x, a_position.y, a_position.z + height, 1.0);

    // Pass texture coordinate to fragment shader
    // Value will be automatically interpolated to fragments inside polygon faces
    v_texcoord = a_texcoord;
}
//! [0]
