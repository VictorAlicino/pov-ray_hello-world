#include "textures.inc"

#declare golden_texture = texture {
        pigment { color rgb <0.4, 0.2, 0> }
        finish { reflection { 0.1 } ambient 0 diffuse 0.8 }
    }

#declare silver_texture = texture {
        pigment { color rgb <0.1, 0.1, 0.1> }
        finish { reflection { 0.5 } ambient 0 diffuse 1 }
    }            

#declare axis = merge{
    // Axis Lines
    cylinder{<0,0,0>,<50,0,0>,0.5 pigment{color Red}}   // X-Axis
    cylinder{<0,0,0>,<0,50,0>,0.5 pigment{color Green}} // Y-Axis
    cylinder{<0,0,0>,<0,0,50>,0.5 pigment{color Blue}}  // Z-Axis
}