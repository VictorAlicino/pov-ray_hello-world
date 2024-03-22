#include "colors.inc"
#include "textures.pov"
#include "shapes.inc"
#include "shapes3.inc"

#declare piston = merge{
    // Piston body
    difference{
        union{
            difference{
                union{
                    cone{<0,71,0>, 19, <0,73,0>, 18}
                    cylinder{<0,70,0>,<0,71,0>,19}
                    cone{<0,65,0>, 18.5, <0,70,0>, 19}
                }
                torus{13, 4 translate <0, 74, 0> texture{golden_texture}}
                texture{silver_texture}
            }
            cylinder{<0,65,0>,<0,70,0>,18.5}
            cylinder{<0,70,0>,<0,-60,0>,15}
            object {Round_Cylinder(<0,70,0>, <0,40,0>, 18 , 1, 0)}
            object {Round_Cylinder(<0,45,0>, <0,38,0>, 17 , 1, 0)}
            object {Round_Cylinder(<0,45,0>, <0,35,0>, 16 , 1, 0)}
            merge{
                object {Round_Cylinder(<0,-60,0>, <0,-70,0>, 16 , 1, 0)}
                cylinder{<0,-68,0>,<0,-70,0>,16}
                cone{<0,-70,0>, 16, <0,-73,0>, 1}
                object {Round_Cylinder(<0,-65,0>, <0,-73,0>, 3 , 1, 0)}
            }
        }
        cylinder{<0,80,0>,<0,0,0>,6 texture{golden_texture}}
    }

    // Piston head and rod
    union{
        cylinder{<0,105,0>,<0,0,0>,5}
        object {Round_Cylinder(<0,110,0>, <0,115,0>, 14 , 3, 0)}
        object {Round_Cylinder(<0,110,0>, <0,116,0>, 12 , 2, 0) texture{silver_texture}}
        cylinder{<0,105,0>,<0,110,0>,13 open texture{silver_texture}}
        texture{golden_texture}
    }

    texture{golden_texture}
}

#declare pistons = union{
    object{piston translate <-50, 0, 0> scale <1, 1, 1> rotate <0, 0, 0>}
    object{piston translate <0, 0, 0> scale <1, 1, 1> rotate <0, 0, 0>}
    object{piston translate <50, 0, 0> scale <1, 1, 1> rotate <0, 0, 0>}

    cylinder{<-50,25,0>,<50,25,0>,3}

    // Body rods
    cylinder{<-80,0,0>,<170,0,0>,9}
    object {Round_Cylinder(<160,0,0>, <170,0,0>, 10 , 3, 0)}
    cylinder{<-80,-25,0>,<170,-25,0>,9}
    object {Round_Cylinder(<130,5,-9>, <130,-30,-9>, 5 , 3, 0)}

    object {Round_Cylinder(<170,0,0>, <250,0,0>, 11 , 2, 0)}
    cylinder{<230,0,0>,<230,-25,0>,5}
    object {Round_Cylinder(<170,-25,0>, <250,-25,0>, 11 , 2, 0)}


    cylinder{<-50,-45,0>,<50,-45,0>,3}

    object{ Segment_of_Torus ( 13, 10, 190 )//radius major, radius minor, segment angle
        rotate<90,0,-90> translate<250,-12,0>
    }

    object {Round_Cylinder(<-80,0,0>, <-125,0,0>, 10 , 2, 0)}
    object{ Segment_of_Torus ( 14.5, 10, 180 ) //radius major, radius minor, segment angle
        rotate<90,-40,90> translate<-123,-11,-09>
    }
    cylinder{
        <-37.5,0,0>,<32,0,0>,10
        rotate<-3,0,-6>
        translate<-92,-25,-18>
    }
    object{ Segment_of_Torus ( 15, 10, 90 ) //radius major, radius minor, segment angle
        rotate<0,0,-5> translate<-66,-28,-3>
    }

    object{ Segment_of_Torus ( 15, 10, 90 ) //radius major, radius minor, segment angle
        rotate<0,0,180> translate<64,-15,-10>
    }
 

    texture{golden_texture}
}
