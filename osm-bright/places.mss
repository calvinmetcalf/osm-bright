/* borders, placenames, and POIs */

/* ==== PLACES ==================================================== */

#place::continent[type='continent'][zoom>=0][zoom<3] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:rgb(100,100,100);
  text-size:10;
}

#place::country[type='country'][zoom>3][zoom<9] {
  text-name:'[name]';
  text-face-name:@sans_bold;
  text-placement:point;
  text-fill:@country_text;
  text-halo-fill: @country_halo;
  text-halo-radius: 1;
  [zoom=3] {
    text-size:10 + @text_adjust;
    text-wrap-width: 40;
  }
  [zoom=4] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
  }
  [zoom>4] {
    text-halo-radius: 2;
  }
  [zoom=5] {
    text-size:11 + @text_adjust;
    text-wrap-width: 50;
    text-line-spacing: 1;
  }
  [zoom=6] {
    text-size:12 + @text_adjust;
    text-character-spacing: 1;
    text-wrap-width: 80;
    text-line-spacing: 2;
  }
  [zoom=7] {
    text-size:14 + @text_adjust;
    text-character-spacing: 2;
  }
}

#place::city[type='city'][zoom>4][zoom<16] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:rgb(68,68,68);
  text-size:10;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>8] { text-halo-radius:2; text-fill:#000; text-size:11; }
  [zoom>9] { text-size:12; }
  [zoom>10]{ text-size:13; }
  [zoom>12]{ text-size:14; }
  [zoom>14]{ text-size:15; }
}

#place::town[type='town'][zoom>7] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#666;
  text-size:10;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>8] { text-halo-radius:2; }
  [zoom>10]{ text-size:11; text-fill:#000; }
  [zoom>11]{ text-size:12; }
  [zoom>14]{ text-size:13; }
}

#place::village[type='village'][zoom>10] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#444;
  text-size:10;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>12] { text-size:11; text-fill:#000; }
  [zoom>14] { text-size:12; }
}

#place::small[type='suburb'][zoom>12],
#place::small[type='hamlet'][zoom>12],
#place::small[type='locality'][zoom>12] {
  text-name:'[name]';
  text-face-name:@sans;
  text-placement:point;
  text-fill:#444;
  text-size:10;
  text-halo-fill:#fff;
  text-halo-radius:1;
  text-wrap-width: 50;
  [zoom>14] { text-size:11; text-fill:#000; }
}



