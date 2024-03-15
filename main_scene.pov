// If you come from any respected software like 3DS Max, C4D or Blender, remember this below:
// ---->>> < X, Z, Y > <<<----

#include "colors.inc"

sphere{
    0,1
    pigment{
        image_map{
            hdr "st_nicholaus.hdr" once interpolate 2 map_type // Get from https://hdrmaps.com/st-nicolaus-church-interior/
            1
        }
    }
    finish{emission 1}
    scale 1000
    rotate<100,0,0>
    hollow
    no_image
}

// Axis Lines
cylinder{<0,0,0>,<50,0,0>,0.5 pigment{color Red}}   // X-Axis
cylinder{<0,0,0>,<0,50,0>,0.5 pigment{color Green}} // Y-Axis
cylinder{<0,0,0>,<0,0,50>,0.5 pigment{color Blue}}  // Z-Axis


camera {
  location < 350,60,280>
  right  <1.77,0,0>
  look_at < 0,0,0>
}

light_source { < 300, 200, 50 > color White}
light_source { < -120, 00, 0 > color White}
light_source { < -120, -150, 0 > color White}

#include "trumpet.pov"
