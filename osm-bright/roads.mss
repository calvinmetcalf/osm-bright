/* "Roads", including highways, railways, aeroways, tracks, bicycle
 * & pedestrian ways.
 *
 * CONTENTS:
 *   1. Road Colors & Line Styles
 *   2. Road Widths
 *   3. Road Labels
 *   4. Railways
 *   5. Aeroways
 */

/* == 1. ROAD COLORS & LINE STYLES ================================== */

/* Note that the ordering of certain styles in this section is
   important to the rendered result. ::line should rendered below
   ::case which should be rendered below ::fill.

/* ---- Bridge Setup ------------------------------------------------ */
/* Bridges appear above roads, but complex multi-level layering 
   does not work properly yet. */
/*#bridge::case {
  [zoom>12] {
    line-color:@bridge_case;
    line-cap:butt;
    line-join:round;
    line-width:0;
  }
}
#bridge::fill { line-width:0; }
*/
/* ---- Colors by road type ----------------------------------------- */
/* Roads - including tunnels */
/*
#tertiary[zoom>=11],
#residential[zoom>=11]
 {  
    ::line { line-color:@standard_line;
   line-cap:round;
    line-join:round;
   }
    ::case { line-color:@standard_case;
   line-cap:round;
    line-join:round;
   }
    ::fill { line-color:@standard_fill;
   line-cap:round;
    line-join:round;
   }
  }


  
#secondary_gen1[zoom>=8][zoom<=10], 
#secondary[zoom>=11] 
 {  
    ::line { line-color:@secondary_line;
   line-cap:round;
    line-join:round;
    }
    ::case { line-color:@secondary_case;
   line-cap:round;
    line-join:round;
   }
    ::fill { line-color:@secondary_fill;
   line-cap:round;
    line-join:round;
   }
  }

#primary_gen0[zoom=7],
#primary_gen1[zoom>=8][zoom<=10], 
#primary[zoom>=11] 
 {  
    ::line { line-color:@primary_line; 
   line-cap:round;
    line-join:round;
    }
    ::case { line-color:@primary_case; 
   line-cap:round;
    line-join:round;
    }
    ::fill { line-color:@primary_fill;
   line-cap:round;
    line-join:round;
   }
  }
 

#moterway_gen0[zoom>=5][zoom<=7],
#moterway_gen1[zoom>=8][zoom<=10], 
#moterway[zoom>=11] 
 {    
    ::line { line-color:@motorway_line; 
   line-cap:round;
    line-join:round;
   }
    ::case { line-color:@motorway_case; 
   line-cap:round;
    line-join:round;
   }
    ::fill { line-color:@motorway_fill; 
   line-cap:round;
    line-join:round;
  }
  }
*/
/* Bridges 
#bridge::case[zoom>=13] { line-width:0; }
#bridge::fill[zoom>=13] {
  line-cap:round;
  line-join:round;
  [type='motorway'], [type='motorway_link'] {
    line-color:@motorway_fill;
  }
  [type='trunk'], [type='trunk_link'] {
    line-color:@trunk_fill;
  }
  [type='primary'], [type='primary_link'] {
    line-color:@primary_fill;
  }
  [type='secondary'], [type='secondary_link'] {
    line-color:@secondary_fill;
  }
  [type='tertiary'], [type='tertiary_link'],
  [type='residential'], [type='living_street'],
  [type='road'], [type='unclassified'], [type='unknown'] {
    line-color:@standard_fill;
  }
  [type='service'] {
    line-color:@standard_fill;
  }
}*/
/* turning circles - note that the style perhaps unsafely assumes that 
 * these are not on major roads, bridges, or tunnels.
 
#turning_circle_case[zoom>=14] {
  marker-fill:@standard_fill;
  marker-line-color:@standard_case;
  marker-line-width:2;
  marker-allow-overlap:true;
}
#turning_circle_fill[zoom>=14] {
  marker-fill:@standard_fill;
  marker-line-width:0;
  marker-line-opacity:0;
  marker-allow-overlap:true;
}
*/
/* = 2. ROAD WIDTHS =============================================== */

/* Grouped by zoom-level, then type. Order low to high priority. 
   The math functions used in the casing line width definitions are
   not technically necessary, but are there to better show how much 
   of an outline is provided. (eg. A 1px outline on both sides of a
   3px line is `line-width: 3+2;`.) */

