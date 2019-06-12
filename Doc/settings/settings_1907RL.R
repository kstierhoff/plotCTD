
# Survey info-General -----------------------------------------------------
survey.name   <- "1807RL"
survey.vessel <- "FSV Reuben Lasker" 
survey.dir    <- "C:/SURVEY/1807RL"
data.dir      <- "C:/SURVEY/1807RL/DATA"

# Define Leg breaks; e.g. "YYYY-MM-DD"
leg.breaks <- as.numeric(lubridate::ymd(c("2018-06-24", "2018-07-20", 
                                      "2018-08-13", "2018-09-05",
                                      "2018-09-24")))

# Survey info-ERDDAP -----------------------------------------------------
survey.vessel.erddap <- "WTEG" # Lasker == WTEG; Shimada == WTED; add "nrt" if using near-realtime data (e.g., WTEGnrt)
survey.start         <- "2018-06-25" # Start of survey for ERDDAP vessel data query
survey.end           <- "2018-09-23" # End of survey for ERDDAP vessel data query
erddap.vars          <- c("time,latitude,longitude,platformSpeed")
erddap.classes       <- c("factor", "numeric", "numeric", "numeric")
erddap.headers       <- c("time", "lat", "long", "SOG")

# CTD/UCTD file info --------------------------------------------------
# File naming pattern
uctd.prefix <- "1807RL_\\d{3}_UCTD\\d{3}"
ctd.prefix  <- "1807\\d{3}"

# Files to manually exclude
exclude.ctd <- c("1807RL_056_UCTD131")

# Plotting preferences -------------------------------------------------------
# mapview options
mapviewOptions(basemaps = c("Esri.OceanBasemap","Esri.WorldImagery","CartoDB.Positron"))

# Coordinate reference systems for geographic and projected data
crs.geog <- 4326 # WGS84
crs.proj <- 3310 # Califoria Albers Equal Area

# Define map height and width (inches) for saved images
map.height <- 10 # e.g., 8 for spring surveys, 10 for summer surveys
map.width  <-  6 # e.g., 8 for spring surveys, 6 for summer surveys

# Set min and max values for temperature, salinity, etc.
# Temperature limits
min.T <- 0
max.T <- 25

# Salinity limits
min.S <- 30
max.S <- 35

# Map landmarks
label.list <- c("Monterey Bay","San Francisco","Cape Flattery","Crescent City",
                "Newport","Point Conception","Cape Mendocino","Columbia River",
                "Cape Blanco","Bodega Bay","Westport","Fort Bragg",
                "Morro Bay","Long Beach","Cape Scott","San Diego")