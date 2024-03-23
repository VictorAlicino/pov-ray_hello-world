#declare trumpet_case = union {
    object{ // Round_Box(A, B, WireRadius, UseMerge)
            Round_Box(<0,0,0>,<250,30,100>, 2   , 0)  
            scale<1,1,1> translate<-125,-15,-50> rotate<0, 0, 0>
    }
    object{ // Round_Box(A, B, WireRadius, UseMerge)
            Round_Box(<0,0,0>,<250,30,100>, 2   , 0)  
            scale<1,1,1> translate<-125,-15,-50> rotate<90, 0, 0>
            translate<0,60,-60>
    }
    texture{ pigment{ color rgb<0.7,0.25,0.5>} finish { phong 1 }}
}