#include "colors.inc"
#include "shapes.inc"

// * ---------------------- DEBUG HEADER ---------------------- *
// Gradient Sky (Use for DEBUG since HDRI Skies are EXTREMELLY HEAVY)
sky_sphere {
    pigment {
        gradient y
        color_map {
            [0, 0.7 color Gray50 color Gray80]
        }
    }
}

// Axis Lines
cylinder{<0,0,0>,<50,0,0>,0.5 pigment{color Red}}   // X-Axis
cylinder{<0,0,0>,<0,50,0>,0.5 pigment{color Green}} // Y-Axis
cylinder{<0,0,0>,<0,0,50>,0.5 pigment{color Blue}}  // Z-Axis


camera {
  location < 50,20,72>
  right  <1.77,0,0>
  look_at < 0,0,0>
}

light_source { < 300, 200, 50 > color White}
light_source { < -120, 00, 0 > color White}
light_source { < -120, -150, 0 > color White}

// * -------------------- END OFDEBUG HEADER ------------------ *

    difference{
        object { //Round_Cylinder(point A, point B, Radius, EdgeRadius, UseMerge)
            Round_Cylinder(<2.5,0,0>, <-2.5,0,0>, 1.3 , 0.20, 0)  

            texture{ pigment{ color rgb<1,0.2,0.35> }
                //normal { radial sine_wave frequency 30 scale 0.25 }
                finish { phong 1 }
            }
            scale<10,10,10>  rotate<0, 0,0> translate<0,0.00,0>
        }
        sphere{
            <25,0,0>, 10
            pigment { color rgb<1,1,1> }
            finish { ambient 0.1 diffuse 0.9 }
        }
    }