/* ==== AREA LABELS ================================================ 

#landuse_label[zoom>12][area>1000000] {
  [type='industrial'],[type='commercial'],[type='parking'],
  [type='park'],[type='golf_course'] {
    text-name:'[name]';
    text-face-name:@sans;
    text-fill:#000;
    text-halo-fill:fadeout(#fff,20);
    text-halo-radius:2;
    text-placement:interior;
    text-size:11;
    text-wrap-width:20;
  }
  [type='cemetery'] {
    text-fill:darken(@cemetery,50);
  }
  [type='park'], [type='golf_course'] {
    text-fill:darken(@park,50);
  }
  [type='school'], [type='college'], [type='university'] {
    text-fill:darken(@school,50);
  }
}
#landuse_label[zoom>12][area>1000000],
#landuse_label[zoom>13][area>500000],
#landuse_label[zoom>14][area>250000],
#landuse_label[zoom>15][area>125000],
#landuse_label[zoom>16][area>612500],
#landuse_label[zoom>17] {
  text-name:'[name]';
  text-face-name:@sans;
  text-fill:#000;
  [type='pedestrian'] { text-fill:#333; }
  text-halo-fill:#fff;
  text-halo-radius:2;
  text-placement:interior;
  text-size:11;
  text-wrap-width:20;
  [zoom>14] { text-size:12; }
  [type='cemetery'] {
    text-fill:darken(@cemetery,50);
  }
  [type='park'], [type='golf_course'] {
    text-fill:darken(@park,50);
  }
  [type='school'], [type='college'], [type='university'] {
    text-fill:darken(@school,50);
  }
}

.amenity[zoom>=15][type='hospital']  {
  text-name:'[name]';
  text-allow-overlap: false;
  text-face-name: 'Ubuntu Regular';
  text-fill: #999;
  text-halo-fill: #fff;
  text-halo-radius: 1;
  text-min-distance: 20;
  text-placement: line;
}
*/
/* Education */
[type='college']#amenity[zoom=15] { point-file: url(png/education_college.glow.12.png); }
[type='college']#amenity[zoom=16] { point-file: url(png/education_college.glow.16.png); }
[type='college']#amenity[zoom=17] { point-file: url(png/education_college.glow.20.png); }
[type='college']#amenity[zoom=18] { point-file: url(png/education_college.glow.24.png); }
[type='library']#amenity[zoom=15] { point-file: url(png/amenity_library.glow.12.png); }
[type='library']#amenity[zoom=16] { point-file: url(png/amenity_library.glow.16.png); }
[type='library']#amenity[zoom=17] { point-file: url(png/amenity_library.glow.20.png); }
[type='library']#amenity[zoom=18] { point-file: url(png/amenity_library.glow.224.png); }
[type='school']#amenity[zoom=15] { point-file: url(png/education_school.glow.12.png); }
[type='school']#amenity[zoom=16] { point-file: url(png/education_school.glow.16.png); }
[type='school']#amenity[zoom=17] { point-file: url(png/education_school.glow.20.png); }
[type='school']#amenity[zoom=18] { point-file: url(png/education_school.glow.24.png); }
[type='university']#amenity[zoom=15] { point-file: url(png/education_university.glow.12.png); }
[type='university']#amenity[zoom=16] { point-file: url(png/education_university.glow.16.png); }
[type='university']#amenity[zoom=17] { point-file: url(png/education_university.glow.20.png); }
[type='university']#amenity[zoom=18] { point-file: url(png/education_university.glow.24.png); }
[type='hospital']#amenity{
[zoom=15]{ point-file: url(png/health_hospital.glow.12.png); }
[zoom=16]{ point-file: url(png/health_hospital.glow.16.png); }
[zoom=17]{ point-file: url(png/health_hospital.glow.20.png); }
[zoom=18]{ point-file: url(png/health_hospital.glow.24.png); }
    }
[type='dentist']#amenity{
[zoom=15]{ point-file: url(png/health_dentist.glow.12.png); }
[zoom=16]{ point-file: url(png/health_dentist.glow.16.png); }
[zoom=17]{ point-file: url(png/health_dentist.glow.20.png); }
[zoom=18]{ point-file: url(png/health_dentist.glow.24.png); }
    }
[type='doctors']#amenity{
[zoom=15]{ point-file: url(png/health_doctors.glow.12.png); }
[zoom=16]{ point-file: url(png/health_doctors.glow.16.png); }
[zoom=17]{ point-file: url(png/health_doctors.glow.20.png); }
[zoom=18]{ point-file: url(png/health_doctors.glow.24.png); }
    }
[type='pharmacy']#amenity{
[zoom=15]{ point-file: url(png/health_pharmacy.glow.12.png); }
[zoom=16]{ point-file: url(png/health_pharmacy.glow.16.png); }
[zoom=17]{ point-file: url(png/health_pharmacy.glow.20.png); }
[zoom=18]{ point-file: url(png/health_pharmacy.glow.24.png); }
    }
[type='veterinary']#amenity{
[zoom=15]{ point-file: url(png/health_veterinary.glow.12.png); }
[zoom=16]{ point-file: url(png/health_veterinary.glow.16.png); }
[zoom=17]{ point-file: url(png/health_veterinary.glow.20.png); }
[zoom=18]{ point-file: url(png/health_veterinary.glow.24.png); }
    }
