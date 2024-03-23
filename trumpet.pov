#include "bell.pov"
#include "mouthpiece.pov"
#include "pistons.pov"
#include "textures.pov"

#declare trumpet = union {
    // Bell
    object{bell rotate<0,0,0> scale<1.2, 1.2, 1.2> translate<120,78,52>}

    // Connects Bell to Piston
    object{Segment_of_Torus ( 58, 10, 180 )//radius major, radius minor, segment angle
            rotate<90,-27,90>
            translate<-260,27,26>
            texture{golden_texture}
    }
    //gambiarra
    cone{<-265,-25,0>, 10, <-230,-25,0>, 8 texture{golden_texture}}

    // Piston
    object{pistons translate<-50, 0, 0>}

    // Fill tube
    cylinder{<10, -15, -25>, <250, -15, -25>, 10 texture{silver_texture}}

    // Connects Piston to Mouthpiece
    object{Segment_of_Torus ( 50, 10, 180 )//radius major, radius minor, segment angle
            rotate<-90,15,90>
            translate<250,33,-38>
            texture{golden_texture}
    }

    // Fill tube
    cylinder{<-320, 81, -51>, <250, 81, -51>, 10 texture{golden_texture}}

    // Mouthpiece
    object{mouthpiece rotate<0,0,180> scale<0.3,0.3,0.3> translate<-380,81,-50>}
}