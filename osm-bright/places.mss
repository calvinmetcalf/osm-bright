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

#place::town[type='town'][zoom>9] {
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

.amenity[zoom>=15][type='hospital'] {
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
  #amenity{
[type='college']{
[zoom=15] { point-file: url(png/education_college.glow.12.png); }
[zoom=16] { point-file: url(png/education_college.glow.16.png); }
[zoom=17] { point-file: url(png/education_college.glow.20.png); }
[zoom=18] { point-file: url(png/education_college.glow.24.png); }
}
  [type='library']{
[zoom=15] { point-file: url(png/amenity_library.glow.12.png); }
[zoom=16] { point-file: url(png/amenity_library.glow.16.png); }
[zoom=17] { point-file: url(png/amenity_library.glow.20.png); }
[zoom=18] { point-file: url(png/amenity_library.glow.224.png); }
}
  [type='school']{
    [zoom=15] { point-file: url(png/education_school.glow.12.png); }
[zoom=16] { point-file: url(png/education_school.glow.16.png); }
[zoom=17] { point-file: url(png/education_school.glow.20.png); }
[zoom=18] { point-file: url(png/education_school.glow.24.png); }
}
  [type='university']{
  [zoom=15] { point-file: url(png/education_university.glow.12.png); }
[zoom=16] { point-file: url(png/education_university.glow.16.png); }
[zoom=17] { point-file: url(png/education_university.glow.20.png); }
[zoom=18] { point-file: url(png/education_university.glow.24.png); }
}
[type='hospital']{
[zoom=15]{ point-file: url(png/health_hospital.glow.12.png); }
[zoom=16]{ point-file: url(png/health_hospital.glow.16.png); }
[zoom=17]{ point-file: url(png/health_hospital.glow.20.png); }
[zoom=18]{ point-file: url(png/health_hospital.glow.24.png); }
    }
[type='dentist']{
[zoom=15]{ point-file: url(png/health_dentist.glow.12.png); }
[zoom=16]{ point-file: url(png/health_dentist.glow.16.png); }
[zoom=17]{ point-file: url(png/health_dentist.glow.20.png); }
[zoom=18]{ point-file: url(png/health_dentist.glow.24.png); }
    }
[type='doctors']{
[zoom=15]{ point-file: url(png/health_doctors.glow.12.png); }
[zoom=16]{ point-file: url(png/health_doctors.glow.16.png); }
[zoom=17]{ point-file: url(png/health_doctors.glow.20.png); }
[zoom=18]{ point-file: url(png/health_doctors.glow.24.png); }
    }
[type='pharmacy']{
[zoom=15]{ point-file: url(png/health_pharmacy.glow.12.png); }
[zoom=16]{ point-file: url(png/health_pharmacy.glow.16.png); }
[zoom=17]{ point-file: url(png/health_pharmacy.glow.20.png); }
[zoom=18]{ point-file: url(png/health_pharmacy.glow.24.png); }
    }
[type='veterinary']{
[zoom=15]{ point-file: url(png/health_veterinary.glow.12.png); }
[zoom=16]{ point-file: url(png/health_veterinary.glow.16.png); }
[zoom=17]{ point-file: url(png/health_veterinary.glow.20.png); }
[zoom=18]{ point-file: url(png/health_veterinary.glow.24.png); }
    }
[type='parking']{
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
[type='bicycle_parking']{
[zoom=15]{ point-file: url(png/transport_parking_bicycle.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_parking_bicycle.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_parking_bicycle.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_parking_bicycle.glow.24.png); }
    }
[type='car_rental']{
[zoom=15]{ point-file: url(png/transport_rental_car.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_rental_car.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_rental_car.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_rental_car.glow.24.png); }
    }
[type='car_sharing']{
[zoom=15]{ point-file: url(png/transport_car_share.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_car_share.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_car_share.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_car_share.glow.24.png); }
    }
[type='ferry_terminal']{
[zoom=15]{ point-file: url(png/transport_port.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_port.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_port.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_port.glow.24.png); }
    }
[type='fire_station']{
[zoom=15]{ point-file: url(png/amenity_firestation.glow.12.png); }
[zoom=16]{ point-file: url(png/amenity_firestation.glow.16.png); }
[zoom=17]{ point-file: url(png/amenity_firestation.glow.20.png); }
[zoom=18]{ point-file: url(png/amenity_firestation.glow.24.png); }
    }
[type='police']{
[zoom=15]{ point-file: url(png/amenity_police.glow.12.png); }
[zoom=16]{ point-file: url(png/amenity_police.glow.16.png); }
[zoom=17]{ point-file: url(png/amenity_police.glow.20.png); }
[zoom=18]{ point-file: url(png/amenity_police.glow.24.png); }
    }
[type='taxi']{
[zoom=15]{ point-file: url(png/transport_taxi_rank.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_taxi_rank.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_taxi_rank.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_taxi_rank.glow.24.png); }
    }
[type='townhall']{
[zoom=15]{ point-file: url(png/amenity_town_hall.glow.12.png); }
[zoom=16]{ point-file: url(png/amenity_town_hall.glow.16.png); }
[zoom=17]{ point-file: url(png/amenity_town_hall.glow.20.png); }
[zoom=18]{ point-file: url(png/amenity_town_hall.glow.24.png); }
    }
[type='atm']{
[zoom=15]{ point-file: url(png/money_atm2.glow.12.png); }
[zoom=16]{ point-file: url(png/money_atm2.glow.16.png); }
[zoom=17]{ point-file: url(png/money_atm2.glow.20.png); }
[zoom=18]{ point-file: url(png/money_atm2.glow.24.png); }
    }
[type='bank']{
[zoom=15]{ point-file: url(png/money_bank2.glow.12.png); }
[zoom=16]{ point-file: url(png/money_bank2.glow.16.png); }
[zoom=17]{ point-file: url(png/money_bank2.glow.20.png); }
[zoom=18]{ point-file: url(png/money_bank2.glow.24.png); }
    }
[type='courthouse']{
[zoom=15]{ point-file: url(png/amenity_court.glow.12.png); }
[zoom=16]{ point-file: url(png/amenity_court.glow.16.png); }
[zoom=17]{ point-file: url(png/amenity_court.glow.20.png); }
[zoom=18]{ point-file: url(png/amenity_court.glow.24.png); }
    }
[type='place_of_worship']{
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
[type='post_office']{
[zoom=15]{ point-file: url(png/amenity_post_office.glow.12.png); }
[zoom=16]{ point-file: url(png/amenity_post_office.glow.16.png); }
[zoom=17]{ point-file: url(png/amenity_post_office.glow.20.png); }
[zoom=18]{ point-file: url(png/amenity_post_office.glow.24.png); }
    }
[type='public_building']{
[zoom=15]{ point-file: url(png/amenity_public_building2.glow.12.png); }
[zoom=16]{ point-file: url(png/amenity_public_building2.glow.16.png); }
[zoom=17]{ point-file: url(png/amenity_public_building2.glow.20.png); }
[zoom=18]{ point-file: url(png/amenity_public_building2.glow.24.png); }
    }
[type='post_box']{
[zoom=16]{ point-file: url(png/amenity_post_box.glow.12.png); }
[zoom=17]{ point-file: url(png/amenity_post_box.glow.16.png); }
[zoom=18]{ point-file: url(png/amenity_post_box.glow.20.png); }
 }

[type='restaurant']{
[zoom=15]{ point-file: url(png/food_restaurant.glow.12.png); }
[zoom=16]{ point-file: url(png/food_restaurant.glow.16.png); }
[zoom=17]{ point-file: url(png/food_restaurant.glow.20.png); }
[zoom=18]{ point-file: url(png/food_restaurant.glow.24.png); }
     }
    [type='bar']{
[zoom=15]{ point-file: url(png/food_bar.glow.12.png); }
[zoom=16]{ point-file: url(png/food_bar.glow.16.png); }
[zoom=17]{ point-file: url(png/food_bar.glow.20.png); }
[zoom=18]{ point-file: url(png/food_bar.glow.24.png); }
     }
     [type='cafe']{
[zoom=15]{ point-file: url(png/food_cafe.glow.12.png); }
[zoom=16]{ point-file: url(png/food_cafe.glow.16.png); }
[zoom=17]{ point-file: url(png/food_cafe.glow.20.png); }
[zoom=18]{ point-file: url(png/food_cafe.glow.24.png); }
     }
     [type='ice_cream']{
[zoom=15]{ point-file: url(png/food_ice_cream.glow.12.png); }
[zoom=16]{ point-file: url(png/food_ice_cream.glow.16.png); }
[zoom=17]{ point-file: url(png/food_ice_cream.glow.20.png); }
[zoom=18]{ point-file: url(png/food_ice_cream.glow.24.png); }
     }
     [type='pub']{
[zoom=15]{ point-file: url(png/food_pub.glow.12.png); }
[zoom=16]{ point-file: url(png/food_pub.glow.16.png); }
[zoom=17]{ point-file: url(png/food_pub.glow.20.png); }
[zoom=18]{ point-file: url(png/food_pub.glow.24.png); }
     }
}
[STATUS='OPEN']#rest{
[zoom=14]{ point-file: url(png/transport_rest.glow.12.png); }
[zoom=15]{ point-file: url(png/transport_rest.glow.16.png); }
[zoom=16]{ point-file: url(png/transport_rest.glow.20.png); }
[zoom=17]{ point-file: url(png/transport_rest.glow.24.png);}
  [zoom=18]{ point-file: url(png/transport_rest.glow.32.png);}
    }
#shop{
    [type='bicycle']{
[zoom=14]{ point-file: url(png/shopping_bicycle.glow.12.png); }
[zoom=15]{ point-file: url(png/shopping_bicycle.glow.16.png); }
[zoom=16]{ point-file: url(png/shopping_bicycle.glow.20.png); }
[zoom=17]{ point-file: url(png/shopping_bicycle.glow.24.png); }
  [zoom=18]{ point-file: url(png/shopping_bicycle.glow.32.png); }
    }
    [type='books']{
[zoom=15]{ point-file: url(png/shopping_books.glow.12.png); }
[zoom=16]{ point-file: url(png/shopping_books.glow.16.png); }
[zoom=17]{ point-file: url(png/shopping_books.glow.20.png); }
[zoom=18]{ point-file: url(png/shopping_books.glow.24.png); }
     }
     [type='car_repair']{
[zoom=15]{ point-file: url(png/shopping_car_repair.glow.12.png); }
[zoom=16]{ point-file: url(png/shopping_car_repair.glow.16.png); }
[zoom=17]{ point-file: url(png/shopping_car_repair.glow.20.png); }
[zoom=18]{ point-file: url(png/shopping_car_repair.glow.24.png); }
     }
     [type='copyshop']{
[zoom=15]{ point-file: url(png/shopping_copyshop.glow.12.png); }
[zoom=16]{ point-file: url(png/shopping_copyshop.glow.16.png); }
[zoom=17]{ point-file: url(png/shopping_copyshop.glow.20.png); }
[zoom=18]{ point-file: url(png/shopping_copyshop.glow.24.png); }
     }
    [type='convenience']{
[zoom=15]{ point-file: url(png/shopping_convenience.glow.12.png); }
[zoom=16]{ point-file: url(png/shopping_convenience.glow.16.png); }
[zoom=17]{ point-file: url(png/shopping_convenience.glow.20.png); }
[zoom=18]{ point-file: url(png/shopping_convenience.glow.24.png); }
     }
     [type='farm']{
[zoom=15]{ point-file: url(png/shopping_marketplace.glow.12.png); }
[zoom=16]{ point-file: url(png/shopping_marketplace.glow.16.png); }
[zoom=17]{ point-file: url(png/shopping_marketplace.glow.20.png); }
[zoom=18]{ point-file: url(png/shopping_marketplace.glow.24.png); }
     }
      [type='laundry']{
[zoom=15]{ point-file: url(png/shopping_laundrette.glow.12.png); }
[zoom=16]{ point-file: url(png/shopping_laundrette.glow.16.png); }
[zoom=17]{ point-file: url(png/shopping_laundrette.glow.20.png); }
[zoom=18]{ point-file: url(png/shopping_laundrette.glow.24.png); }
     }
     [type='supermarket']{
[zoom=15]{ point-file: url(png/shopping_supermarket.glow.12.png); }
[zoom=16]{ point-file: url(png/shopping_supermarket.glow.16.png); }
[zoom=17]{ point-file: url(png/shopping_supermarket.glow.20.png); }
[zoom=18]{ point-file: url(png/shopping_supermarket.glow.24.png); }
     }
}
#si
{
[zoom=17]{ point-file: url(png/transport_traffic_lights.glow.12.png); }
[zoom=18]{ point-file: url(png/transport_traffic_lights.glow.16.png); }
     }