/* ---- Zoom level 5 ---------------------------------------------- */
#moterway[zoom=5] {

    ::line { line-width: 0.3;
  line-color:@motorway_line; }
  }


/* ---- Zoom level 6 ---------------------------------------------- */
#moterway[zoom=6] {

    ::line { line-width: 0.4;
  line-color:@motorway_line; }
  }


/* ---- Zoom level 7 ---------------------------------------------- */
#primary[zoom=7]
{
  
    ::line { line-width: 0.3;
  line-color:@primary_line; }
  }
#moterway[zoom=7]
{
  
    ::line { line-width: 0.5;
  line-color:@motorway_line; }
  }


/* ---- Zoom level 8 ---------------------------------------------- 
#secondary[zoom=8] {
  
    ::line { line-width: 0.3; 
  line-color:@secondary_line;}
  }*/
  #primary[zoom=8] {
    ::line { line-width: 0.6;
  line-color:@primary_line;}
  }
 #moterway[zoom=8] {
    ::line { line-width: 0.8;
  line-color:@motorway_line;}
  }


/* ---- Zoom level 9 ---------------------------------------------- */
#secondary[zoom=9] {
    ::line { line-width: 0.5;
  line-color:@secondary_line;}
  }
#ComLine[zoom=9] {
    ::line { line-width: 0.8;
  line-color:@rail_line;}
  }
  #primary[zoom=9] {
    ::line { line-width: 0.8;
  line-color:@primary_line;}
  }
  #moterway[zoom=9] {
    ::line { line-width: 1;
  line-color:@motorway_line;}
  }


/* ---- Zoom level 10 --------------------------------------------- */
#secondary[zoom=10] {
    ::line { line-width: 0.7;
  line-color:@secondary_line;}
  }
#ComLine[zoom=10] {
    ::line { line-width: 1;
  line-color:@rail_line;}
  }
  #primary[zoom=10] {
    ::line { line-width: 1;
  line-color:@primary_line;}
  }
 #moterway[zoom=10] {
    ::line { line-width: 1.2;
  line-color:@motorway_line;}
  }


/* ---- Zoom level 11 --------------------------------------------- */
/* Note that from zoom 11+ we are using full-resolution roads */
[Functional>4]#roads[zoom=11]
{
 
    ::line { line-width: 0.25;
    line-color:@standard_line;}
  }
  [Functional=3]#roads[zoom=11] {
    ::line { line-width: 0.9;
    line-color:@secondary_line;}
  }
#subway[zoom=11]
{ ::line { line-width: 1.2;
  [LINE='RED']
    {line-color:@red_line;}
  [LINE='GREEN']
    {line-color:@green_line;}
  [LINE='BLUE']
    {line-color:@blue_line;}
  [LINE='ORANGE']
    {line-color:@orange_line;}
   }
}
 #ComLine[zoom=11] {
    ::line { line-width: 1.2;
    line-color:@rail_line;}
  }
  [Functional=2]#roads[zoom=11] {
    ::line { line-width: 1.2;
    line-color:@primary_line;}
  }
 [Functional=1]#roads[zoom=11]{
    ::case { line-width: 1+1.8;
    line-color:@motorway_case;}
  
    ::fill { line-width: 1;
  line-color:@motorway_fill;}

  }


/* ---- Zoom level 12 --------------------------------------------- */
[Functional>4]#roads[zoom=12]{
    ::line { line-width: 0.5;
    line-color:@standard_line;}
  }
[Functional=0]#roads[zoom=12] {
    ::line { line-width: 0.5;
    line-color:@standard_line;}
  }
  [Functional=3]#roads[zoom=12]{
    ::line { line-width: 1;
    line-color:@secondary_line;}
  }
#subway[zoom=12]
{ ::line { line-width: 1.4;
  [LINE='RED']
    {line-color:@red_line;}
  [LINE='GREEN']
    {line-color:@green_line;}
  [LINE='BLUE']
    {line-color:@blue_line;}
  [LINE='ORANGE']
    {line-color:@orange_line;}
  }
   }
#ComLine[zoom=12] {
    ::line { line-width: 1.4;
    line-color:@rail_line;}
  }
  [Functional=2]#roads[zoom=12] {
    ::line { line-width: 1.4;
    line-color:@primary_line;}
  }
  [Functional=1]#roads[zoom=12] {
    ::case { line-width: 1.2+1.8;
    line-color:@motorway_case;}
    ::fill { line-width: 1.2;
    line-color:@motorway_fill;}
  }


