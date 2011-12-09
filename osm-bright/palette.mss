/* ****************************************************************** */
/* OSM BRIGHT for ImpOSM */
/* ****************************************************************** */

/* For basic style customization you can simply edit the colors and
 * fonts defined in this file. For more detailed / advanced
 * adjustments explore the other files.
 *
 * GENERAL NOTES
 *
 * There is a slight performance cost in rendering line-caps. An
 * effort has been made to restrict line-cap definitions to styles
 * where the results will be visible (lines at least 2 pixels thick).
 */

/* == 1. FONTS ====================================================== */

/* We're only using @sans so far. TODO: more type variety. */
@sans: "Ubuntu Regular","Arial Regular","DejaVu Sans Book";
@sans_bold: "Arial Bold", "DejaVu Sans Bold";
@sans_italic: "Arial Italic", "DejaVu Sans Oblique";
@sans_bold_italic: "Arial Bold Italic", " DejaVu Sans Bold Oblique";

/* Some fonts are larger or smaller than others. Use this variable to
   globally increase or decrease the font sizes. */
@text_adjust: 0;

/* == 2. COLOR PALETTE ============================================== */

/* ---- Lancover & Landuse ------------------------------------------ */

@land: #fcfbe7;
@water: #c4dff2;

@agriculture: #f4f0e0;
@beach: #ffeec7;
@building: #CDC6C6;
@cemetery: #d1d1d1;
@forest: #c7e6a8;
@grass: lighten(@forest,5);
@hospital: rgb(229,198,195);
@industrial: #e8e8e8;
@park: lighten(@forest,10);
@parking: #eee;
@residential: desaturate(darken(@land,5),10);
@school: #FEA;
@sports: #DED1AB;
@transport: rgb(200,200,200);

/* ---- Roads ------------------------------------------------------- */
/* For each class of road there are three color variables:
 * - line: for lower zoomlevels when the road is represented by a
 * single solid line.
 * - case: for higher zoomlevels, this color is for the road's
 * casing (outline).
 * - fill: for higher zoomlevels, this color is for the road's
 * inner fill (inline).
 */
@standard_line: @land * 0.9;
@standard_fill: #fff;
@standard_case: fadeout(#000,90%);

@motorway_line: #D84F48;
@motorway_fill: lighten(@motorway_line,10%);
@motorway_case: darken(@motorway_line,20%);

@trunk_line: @motorway_line;
@trunk_fill: @motorway_fill;
@trunk_case: @motorway_case;

@primary_line: #4888d8;
@primary_fill: lighten(@primary_line,10%);
@primary_case: darken(@primary_line,20%);

@secondary_line: darken(#f9cf66,20%);
@secondary_fill: lighten(#f9cf66,20%);
@secondary_case: @secondary_line;

@pedestrian_line: @standard_line;
@pedestrian_fill: #FAFAF5;
@pedestrian_case: @standard_case;

@ped_line: @standard_line;
@ped_fill: #623209;
@ped_case: darken(@ped_fill,20%);

@bridge_case: rgba(0,0,0,0.33);

@track: #aaa;

@rail_line: #8c78ab;
@rail_fill: lighten(@rail_line,1%);
@rail_case: darken(@rail_line,10%);

@red_line: #e32332;
@red_fill: lighten(@red_line,1%);
@red_case: darken(@red_line,10%);

@green_line: #01764a;
@green_fill: lighten(@green_line,1%);
@green_case: darken(@green_line,10%);

@blue_line: #00579a;
@blue_fill: lighten(@blue_line,1%);
@blue_case: darken(@blue_line,10%);

@orange_line: #fe7815;
@orange_fill: lighten(@orange_line,1%);
@orange_case: darken(@orange_line,10%);

@aeroway: rgb(180,180,180);

/* ---- Boundaries -------------------------------------------------- */

@admin_2: #324;

/* ---- Places ------------------------------------------------------ */

@default_halo: fadeout(#fff,25%);

@country_text: #435;
@country_halo: @default_halo;

/* ****************************************************************** */