[type='parking']#amenity{
  [park_ride='bus']{
    [zoom=15]{ point-file: url(png/transport_park_ride_bus.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_park_ride_bus.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_park_ride_bus.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_park_ride_bus.glow.24.png); }
    }
   [park_ride='yes']{
[zoom=15]{ point-file: url(png/transport_park_ride_car.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_park_ride_car.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_park_ride_car.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_park_ride_car.glow.24.png); }
  }
  [zoom=15]{ point-file: url(png/transport_parking.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_parking.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_parking.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_parking.glow.24.png); }
  }
[type='bicycle_parking']#amenity{
[zoom=15]{ point-file: url(png/transport_parking_bicycle.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_parking_bicycle.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_parking_bicycle.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_parking_bicycle.glow.24.png); }
    }
[type='car_rental']#amenity{
[zoom=15]{ point-file: url(png/transport_rental_car.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_rental_car.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_rental_car.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_rental_car.glow.24.png); }
    }
[type='car_sharing']#amenity{
[zoom=15]{ point-file: url(png/transport_car_share.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_car_share.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_car_share.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_car_share.glow.24.png); }
    }
/*[type='car_wash']#amenity{
[zoom=15]{ point-file: url(png/transport_parking_bicycle.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_parking_bicycle.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_parking_bicycle.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_parking_bicycle.glow.24.png); }
    }*/
[type='ferry_terminal']#amenity{
[zoom=15]{ point-file: url(png/transport_port.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_port.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_port.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_port.glow.24.png); }
    }
/*[type='grit_bin']#amenity{
[zoom=15]{ point-file: url(png/transport_parking_bicycle.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_parking_bicycle.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_parking_bicycle.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_parking_bicycle.glow.24.png); }
    }*/
[cng=0]#fuel{
[zoom=14]{ point-file: url(png/transport_fuel.glow.12.png); }
[zoom=15]{ point-file: url(png/transport_fuel.glow.16.png); }
[zoom=16]{ point-file: url(png/transport_fuel.glow.20.png); }
[zoom=17]{ point-file: url(png/transport_fuel.glow.24.png); }
  [zoom=18]{ point-file: url(png/transport_fuel.glow.32.png); }
    }
[cng=1]#fuel{
[zoom=14]{ point-file: url(png/transport_fuel_cng.glow.12.png); }
[zoom=15]{ point-file: url(png/transport_fuel_cng.glow.16.png); }
[zoom=16]{ point-file: url(png/transport_fuel_cng.glow.20.png); }
[zoom=17]{ point-file: url(png/transport_fuel_cng.glow.24.png); }
  [zoom=18]{ point-file: url(png/transport_fuel_cng.glow.32.png); }
    }
[type='fire_station']#amenity{
[zoom=15]{ point-file: url(png/amenity_firestation.glow.12.png); }
[zoom=16]{ point-file: url(png/amenity_firestation.glow.16.png); }
[zoom=17]{ point-file: url(png/amenity_firestation.glow.20.png); }
[zoom=18]{ point-file: url(png/amenity_firestation.glow.24.png); }
    }
[type='police']#amenity{
[zoom=15]{ point-file: url(png/amenity_police.glow.12.png); }
[zoom=16]{ point-file: url(png/amenity_police.glow.16.png); }
[zoom=17]{ point-file: url(png/amenity_police.glow.20.png); }
[zoom=18]{ point-file: url(png/amenity_police.glow.24.png); }
    }
[type='taxi']#amenity{
[zoom=15]{ point-file: url(png/transport_taxi_rank.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_taxi_rank.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_taxi_rank.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_taxi_rank.glow.24.png); }
    }
[type='townhall']#amenity{
[zoom=15]{ point-file: url(png/amenity_town_hall.glow.12.png); }
[zoom=16]{ point-file: url(png/amenity_town_hall.glow.16.png); }
[zoom=17]{ point-file: url(png/amenity_town_hall.glow.20.png); }
[zoom=18]{ point-file: url(png/amenity_town_hall.glow.24.png); }
    }