/* ---- Zoom level 13 --------------------------------------------- */

  [Functional>4]#roads[zoom=13],
[Functional=0]#roads[zoom=13]{
    ::line { line-width: 1;
    line-color:@standard_line;}
  }
  [Functional=3]#roads[zoom=13]{
    ::case { line-width: 1.2+2;
    line-color:@secondary_case;}
    ::fill { line-width: 1.2;
    line-color:@secondary_fill;}
  }
#subway[zoom=13]
{ ::case { line-width: 1.4+2;
  [LINE='RED']
    {line-color:@red_case;}
  [LINE='GREEN']
    {line-color:@green_case;}
  [LINE='BLUE']
    {line-color:@blue_case;}
  [LINE='ORANGE']
    {line-color:@orange_case;}
  }
  ::file { line-width: 1.4;
  [LINE='RED']
    {line-color:@red_fill;}
  [LINE='GREEN']
    {line-color:@green_fill;}
  [LINE='BLUE']
    {line-color:@blue_fill;}
  [LINE='ORANGE']
    {line-color:@orange_fill;}
  }
   }
#ComLine[zoom=13]{
    ::case { line-width: 1.4+2;
    line-color:@rail_case; }
    ::fill { line-width: 1.4;
    line-color:@rail_fill;}
  }
  
  [Functional=2]#roads[zoom=13]{
    ::case { line-width: 1.4+2;
    line-color:@primary_case; }
    ::fill { line-width: 1.4;
    line-color:@primary_fill;}
  }
 [Functional=1]#roads[zoom=13]{
    ::case { line-width: 2+2;
    line-color:@motorway_case;}
    ::fill { line-width: 2;
    line-color:@motorway_fill;}
  }


/* ---- Zoom level 14 --------------------------------------------- */
[zoom=15]#bike[type='On-road marked lane']{
 ::case { line-width:2+1.5;
  line-dasharray:8,4;
  line-color:@standard_case;
  }
   ::fill { line-width:2;
  line-dasharray:8,4;
  line-color:#c00;
  }
  }
[zoom=15]#bike[type='On-road divided lane']{
 ::case { line-width:2+1.5;
  line-dasharray:8,4;
  line-color:@standard_case;
  }
   ::fill { line-width:2;
  line-dasharray:8,4;
  line-color:#e04b00;
  }
  }
[zoom=14]#bike[type='Off-road shared use path']{
 ::case { line-width:2+1.5;
  line-dasharray:4,2;
  line-color:@standard_case;
  }
   ::fill { line-width:2;
  line-dasharray:4,2;
  line-color:#0025E0;
  }
  }

  [Functional>4]#roads[zoom=14],
[Functional=0]#roads[zoom=14]{
    ::case { line-width: 2+1.5;
    line-color:@standard_case;}
    ::fill { line-width: 2;
    line-color:@standard_fill;}
  }
  [Functional=3]#roads[zoom=14]{
    ::case { line-width: 2.6+2;
    line-color:@secondary_case;}
    ::fill { line-width: 2.6;
    line-color:@secondary_fill;}
  }
#subway[zoom=14]
{ ::case { line-width: 3+2;
  [LINE='RED']
    {line-color:@red_case;}
  [LINE='GREEN']
    {line-color:@green_case;}
  [LINE='BLUE']
    {line-color:@blue_case;}
  [LINE='ORANGE']
    {line-color:@orange_case;}
  }
  ::file { line-width: 3;
  [LINE='RED']
    {line-color:@red_fill;}
  [LINE='GREEN']
    {line-color:@green_fill;}
  [LINE='BLUE']
    {line-color:@blue_fill;}
  [LINE='ORANGE']
    {line-color:@orange_fill;}
  }
   }
#ComLine[zoom=14] {
    ::case { line-width: 3+2;
    line-color:@rail_case; }
    ::fill { line-width: 3;
    line-color:@rail_fill;}
  }
  [Functional=2]#roads[zoom=14] {
    ::case { line-width: 3+2;
    line-color:@primary_case; }
    ::fill { line-width: 3;
    line-color:@primary_fill;}
  }
  [Functional=1]#roads[zoom=14]{
    ::case { line-width: 3+2;
    line-color:@motorway_case;}
    ::fill { line-width: 3;
    line-color:@motorway_fill;}
  }



