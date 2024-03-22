#include "colors.inc"
#include "shapes.inc"
#include "textures.pov"

#declare mouthpiece = difference{
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
