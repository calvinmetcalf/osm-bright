OSM Bright
==========

OSM Bright is a sensible starting point for quickly making beautiful maps based
on an OpenStreetMap database. It is written in the [Carto][] styling language
and can be opened as a project in [TileMill][].

The style is still a work in progress and you are encouraged to use the
[issue tracker][] to note missing features or problems with the current
implementation. 

This version is aimed at displaying massachussetts best, and uses shapefiles from [MassDOT][] and massGIS.   This update has some fairly massive changes, see the bottom. 

11/18/11 added walking paths, fixed shield icons (yes I know thats a modified california us route shield, but the square background looked too much like the state one) havn't fixed placement. added walking paths (you'll need to redownload the datafile) modified mbta colors and icons based on their style guide.  Added more poi. Updated osm-bright.imposm.mml to actually take into account my changes (the absolute paths in there will be overwritten by configure.py)

[Carto]: http://github.com/mapbox/carto/
[TileMill]: http://tilemill.com/
[issue tracker]: http://github.com/developmentseed/osm-bright/issues/
[MassDOT]: http://www.massdot.state.ma.us/planning/


Setup Instructions
------------------

### 1. Set up PostgreSQL & PostGIS ###

If you don't already, you need to have [PostgreSQL][] installed & running with
a [PostGIS][] database setup within it. See the [PostGIS documentation][1] for
full information on how to do this

[PostgreSQL]: http://postgresql.org/
[PostGIS]: http://postgis.refractions.net/
[1]: http://postgis.refractions.net/documentation/manual-1.5/

for 8.4 (ubuntu<=11.04) use the command
sudo apt-get install postgresql-8.4-postgis postgresql-contrib-8.4 postgis


### 2. Import OpenStreetMap data ###

You will need an OSM database extract in one of the following formats:

- .osm.pbf (binary; smallest & fastest)
- .osm.bz2 (compressed xml)
- .osm (xml)

this tutorial will assume your using the us-northeast.pbf which you can grab from <http://download.geofabrik.de/osm> (in [north-america folder](http://download.geofabrik.de/osm/north-america/)

You can find appropriate data extracts for a variety of regions at
[geofabrik](http://download.geofabrik.de/osm/) or [cloude made](http://downloads.cloudmade.com). See
also [the OSM wiki](http://wiki.openstreetmap.org/wiki/Planet.osm) for information about (very large) full-planet
downloads.

OSM Bright requires a PostGIS database imported with [ImpOSM](http://imposm.org). Support for
OSM2PGSQL is planned but not yet implemented. 


### Install imposm
* to install imposm on ubuntu 11.04
	
	sudo apt-get install build-essential python-dev protobuf-compiler libprotobuf-dev libtokyocabinet-dev python-psycopg2 libgeos-c1
	sudo apt-get install python-pip
	sudo pip install imposm

* once you have it installed run 
	
	imposm-psqldb > create-db.sh #note the imposm site mis-spells this

* if your using postgres 9.1 this command won't work, use the file impism9-1.sh
* you may need to run 
	
	sudo chmod 775 impism9-1.sh
* first then:
	
	sudo su postgres #switch over to the postgres user
	sh ./create-db.sh #or sh ./osm-bright/impism9-1.sh

* if you don't get any errors then 
	
	exit

* to import data you can run 
	
	imposm --read --overwrite-cache --write --optimize --deploy-production-tables -m osm-bright/brightmapping.py -d osm us-northeast.osm.pbf

* to break that down: 
	
	--read

* reads the data and puts it into the cache
	
	--overwrite-cache

* tell it to overwrite anything already in there, **IMPORTANT** you will get an error if you use this on your first import, leave this out the first time.
	
	--write

* takes the data in the cache and imports it into the database
	
	--optimize

* cleans stuff up
	
	--deploy-production-tables

* removes the new_ table prefixes, I usually don't do this now and instead run
	
	imposm --deploy-prodution-tables -d osm

* after I make sure it got into the database alright
	
	-m osm-bright/brightmapping.py

* tells it to use our custom mapping file
	
	-d osm

* tells it the name of the database, if you didn't use the defaults change this and last is the name of the file

### 3. Run configure.py ###
Open up the configure.py script included in in here and download the two layers processed p and shoreline 300 the address is in the file, unzip them and change the lines underneath them to the path to them on your system. If you followed the default postgres instructions you shouldn't need to touch the database parts, but if you didn't, go wild on that. then run it. Then either copy or link the inner osm-bright folder to your mapbox projects folder (default on ubuntu with the up to date tilemill /home/yourname/Documents/MapBox/project/ older ones is at /usr/share/mapbox/project/)

for the icons your going to need to grab my fork of the [open svg map icon set](https://github.com/calvinmetcalf/Open-SVG-Map-Icons) then you need to run the script called "generatepng.sh" in tools and then eitehr copy or link the png folder into the osm-bright folder (i.e. into the folder that also has res in it).  your going to also want to grab the [zip file here][] unzip the folder called "data" and also link or move that into the osm-bright folder. If you don't have the Ubuntu font and want to use it, you can get it from the [ubuntu site][].


[zip file here]: http://services.massdot.state.ma.us/maptemplate/downloads/data.zip
[ubuntu site]: http://font.ubuntu.com/

## TODO ##

* shields are sized right, but placement has to be improved
* walking paths are done
* get rid of as many of the geojson files as possible in favor of osm data to make it slightly less massachusetts centric

