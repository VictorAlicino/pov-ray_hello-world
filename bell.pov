#include "colors.inc"
#include "textures.pov"

#declare bell = union{
    torus {
        50, 2
        translate <0, 10, 0>
        rotate <0, 0, -90> // rotate the torus 90 degrees around the y-axis
    }

    union{ // Trumpet Horn (Torricelli's Trumpet)
        #local start_x = 100;
        #local d = 0.1;
        #local end_x = 600;
        #local scale_factor = 10000;
        #while (start_x <= end_x)
            cone{
                <start_x, 0, 0>, (((1/start_x)/2))*scale_factor
                <start_x - d, 0, 0>, (((1/(start_x - d))/2))*scale_factor
                open
            }
            #local start_x = start_x + d;
        #end
        rotate<0,180,0>
        translate<110,0,0>
    }

    texture {golden_texture}
    translate<250,0,0>
}