/* ---- Zoom level 15 --------------------------------------------- */
[zoom=16]#bike[type='Off-road minimally improved path']{
 ::case { line-width:2+2;
  line-dasharray:4,2;
  line-color:@standard_case;
  }
  ::fill { line-width:2;
  line-dasharray:4,2;
  line-color:#00E04B;
  }
  }

[zoom=16]#bike[type='On-road marked shared lane']{
 ::case { line-width:2+2;
  line-dasharray:8,4;
  line-color:@standard_case;
  }
  ::fill { line-width:2;
  line-dasharray:8,4;
  line-color:#360;
  }
  }
[zoom=16]#bike[type='On-road sign-posted bike route']{
 ::case { line-width:2+2;
  line-dasharray:8,4;
  line-color:@standard_case;
  }
   ::fill { line-width:2;
  line-dasharray:8,4;
  line-color:#360;
  }
  }
[zoom=16]#bike[type='On-road marked lane']{
 ::case { line-width:2+2;
  line-dasharray:8,4;
  line-color:@standard_case;
  }
   ::fill { line-width:2;
  line-dasharray:8,4;
  line-color:#c00;
  }
  }
[zoom=16]#bike[type='On-road divided lane']{
 ::case { line-width:2+2;
  line-dasharray:8,4;
  line-color:@standard_case;
  }
   ::fill { line-width:2;
  line-dasharray:8,4;
  line-color:#e04b00;
  }
  }
[zoom=15]#bike[type='Off-road shared use path']{
 ::case { line-width:2+2;
  line-dasharray:4,2;
  line-color:@standard_case;
  }
   ::fill { line-width:2;
  line-dasharray:4,2;
  line-color:#0025E0;
  }
  }
  [Functional>4]#roads[zoom=15],
[Functional=0]#roads[zoom=15] {
    ::case { line-width:2+2;
    line-color:@standard_case;}
    ::fill { line-width:2;
    line-color:@standard_fill;}
  }
  [Functional=3]#roads[zoom=15]{
    ::case { line-width:4+2;
    line-color:@secondary_case;}
    ::fill { line-width:4;
    line-color:@secondary_fill;}
  }
#subway[zoom=15]
{ ::case { line-width: 5+2;
  [LINE='RED']
    {line-color:@red_case;}
  [LINE='GREEN']
    {line-color:@green_case;}
  [LINE='BLUE']
    {line-color:@blue_case;}
  [LINE='ORANGE']
    {line-color:@orange_case;}
  }
  ::file { line-width: 5;
  [LINE='RED']
    {line-color:@red_fill;}
  [LINE='GREEN']
    {line-color:@green_fill;}
  [LINE='BLUE']
    {line-color:@blue_fill;}
  [LINE='ORANGE']
    {line-color:@orange_fill;}
  }
   }
#ComLine[zoom=15]{
    ::case { line-width:5+2;
    line-color:@rail_case; }
    ::fill { line-width:5;
    line-color:@rail_fill;}
  }
  [Functional=2]#roads[zoom=15]{
    ::case { line-width:5+2;
    line-color:@primary_case; }
    ::fill { line-width:5;
    line-color:@primary_fill;}
  }
  [Functional=1]#roads[zoom=15]{
    ::case { line-width:6+2;
    line-color:@motorway_case;}
    ::fill { line-width:6;
    line-color:@motorway_fill;}
  }


/* ---- Zoom level 16 --------------------------------------------- */
[zoom=17]#bike[type='Off-road minimally improved path']{
 ::case { line-width:4+2;
  line-dasharray:4,2;
  line-color:@standard_case;
  }
  ::fill { line-width:4;
  line-dasharray:4,2;
  line-color:#00E04B;
  }
  }
[zoom=17]#bike[type='On-road marked shared lane']{
 ::case { line-width:4+2;
  line-dasharray:8,4;
  line-color:@standard_case;
  }
  ::fill { line-width:4;
  line-dasharray:8,4;
  line-color:#360;
  }
  }
[zoom=17]#bike[type='On-road sign-posted bike route']{
 ::case { line-width:4+2;
  line-dasharray:8,4;
  line-color:@standard_case;
  }
   ::fill { line-width:4;
  line-dasharray:8,4;
  line-color:#360;
  }
  }