#tourism{
     [type='zoo']{
[zoom=15]{ point-file: url(png/tourist_zoo.glow.12.png); }
[zoom=16]{ point-file: url(png/tourist_zoo.glow.16.png); }
[zoom=17]{ point-file: url(png/tourist_zoo.glow.20.png); }
[zoom=18]{ point-file: url(png/tourist_zoo.glow.24.png); }
     }
[type='museum']{
[zoom=15]{ point-file: url(png/tourist_museum.glow.12.png); }
[zoom=16]{ point-file: url(png/tourist_museum.glow.16.png); }
[zoom=17]{ point-file: url(png/tourist_museum.glow.20.png); }
[zoom=18]{ point-file: url(png/tourist_museum.glow.24.png); }
     }
[type='information']{
[zoom=15]{ point-file: url(png/tourist_information.glow.12.png); }
[zoom=16]{ point-file: url(png/tourist_information.glow.16.png); }
[zoom=17]{ point-file: url(png/tourist_information.glow.20.png); }
[zoom=18]{ point-file: url(png/tourist_information.glow.24.png); }
     }
[type='castle']{
[zoom=15]{ point-file: url(png/tourist_castle2.glow.12.png); }
[zoom=16]{ point-file: url(png/tourist_castle2.glow.16.png); }
[zoom=17]{ point-file: url(png/tourist_castle2.glow.20.png); }
[zoom=18]{ point-file: url(png/tourist_castle2.glow.24.png); }
     }
