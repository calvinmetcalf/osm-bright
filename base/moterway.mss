#moterway[zoom>4] {
 ::line, ::case, ::fill {
   line-cap:round;
   line-join:round;
   line-width:0; /* Hides roads that have no further width set */
 }
 ['functional' = 5], ['functional' = 6], ['functional' = 0]
{
   ::line { line-color:@standard_line; }
   ::case { line-color:@standard_case; }
   ::fill { line-color:@standard_fill; }
 }
 ['functional' = 3] {
   ::line { line-color:@secondary_line; }
   ::case { line-color:@secondary_case; }
   ::fill { line-color:@secondary_fill; }
 }
 ['functional' = 2] {
   ::line { line-color:@primary_line; }
   ::case { line-color:@primary_case; }
   ::fill { line-color:@primary_fill; }
 }
 ['functional' = 1] {   
   ::line { line-color:@motorway_line; }
   ::case { line-color:@motorway_case; }
   ::fill { line-color:@motorway_fill; }
 }
}

#moterway[zoom=5] {
 
 ['functional' = 1] {
   ::line { line-width: 0.3; }
 }
}

#moterway[zoom=6] {
 
 ['functional' = 1] {
   ::line { line-width: 0.4; }
 }
}

#moterway[zoom=7] {
 ['functional' = 2] {
   ::line { line-width: 0.2; }
 }
 
 ['functional' = 1] {
   ::line { line-width: 0.5; }
 }
}

#moterway[zoom=8] {
 ['functional' = 3] {
   ::line { line-width: 0.3; }
 }
 ['functional' = 2] {
   ::line { line-width: 0.4; }
 }
 
 ['functional' = 1] {
   ::line { line-width: 0.6; }
 }
}

#moterway[zoom=9] {
 ['functional' = 3] {
   ::line { line-width: 0.5; }
 }
 ['functional' = 2] {
   ::line { line-width: 0.6; }
 }
 
 ['functional' = 1] {
   ::line { line-width: 0.8; }
 }
}
#moterway[zoom=10] {
 ['functional' = 3] {
   ::line { line-width: 0.7; }
 }
 ['functional' = 2] {
   ::line { line-width: 0.8; }
 }
 
 ['functional' = 1] {
   ::line { line-width: 1; }
 }
}

#moterway[zoom=11] {
 ['functional' = 5],
 ['functional' = 6],
 ['functional' = 0] {
   ::line { line-width: 0.25; }
 }
 ['functional' = 3] {
   ::line { line-width: 0.9; }
 }
 ['functional' = 2] {
   ::line { line-width: 1; }
 }
 
 ['functional' = 1] {
   ::case { line-width: 1+1.8; }
   ::fill { line-width: 1; }
 }
}

#moterway[zoom=12] {
 ['functional' = 5],
 ['functional' = 6],
 ['functional' = 0] {
   ::line { line-width: 0.5; }
 }

 ['functional' = 3] {
   ::line { line-width: 1; }
 }
 ['functional' = 2] {
   ::line { line-width: 1.2; }
 }
 
 ['functional' = 1] {
   ::case { line-width: 1.2+1.8; }
   ::fill { line-width: 1.2; }
 }
}

#moterway[zoom=13] {
   ['functional' = 5],
 ['functional' = 6],
 ['functional' = 0] {
   ::line { line-width: 1; }
 }
 
 ['functional' = 3] {
   ::case { line-width: 1.2+2; }
   ::fill { line-width: 1.2; }
 }
 ['functional' = 2] {
   ::case { line-width: 1.4+2; }
   ::fill { line-width: 1.4; }
 }
 
 ['functional' = 1] {
   ::case { line-width: 2+2; }
   ::fill { line-width: 2; }
 }
}

#moterway[zoom=14] {
 ['functional' = 5],
 ['functional' = 6],
 ['functional' = 0] {
   ::case { line-width: 2+1.5; }
   ::fill { line-width: 2; }
 }

   ['functional' = 3] {
   ::case { line-width: 2.6+2; }
   ::fill { line-width: 2.6; }
 }
 ['functional' = 2] {
   ::case { line-width: 3+2; }
   ::fill { line-width: 3; }
 }
 
 ['functional' = 1] {
   ::case { line-width: 3+2; }
   ::fill { line-width: 3; }
 }
}
#moterway[zoom=15] {
 ['functional' = 5],
 ['functional' = 6],
 ['functional' = 0] {
   ::case { line-width:2+2; }
   ::fill { line-width:2; }
 }

 ['functional' = 3] {
   ::case { line-width:4+2; }
   ::fill { line-width:4; }
 }
 ['functional' = 2] {
   ::case { line-width:5+2; }
   ::fill { line-width:5; }
 }
 
 ['functional' = 1] {
   ::case { line-width:6+2; }
   ::fill { line-width:6; }
 }
}

#moterway[zoom=16] {
   ['functional' = 5],
 ['functional' = 6],
 ['functional' = 0] {
   ::case { line-width:4+2; }
   ::fill { line-width:4; }
 }
 
 ['functional' = 3] {
   ::case { line-width: 6+2.5; }
   ::fill { line-width: 6; }
 }
 ['functional' = 2] {
   ::case { line-width: 7+2.5; }
   ::fill { line-width: 7; }
 }
 
 ['functional' = 1] {
   ::case { line-width: 8+2.5; }
   ::fill { line-width: 8; }
 }
}

#moterway[zoom=17] {
   ['functional' = 5],
 ['functional' = 6],
 ['functional' = 0] {
   ::case { line-width:8+3; }
   ::fill { line-width:8; }
 }

 ['functional' = 3] {
   ::case { line-width: 8+3; }
   ::fill { line-width: 8; }
 }
 ['functional' = 2] {
   ::case { line-width: 9+3; }
   ::fill { line-width: 9; }
 }
 
 ['functional' = 1] {
   ::case { line-width: 10+3; }
   ::fill { line-width: 10; }
 }
}

#moterway[zoom>=18] {
 ['functional' = 5],
 ['functional' = 6],
 ['functional' = 0] {
   ::case { line-width:10+2; }
   ::fill { line-width:10; }
 }
 

 ['functional' = 3] {
   ::case { line-width: 16+3; }
   ::fill { line-width: 16; }
 }
 ['functional' = 2] {
   ::case { line-width: 18+3; }
   ::fill { line-width: 18; }
 }
 
 ['functional' = 1] {
   ::case { line-width: 20+3; }
   ::fill { line-width: 20; }
 }
}