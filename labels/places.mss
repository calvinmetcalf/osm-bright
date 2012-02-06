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

