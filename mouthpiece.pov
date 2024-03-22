#include "colors.inc"
#include "shapes.inc"

// * ---------------------- DEBUG HEADER ---------------------- *
// Gradient Sky (Use for DEBUG since HDRI Skies are EXTREMELLY HEAVY)
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
/*
// Axis Lines
cylinder{<0,0,0>,<50,0,0>,0.5 pigment{color Red}}   // X-Axis
cylinder{<0,0,0>,<0,50,0>,0.5 pigment{color Green}} // Y-Axis
cylinder{<0,0,0>,<0,0,50>,0.5 pigment{color Blue}}  // Z-Axis
*/
#declare golden_texture = texture {
        pigment { color rgb <0.4, 0.2, 0> }
        finish { reflection { 0.1 } ambient 0 diffuse 0.8 }
    }

#declare silver_texture = texture {
        pigment { color rgb <0.1, 0.1, 0.1> }
        finish { reflection { 0.5 } ambient 0 diffuse 1 }
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
    location < 0,0, 280>
    right  <1.77,0,0>
    look_at < -100,0,0> 
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
#declare camera_7 = camera{
    location < 150,0,0>
    right  <1.77,0,0>
    look_at < 0,0,0>
}

light_source { < 300, 200, 50 > color White}                                                                                                
light_source { < -120, 00, 0 > color White}
light_source { < -120, -150, 0 > color White}
light_source { < 0, 0, 0 > color White}

camera{camera_7}

// * -------------------- END OFDEBUG HEADER ------------------ *
difference{
    merge{
        // Mouthpiece top
        difference{
            difference{
                object { //Round_Cylinder(point A, point B, Radius, EdgeRadius, UseMerge)
                    Round_Cylinder(<5,0,0>, <0,0,0>, 5 , 0.8, 0)
                    scale<10,10,10>  rotate<0, 0,0> translate<0,0.00,0>
                }
                sphere{
                    <50,0,0>, 25
                    texture{silver_texture}
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
        }
        object {Round_Cylinder(<1,0,0>, <-5,0,0>, 42 , 1, 0)}
        merge{
            // Mouthpiece garnish
            cylinder{<0,0,0>,<-130,0,0>,25}
            object {Round_Cylinder(<-30,0,0>, <-35,0,0>, 28 , 1, 0)}

            // Mouthpiece I don't know what
            object {Round_Cylinder(<-55,0,0>, <-60,0>, 28 , 2, 1)}
            object {Round_Cylinder(<-60,0,0>, <-70,0,0>, 30 , 2, 1)}
            object {Round_Cylinder(<-70,0,0>, <-75,0,0>, 28 , 2, 1)}

            object {Round_Cylinder(<-95,0,0>, <-101,0,0>, 29 , 1, 0)}
            //object {Round_Cylinder(<-100,0,0>, <-105,0,0>, 32 , 1, 0)}
            cone{<-101,0,0>, 32, <-250,0,0>, 25}
            texture{silver_texture}
        }

        texture{golden_texture}
        translate<0, 0, 0>
    }
    cylinder{
        <50,0,0>, <-300,0,0>, 15
    }
    texture{silver_texture}
}
