
# Survey info-General -----------------------------------------------------
survey.name   <- "1907RL"
survey.vessel <- "FSV Reuben Lasker" 
survey.dir    <- "C:/SURVEY/1907RL"
data.dir      <- "C:/SURVEY/1907RL/DATA"

# Define Leg breaks; e.g. "YYYY-MM-DD"
leg.breaks <- as.numeric(lubridate::ymd(c("2019-06-13", "2019-07-06", 
                                          "2019-07-29", "2019-08-20",
                                          "2019-09-10")))

# Survey info-ERDDAP -----------------------------------------------------
survey.vessel.erddap <- "WTEGnrt" # Lasker == WTEG; Shimada == WTED; add "nrt" if using near-realtime data (e.g., WTEGnrt)
survey.start         <- "2019-06-13" # Start of survey for ERDDAP vessel data query
survey.end           <- "2019-09-10" # End of survey for ERDDAP vessel data query
erddap.vars          <- c("time,latitude,longitude,seaTemperature,platformSpeed")
erddap.classes       <- c("factor", "numeric", "numeric", "numeric","numeric")
erddap.headers       <- c("time", "lat", "long", "SST", "SOG")
survey.lat           <- c(32,51)
survey.long          <- c(-130,-117)

# CTD/UCTD file info --------------------------------------------------
# File naming pattern
uctd.prefix <- "1907RL_\\d{3}_UCTD\\d{3}"
ctd.prefix  <- "1907\\d{3}"

# Files to manually exclude
exclude.ctd <- c(NA)

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