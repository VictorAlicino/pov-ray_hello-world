// If you come from any respected software like 3DS Max, C4D or Blender, remember this below:
// ---->>> < X, Z, Y > <<<----

#include "colors.inc"


sphere{
    0,1
    pigment{
        image_map{
            // Get the file from https://hdrmaps.com/st-nicolaus-church-interior/ and use a converter to convert to .exr to .hdr
            // I recommend using https://convertio.co/pt/exr-hdr/
            hdr "st_nicholaus.hdr" once interpolate 2 map_type
            1
        }
    }
    finish{emission 1}
    scale 1000
    rotate<100,0,0>
    hollow
    no_image
}

#declare top_view = camera{
    location < 0, 500, 0>
    right  <1.77,0,0>
    look_at < 0,0,0>
}
#declare left_view = camera{
    location < 0, 0, 500>
    right  <1.77,0,0>
    look_at < 0,0,0>
}
#declare right_view = camera{
    location < 0, 0, -600>
    right  <1.77,0,0>
    look_at < 00,0,0>
}
#declare front_view = camera{
    location < 800, 0, 0>
    right  <1.77,0,0>
    look_at < 0,0,0>
}
#declare back_view = camera{
    location < -500, 0, 0>
    right  <1.77,0,0>
    look_at < 0,0,0>
}
#declare bottom_view = camera{
    location < 50, -200, 0>
    right  <1.77,0,0>
    look_at < 0,0,0>
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
#declare camera_8 = camera {
    location < 350,60,280>
    right  <1.77,0,0>
    look_at < 0,0,0>
}
#declare camera_9 = camera {
    location < 0,-100,200>
    right  <1.77,0,0>
    look_at < 0,0,0>
}
#declare camera_a = camera {
    location < 0,200,100>
    right  <1.77,0,0>
    look_at < 0,0,0>
}
#declare camera_b = camera {
    location < 0,200,150>
    right  <1.77,0,0>
    look_at < 0,50,0>
}
#declare camera_c = camera{
    location < -150, -20, -200>
    right  <1.77,0,0>
    look_at < -110,-15,0>
}
#declare camera_d = camera{
    location < -30, -20, -180>
    right  <1.77,0,0>
    look_at < -90,-25,-20>
}
#declare camera_e = camera{
    location < -200, -20, -180>
    right  <1.77,0,0>
    look_at < -250,-25,-20>
}
       
light_source { < 300, 200, 50 > color White}                                                                                                
light_source { < -120, 00, 0 > color White}
light_source { < -120, -150, 0 > color White}
light_source { < 0, 0, 0 > color White}
light_source { < 800, 200, -50 > color White}  

camera{front_view}

#include "bell.pov"
#include "mouthpiece.pov"
#include "pistons.pov"
#include "textures.pov"

//object{axis scale<5,5,5>}

object{bell rotate<0,0,0> scale<1.2, 1.2, 1.2> translate<120,78,52>}

object{Segment_of_Torus ( 58, 10, 180 )//radius major, radius minor, segment angle
        rotate<90,-27,90>
        translate<-260,27,26>
        texture{golden_texture}
}

cone{<-265,-25,0>, 10, <-230,-25,0>, 8 texture{golden_texture}}
object{pistons translate<-50, 0, 0>}
cylinder{<10, -15, -25>, <250, -15, -25>, 10 texture{silver_texture}}

object{Segment_of_Torus ( 50, 10, 180 )//radius major, radius minor, segment angle
        rotate<-90,15,90>
        translate<250,33,-38>
        texture{golden_texture}
}

cylinder{<-320, 81, -51>, <250, 81, -51>, 10 texture{golden_texture}}
object{mouthpiece rotate<0,0,180> scale<0.3,0.3,0.3> translate<-380,81,-50>}