[zoom=17]#bike[type='On-road marked lane']{
 ::case { line-width:4+2;
  line-dasharray:8,4;
  line-color:@standard_case;
  }
   ::fill { line-width:4;
  line-dasharray:8,4;
  line-color:#c00;
  }
  }
[zoom=17]#bike[type='On-road divided lane']{
 ::case { line-width:4+2;
  line-dasharray:8,4;
  line-color:@standard_case;
  }
   ::fill { line-width:4;
  line-dasharray:8,4;
  line-color:#e04b00;
  }
  }
[zoom=16]#bike[type='Off-road shared use path']{
 ::case { line-width:4+2;
  line-dasharray:4,2;
  line-color:@standard_case;
  }
   ::fill { line-width:4;
  line-dasharray:4,2;
  line-color:#0025E0;
  }
  }
  [Functional>4]#roads[zoom=16],
[Functional=0]#roads[zoom=16] {
    ::case { line-width:4+2;
    line-color:@standard_case;}
    ::fill { line-width:4;
    line-color:@standard_fill;}
  }
  [Functional=3]#roads[zoom=16]{
    ::case { line-width: 6+2.5;
    line-color:@secondary_case;}
    ::fill { line-width: 6;
    line-color:@secondary_fill;}
  }
#subway[zoom=16]
{ ::case { line-width: 7+2.5;
  [LINE='RED']
    {line-color:@red_case;}
  [LINE='GREEN']
    {line-color:@green_case;}
  [LINE='BLUE']
    {line-color:@blue_case;}
  [LINE='ORANGE']
    {line-color:@orange_case;}
  }
  ::file { line-width: 7;
  [LINE='RED']
    {line-color:@red_fill;}
  [LINE='GREEN']
    {line-color:@green_fill;}
  [LINE='BLUE']
    {line-color:@blue_fill;}
  [LINE='ORANGE']
    {line-color:@orange_fill;}
  }
   }
#ComLine[zoom=16]{
    ::case { line-width: 7+2.5;
    line-color:@rail_case; }
    ::fill { line-width: 7;
    line-color:@rail_fill;}
  }
  [Functional=2]#roads[zoom=16]{
    ::case { line-width: 7+2.5;
    line-color:@primary_case; }
    ::fill { line-width: 7;
    line-color:@primary_fill;}
  }
 [Functional=1]#roads[zoom=16]{
    ::case { line-width: 8+2.5;
    line-color:@motorway_case;}
    ::fill { line-width: 8;
    line-color:@motorway_fill;}
  }


/* ---- Zoom level 17 --------------------------------------------- */
[zoom=18]#bike[type='Off-road minimally improved path']{
 ::case { line-width:8+3;
  line-dasharray:4,2;
  line-color:@standard_case;
  }
  ::fill { line-width:8;
  line-dasharray:4,2;
  line-color:#00E04B;
  }
  }
[zoom=18]#bike[type='On-road marked shared lane']{
 ::case { line-width:8+3;
  line-dasharray:8,4;
  line-color:@standard_case;
  }
  ::fill { line-width:8;
  line-dasharray:8,4;
  line-color:#360;
  }
  }
[zoom=18]#bike[type='On-road sign-posted bike route']{
 ::case { line-width:8+3;
  line-dasharray:8,4;
  line-color:@standard_case;
  }
   ::fill { line-width:8;
  line-dasharray:8,4;
  line-color:#360;
  }
  }

[zoom=18]#bike[type='On-road marked lane']{
 ::case { line-width:8+3;
  line-dasharray:8,4;
  line-color:@standard_case;
  }
   ::fill { line-width:8;
  line-dasharray:8,4;
  line-color:#c00;
  }
  }
[zoom=18]#bike[type='On-road divided lane']{
 ::case { line-width:8+3;
  line-dasharray:8,4;
  line-color:@standard_case;
  }
   ::fill { line-width:8;
  line-dasharray:8,4;
  line-color:#e04b00;
  }
  }
[zoom=17]#bike[type='Off-road shared use path']{
 ::case { line-width:8+3;
  line-dasharray:4,2;
  line-color:@standard_case;
  }
   ::fill { line-width:8;
  line-dasharray:4,2;
  line-color:#0025E0;
  }
  }
  [Functional>4]#roads[zoom=17],
