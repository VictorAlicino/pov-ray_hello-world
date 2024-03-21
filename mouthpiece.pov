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

#declare golden_texture = texture {
        pigment { color rgb <0.4, 0.2, 0> }
        finish { reflection { 0.1 } ambient 0 diffuse 0.8 }
    }

#declare camera_1 = camera{
    location < 100,50,150>
    right  <1.77,0,0>
    look_at < 0,0,0>
}

#declare camera_2 = camera{
    location < 120,50,100>
    right  <1.77,0,0>
    look_at < 0,0,0> 
}

#declare camera_3 = camera{
    location < 200,50,100>
    right  <1.77,0,0>
    look_at < 0,0,0> 
}
#declare camera_4 = camera{
    location < 0,0, 200>
    right  <1.77,0,0>
    look_at < 0,0,0> 
}
#declare camera_5 = camera{
    location < 120,150,220>
    right  <1.77,0,0>
    look_at < 0,0,0> 
}
#declare camera_6 = camera{
    location < -60,60,150>
    right  <1.77,0,0>
    look_at < 0,0,0> 
}

light_source { < 300, 200, 50 > color White}                                                                                                
light_source { < -120, 00, 0 > color White}
light_source { < -120, -150, 0 > color White}

camera{camera_5}

// * -------------------- END OFDEBUG HEADER ------------------ *
merge{
    difference{
        difference{
            difference{
                object { //Round_Cylinder(point A, point B, Radius, EdgeRadius, UseMerge)
                    Round_Cylinder(<5,0,0>, <0,0,0>, 5 , 1, 0)
                    scale<10,10,10>  rotate<0, 0,0> translate<0,0.00,0>
                }
                sphere{
                    <50,0,0>, 25
                }
            }
            cylinder{
                <50,0,0>, <-50,0,0>, 15
            }
        }
        torus {
            35, 5
            translate <0, 50, 0>
            rotate <0, 0, -90> // rotate the torus 90 degrees around the y-axis
        }
    }
    difference{
        sphere{
                <0,0,0>, 40
        }
        box{
            <45,45,45>,<0,-45,-45>
            pigment{
                color rgb<0.5,0.5,0.5>
            }
        }
        texture{golden_texture}
    }
    object {Round_Cylinder(<1,0,0>, <-5,0,0>, 42 , 1, 0)}
    cylinder{<0,0,0>,<-100,0,0>,25}
    object {Round_Cylinder(<-30,0,0>, <-35,0,0>, 28 , 1, 0)}

    texture{golden_texture}
    translate<0, 0, 0>
}