[type='battlefield']{
[zoom=15]{ point-file: url(png/tourist_battlefield.glow.12.png); }
[zoom=16]{ point-file: url(png/tourist_battlefield.glow.16.png); }
[zoom=17]{ point-file: url(png/tourist_battlefield.glow.20.png); }
[zoom=18]{ point-file: url(png/tourist_battlefield.glow.24.png); }
     }
[type='memorial']{
[zoom=15]{ point-file: url(png/tourist_memorial.glow.12.png); }
[zoom=16]{ point-file: url(png/tourist_memorial.glow.16.png); }
[zoom=17]{ point-file: url(png/tourist_memorial.glow.20.png); }
[zoom=18]{ point-file: url(png/tourist_memorial.glow.24.png); }
     }
[type='gallery']{
[zoom=15]{ point-file: url(png/tourist_art_gallery.glow.12.png); }
[zoom=16]{ point-file: url(png/tourist_art_gallery.glow.16.png); }
[zoom=17]{ point-file: url(png/tourist_art_gallery.glow.20.png); }
[zoom=18]{ point-file: url(png/tourist_art_gallery.glow.24.png); }
     }
}
#info{
  [type='map']{
[zoom=15]{ point-file: url(png/tourist_map.glow.12.png); }
[zoom=16]{ point-file: url(png/tourist_map.glow.16.png); }
[zoom=17]{ point-file: url(png/tourist_map.glow.20.png); }
[zoom=18]{ point-file: url(png/tourist_map.glow.24.png); }
     }
   [type='guidepost']{
[zoom=15]{ point-file: url(png/tourist_guidepost.glow.12.png); }
[zoom=16]{ point-file: url(png/tourist_guidepost.glow.16.png); }
[zoom=17]{ point-file: url(png/tourist_guidepost.glow.20.png); }
[zoom=18]{ point-file: url(png/tourist_guidepost.glow.24.png); }
     }
  }