[Functional=0]#roads[zoom=17] {
    ::case { line-width:8+3;
    line-color:@standard_case;}
    ::fill { line-width:8;
    line-color:@standard_fill;}
  }
  [Functional=3]#roads[zoom=17] {
    ::case { line-width: 8+3;
    line-color:@secondary_case;}
    ::fill { line-width: 8;
    line-color:@secondary_fill;}
  }
  [Functional=2]#roads[zoom=17] {
    ::case { line-width: 9+3;
    line-color:@primary_case;}
    ::fill { line-width: 9;
    line-color:@primary_fill;}
  }
#subway[zoom=17]
{ ::case { line-width: 9+3;
  [LINE='RED']
    {line-color:@red_case;}
  [LINE='GREEN']
    {line-color:@green_case;}
  [LINE='BLUE']
    {line-color:@blue_case;}
  [LINE='ORANGE']
    {line-color:@orange_case;}
  }
  ::file { line-width: 9;
  [LINE='RED']
    {line-color:@red_fill;}
  [LINE='GREEN']
    {line-color:@green_fill;}
  [LINE='BLUE']
    {line-color:@blue_fill;}
  [LINE='ORANGE']
    {line-color:@orange_fill;}
  }
   }
#ComLine[zoom=17] {
    ::case { line-width: 9+3;
    line-color:@rail_case;}
    ::fill { line-width: 9;
    line-color:@rail_fill;}
  }
[Functional=1]#roads[zoom=17]{
    ::case { line-width: 10+3;
    line-color:@motorway_case;}
    ::fill { line-width: 10;
    line-color:@motorway_fill;}
  }


/* ---- Zoom level 18 --------------------------------------------- */
[zoom=18]#bike[type='Off-road shared use path']{
 ::case { line-width:10+2;
  line-dasharray:4,2;
  line-color:@standard_case;
  }
   ::fill { line-width:10;
  line-dasharray:4,2;
  line-color:#0025E0;
  }
  }
  [Functional>4]#roads[zoom=18], 
  [Functional=0]#roads[zoom=18]{
    ::case { line-width:10+2;
    line-color:@standard_case;}
    ::fill { line-width:10;
    line-color:@standard_fill;}
  }
  [Functional=3]#roads[zoom=18] {
    ::case { line-width: 16+3;
    line-color:@secondary_case;}
    ::fill { line-width: 16;
    line-color:@secondary_fill;}
  }
#subway[zoom=18]
{ ::case { line-width: 18+3;
  [LINE='RED']
    {line-color:@red_case;}
  [LINE='GREEN']
    {line-color:@green_case;}
  [LINE='BLUE']
    {line-color:@blue_case;}
  [LINE='ORANGE']
    {line-color:@orange_case;}
  }
  ::file { line-width: 18;
  [LINE='RED']
    {line-color:@red_fill;}
  [LINE='GREEN']
    {line-color:@green_fill;}
  [LINE='BLUE']
    {line-color:@blue_fill;}
  [LINE='ORANGE']
    {line-color:@orange_fill;}
  }
   }
#ComLine[zoom=18] {
    ::case { line-width: 18+3;
    line-color:@rail_case;}
    ::fill { line-width: 18;
    line-color:@rail_fill;}
  }
  [Functional=2]#roads[zoom=18] {
    ::case { line-width: 18+3;
    line-color:@primary_case;}
    ::fill { line-width: 18;
    line-color:@primary_fill;}
  }
[Functional=1]#roads[zoom=18]{
    ::case { line-width: 20+3;
    line-color:@motorway_case;}
    ::fill { line-width: 20;
    line-color:@motorway_fill;}
  }


/* == 3. ROAD LABELS ============================================== */
[zoom>7]#shield[RouteSyste='I']
{
  shield-name:'[RouteNumbe]';
  shield-face-name:'Ubuntu Regular';
   shield-file:url(/home/planner/inter.png);
  shield-fill:#fff;
  shield-size:12;
  shield-min-distance:30;
  shield-spacing:50;
  }