[type='atm']#amenity{
[zoom=15]{ point-file: url(png/money_atm2.glow.12.png); }
[zoom=16]{ point-file: url(png/money_atm2.glow.16.png); }
[zoom=17]{ point-file: url(png/money_atm2.glow.20.png); }
[zoom=18]{ point-file: url(png/money_atm2.glow.24.png); }
    }
[type='bank']#amenity{
[zoom=15]{ point-file: url(png/money_bank2.glow.12.png); }
[zoom=16]{ point-file: url(png/money_bank2.glow.16.png); }
[zoom=17]{ point-file: url(png/money_bank2.glow.20.png); }
[zoom=18]{ point-file: url(png/money_bank2.glow.24.png); }
    }
[type='courthouse']#amenity{
[zoom=15]{ point-file: url(png/amenity_court.glow.12.png); }
[zoom=16]{ point-file: url(png/amenity_court.glow.16.png); }
[zoom=17]{ point-file: url(png/amenity_court.glow.20.png); }
[zoom=18]{ point-file: url(png/amenity_court.glow.24.png); }
    }
[type='place_of_worship']#amenity{
  [religion='jewish']{
[zoom=15]{ point-file: url(png/place_of_worship_jewish.glow.12.png); }
[zoom=16]{ point-file: url(png/place_of_worship_jewish.glow.16.png); }
[zoom=17]{ point-file: url(png/place_of_worship_jewish.glow.20.png); }
[zoom=18]{ point-file: url(png/place_of_worship_jewish.glow.24.png); }
    }
  [religion='christian']{
[zoom=15]{ point-file: url(png/place_of_worship_christian.glow.12.png); }
[zoom=16]{ point-file: url(png/place_of_worship_christian.glow.16.png); }
[zoom=17]{ point-file: url(png/place_of_worship_christian.glow.20.png); }
[zoom=18]{ point-file: url(png/place_of_worship_christian.glow.24.png); }
    }
}
[type='post_office']#amenity{
[zoom=15]{ point-file: url(png/amenity_post_office.glow.12.png); }
[zoom=16]{ point-file: url(png/amenity_post_office.glow.16.png); }
[zoom=17]{ point-file: url(png/amenity_post_office.glow.20.png); }
[zoom=18]{ point-file: url(png/amenity_post_office.glow.24.png); }
    }
[type='public_building']#amenity{
[zoom=15]{ point-file: url(png/amenity_public_building2.glow.12.png); }
[zoom=16]{ point-file: url(png/amenity_public_building2.glow.16.png); }
[zoom=17]{ point-file: url(png/amenity_public_building2.glow.20.png); }
[zoom=18]{ point-file: url(png/amenity_public_building2.glow.24.png); }
    }
[type='post_box']#amenity{
[zoom=16]{ point-file: url(png/amenity_post_box.glow.12.png); }
[zoom=17]{ point-file: url(png/amenity_post_box.glow.16.png); }
[zoom=18]{ point-file: url(png/amenity_post_box.glow.20.png); }
 }
[STATUS='OPEN']#rest{
[zoom=14]{ point-file: url(png/transport_rest.glow.12.png); }
[zoom=15]{ point-file: url(png/transport_rest.glow.16.png); }
[zoom=16]{ point-file: url(png/transport_rest.glow.20.png); }
[zoom=17]{ point-file: url(png/transport_rest.glow.24.png);}
  [zoom=18]{ point-file: url(png/transport_rest.glow.32.png);}
    }
