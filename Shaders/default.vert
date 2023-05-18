#version 330 core
//position/coordinates
layout (location = 0) in vec3 aPos;
//normals (not necissarily normalized)
layout (location = 1) in vec3 aNormal;
//colors
layout (location = 2) in vec3 aColor;
//texture coordinates
layout (location = 3) in vec2 aTex;

//outputs the current position for the fragment shader
out vec3 crntPos;
//outputs the texture coordinates to the fragmet shader
out vec3 Normal;
//outputs the color for the fragment shader
out vec3 color;
//outputs the texture coordinates to the fragment shader
out vec2 texCoord;

//imports the camera matrix from the main function
uniform mat4 camMatrix;
uniform mat4 model;
uniform mat4 translation;
uniform mat4 rotation;
uniform mat4 scale;


void main()
{
   crntPos = vec3(model * translation * -rotation * scale * vec4(aPos, 1.0f));

   //assigns the colors from the vertex data to "color"
   color = aColor;
   //asigns a normal from the vertex data to "Normal"
   Normal = aNormal;
   //assigns the texture coordinates from the Vertex data to "texCoord"
   texCoord = mat2(0.0, -1.0, 1.0, 0.0) * aTex;
   //outputs positioning data
   gl_Position = camMatrix * vec4(crntPos, 1.0);
}