[zoom>9]#shield[Functional=2]
{
[RouteSyste='US']
{
  shield-name:'[RouteNumbe]';
  shield-face-name:'Ubuntu Regular';
   shield-file:url(/home/planner/us.png);
  shield-fill:#000;
  shield-size:12;
  shield-min-distance:30;
  shield-spacing:50;
  }
[RouteSyste='SR']
{
  shield-name:'[RouteNumbe]';
  shield-face-name:'Ubuntu Regular';
   shield-file:url(/home/planner/ma.png);
  shield-fill:#000;
  shield-size:12;
  shield-min-distance:50;
  shield-spacing:70;
  }
}
[zoom>10]#shield[Functional=2]{
[RouteSyste='US']
{
  shield-name:'[RouteNumbe]';
  shield-face-name:'Ubuntu Regular';
   shield-file:url(/home/planner/us.png);
  shield-fill:#000;
  shield-size:12;
  shield-min-distance:50;
  shield-spacing:70;
  }
[RouteSyste='SR']
{
  shield-name:'[RouteNumbe]';
  shield-face-name:'Ubuntu Regular';
   shield-file:url(/home/planner/ma.png);
  shield-fill:#000;
  shield-size:12;
  shield-min-distance:50;
  shield-spacing:70;
  }
}
[zoom>13]#shield[Functional>3]{
[RouteSyste='US']
{
  shield-name:'[RouteNumbe]';
  shield-face-name:'Ubuntu Regular';
   shield-file:url(/home/planner/us.png);
  shield-fill:#000;
  shield-size:12;
  shield-min-distance:50;
  shield-spacing:70;
  }
[RouteSyste='SR']
{
  shield-name:'[RouteNumbe]';
  shield-face-name:'Ubuntu Regular';
   shield-file:url(/home/planner/ma.png);
  shield-fill:#000;
  shield-size:12;
  shield-min-distance:50;
  shield-spacing:70;
  }
}
[Functional=0]#shield[zoom>14] {
  text-name:'[StreetName]';
  text-face-name:'Ubuntu Regular';
  text-placement:line;
  text-size:9;
  text-fill:#444;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-min-distance:60;
  text-size:11;
}

/* == 4. RAILWAYS ================================================= */

/* TODO: fancier railway styling with casing, thicker lines 
#rail[zoom>7] {
  line-color:@rail_line;
  line-dasharray:3,2;
  line-width:0.5;
  [tunnel=1] { line-opacity:0.5; }
  [zoom>9] { line-width:1; }
}*/
/*[type='subway']#rail[zoom>9]{
line-color:#ff0000;
line-width:2;
  }*/

/* == 5. AEROWAYS ================================================= */

#aeroway[zoom>9] {
  line-color:@aeroway;
  line-cap:butt;
  line-join:miter;
  [type='runway'] {
    [zoom=10]{ line-width:1; }
    [zoom=11]{ line-width:2; }
    [zoom=12]{ line-width:3; }
    [zoom=13]{ line-width:5; }
    [zoom=14]{ line-width:7; }
    [zoom=15]{ line-width:11; }
    [zoom=16]{ line-width:15; }
    [zoom=17]{ line-width:19; }
    [zoom>17]{ line-width:23; }
  }
  [type='taxiway'] {
    [zoom=10]{ line-width:0.2; }
    [zoom=11]{ line-width:0.2; }
    [zoom=12]{ line-width:0.2; }
    [zoom=13]{ line-width:1; }
    [zoom=14]{ line-width:1.5; }
    [zoom=15]{ line-width:2; }
    [zoom=16]{ line-width:3; }
    [zoom=17]{ line-width:4; }
    [zoom>17]{ line-width:5; }
  }
}

#stop[zoom>13]
{
  point-file:url(/home/planner/t2.png);
  }
#trans[type='bus_stop']
{
 
[zoom=16]{ point-file: url(/home/planner/png/transport_bus_stop.glow.12.png); }
[zoom=17]{ point-file: url(/home/planner/png/transport_bus_stop.glow.16.png); }
[zoom=18]{ point-file: url(/home/planner/png/transport_bus_stop.glow.20.png); }
    }
#ComSt{
[zoom=15]{ point-file: url(/home/planner/png/transport_train_station.glow.12.png); }
[zoom=16]{ point-file: url(/home/planner/png/transport_train_station.glow.16.png); }
[zoom=17]{ point-file: url(/home/planner/png/transport_train_station.glow.20.png); }
[zoom=18]{ point-file: url(/home/planner/png/transport_train_station.glow.24.png); }
    }