/* Health 
.amenity[zoom>=16][amenity='baby_hatch'] {  }
.amenity[zoom>=16][amenity='dentist'] {  }
.amenity[zoom>=16][amenity='doctors'] {  }
[type='hospital']#amenity[zoom>=15] { point-file: url(./res/medical-10.png); }
.amenity[zoom>=16][type='hospital'] { point-file: url(./res/medical-15.png); }
.amenity[zoom>=16][amenity='pharmacy'] {  }
.amenity[zoom>=16][amenity='veterinary'] {  }
*/
/* Transportation 
.amenity[zoom>=15][amenity='bicycle_parking'] {  }
.amenity[zoom>=15][amenity='bicycle_rental'] {  }
.amenity[zoom>=15][amenity='bus_station'] { point-file: url(./res/bus-10.png); }
.amenity[zoom>=15][amenity='car_rental'] {  }
.amenity[zoom>=15][amenity='car_sharing'] {  }
.amenity[zoom>=15][amenity='car_wash'] {  }
.amenity[zoom>=15][amenity='ferry_terminal'] { point-file: url(./res/port-10.png); }
.amenity[zoom>=15][type='fuel'] { point-file: url(./res/fuel-10.png); }
.amenity[zoom>=15][amenity='grit_bin'] {  }
.amenity[zoom>=15][amenity='taxi'] {  }
*/
/* Financial 
.amenity[zoom>=16][amenity='atm'] {  }
.amenity[zoom>=16][amenity='bank'] {  }
.amenity[zoom>=16][amenity='bureau_de_change'] {  }
*/
/* Food/Drink 
.amenity[zoom>=16][amenity='bar'] { point-file: url(./res/restaurant-10.png);  }
.amenity[zoom>=16][amenity='cafe'] { point-file: url(./res/cafe-10.png); }
.amenity[zoom>=16][amenity='fast_food'] { point-file: url(./res/restaurant-10.png);  }
.amenity[zoom>=16][amenity='food_court'] { point-file: url(./res/restaurant-10.png);  }
.amenity[zoom>=16][amenity='pub'] { point-file: url(./res/restaurant-10.png);  }
.amenity[zoom>=16][amenity='restaurant'] { point-file: url(./res/restaurant-10.png); }
*/
/* Entertainment, Arts, Culture 
.amenity[zoom>=16][amenity='architect_office'] {  }
.amenity[zoom>=16][amenity='arts_centre'] {  }
.amenity[zoom>=16][amenity='cinema'] { point-file: url(./res/cinema-10.png); }
.amenity[zoom>=16][amenity='community_centre'] {  }
.amenity[zoom>=16][amenity='fountain'] {  }
.amenity[zoom>=16][amenity='nightclub'] {  }
.amenity[zoom>=16][amenity='stripclub'] {  }
.amenity[zoom>=16][amenity='studio'] {  }
.amenity[zoom>=16][amenity='theatre'] {  }
*/
/* Public 
.amenity[zoom>=16][amenity='courthouse'] {  }
.amenity[zoom>=16][type='fire_station'] {  }
.amenity[zoom>=16][amenity='grave_yard'] {  }
.amenity[zoom>=16][amenity='place_of_worship'] {  }
.amenity[zoom>=16][type='police'] {  }
.amenity[zoom>=16][amenity='post_office'] { point-file: url(./res/post-10.png); }
.amenity[zoom>=16][amenity='prison'] {  }
.amenity[zoom>=16][amenity='public_building'] {  }
.amenity[zoom>=16][amenity='shelter'] {  }
.amenity[zoom>=16][type='townhall'] { point-file: url(./res/town-hall-10.png); }
*/
/* Public - small 
.amenity[zoom>=17][amenity='bench'] {  }
.amenity[zoom>=17][amenity='post_box'] {  }
.amenity[zoom>=17][amenity='recycling'] {  }
.amenity[zoom>=17][amenity='telephone'] {  }
.amenity[zoom>=17][amenity='toilets'] {  }
.amenity[zoom>=17][amenity='vending_machine'] {  }
.amenity[zoom>=17][amenity='waste_basket'] {  }
.amenity[zoom>=17][amenity='waste_disposal'] {  }
*/