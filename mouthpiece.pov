#include "colors.inc"

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
  location < 350,60,280>
  right  <1.77,0,0>
  look_at < 0,0,0>
}

light_source { < 300, 200, 50 > color White}
light_source { < -120, 00, 0 > color White}
light_source { < -120, -150, 0 > color White}

// * -------------------- END OFDEBUG HEADER ------------------ *