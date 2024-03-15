#include "colors.inc"

// If you come from any respected software like 3DS Max, C4D or Blender, remember this below:
// ---->>> < X, Z, Y > <<<----


sphere{
    0,1
    pigment{
        image_map{
            hdr "st_nicholaus.hdr" once interpolate 2 map_type // Get from https://hdrmaps.com/st-nicolaus-church-interior/
            1
        }
    }
    finish{emission 1}
    scale 1000 // make sure the sphere is big enough to cover the whole scene
    rotate<100,0,0>
    hollow
    no_image
}


/*
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
cylinder{<0,0,0>,<50,0,0>,0.5 pigment{color Red}}  // X-Axis
cylinder{<0,0,0>,<0,50,0>,0.5 pigment{color Green}} // Y-Axis
cylinder{<0,0,0>,<0,0,50>,0.5 pigment{color Blue}}// Z-Axis
*/

camera {
  location < 350,60,280>
  right  <1.77,0,0>
  look_at < 0,0,0>
}

light_source { < 300, 200, 50 > color White}
light_source { < -120, 00, 0 > color White}
light_source { < -120, -150, 0 > color White}

union{
    torus {
        50, 2
        translate <0, 10, 0>
        rotate <0, 0, -90> // rotate the torus 90 degrees around the y-axis
    }

    union{ // Corneta do Trompete (Torricelli's Trumpet)
        #local start_x = 100;
        #local d = 0.1;
        #local end_x = 500;
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

    cone{
        < -70, 0, 0 >, (((1/(start_x - d))/2))*scale_factor
        < -500, 0, 0 >, (((1/(start_x - d))/2))*scale_factor
        open
        translate<10,0,0>
    }

    cone{
        < -70, -150, 0 >, (((1/(start_x - d))/2))*scale_factor
        < -500, -150, 0 >, (((1/(start_x - d))/2))*scale_factor
        open
        translate<0,0,0>
    }
    
    texture {
        pigment { color rgb <0.4, 0.2, 0> }
        finish { reflection { 1 } ambient 0 diffuse 0.8 }
    }
    translate<250,0,0>
}