#power[power_source='wind']{
  [zoom=15]{ point-file: url(png/tourist_windmill.glow.12.png); }
[zoom=16]{ point-file: url(png/tourist_windmill.glow.16.png); }
[zoom=17]{ point-file: url(png/tourist_windmill.glow.20.png); }
[zoom=18]{ point-file: url(png/tourist_windmill.glow.24.png); }
     }
#manmade{
  [type='lighthouse']{
[zoom=15]{ point-file: url(png/transport_lighthouse.glow.12.png); }
[zoom=16]{ point-file: url(png/transport_lighthouse.glow.16.png); }
[zoom=17]{ point-file: url(png/transport_lighthouse.glow.20.png); }
[zoom=18]{ point-file: url(png/transport_lighthouse.glow.24.png); }
     }
  [type='surveillance']{
[zoom=15]{ point-file: url(png/poi_cctv.glow.12.png); }
[zoom=16]{ point-file: url(png/poi_cctv.glow.16.png); }
[zoom=17]{ point-file: url(png/poi_cctv.glow.20.png); }
[zoom=18]{ point-file: url(png/poi_cctv.glow.24.png); }
     }
  [type='tower']{
    ['tower:type'='communication']{
[zoom=15]{ point-file: url(png/poi_tower_communications.glow.12.png); }
[zoom=16]{ point-file: url(png/poi_tower_communications.glow.16.png); }
[zoom=17]{ point-file: url(png/poi_tower_communications.glow.20.png); }
[zoom=18]{ point-file: url(png/poi_tower_communications.glow.24.png); }
     }
     ['tower:type'='observation']{
[zoom=15]{ point-file: url(png/poi_tower_lookout.glow.12.png); }
[zoom=16]{ point-file: url(png/poi_tower_lookout.glow.16.png); }
[zoom=17]{ point-file: url(png/poi_tower_lookout.glow.20.png); }
[zoom=18]{ point-file: url(png/poi_tower_lookout.glow.24.png); }
     }
  }
  }