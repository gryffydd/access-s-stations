# Station based forecasts from ACCESS-S files

ACCESS-S is the Bureau of Meteorology's Seasonal Forecasting system

These forecasts can be accessed using OPeNDAP to get the forecast data for a specific point.
Stations are specific points.  Using the Latitude and Longitude of a Station, we can retrieve the
forecast for a grid point in a trivial way.

## Getting the Station data

We can get a full listing of the Bureau Stations from the Bureau web site.

```
wget ftp://ftp.bom.gov.au/anon2/home/ncc/metadata/lists_by_element/alpha/alphaAUS_139.txt
wget ftp://ftp.bom.gov.au/anon2/home/ncc/metadata/lists_by_element/numeric/numAUS_139.txt
wget ftp://ftp.bom.gov.au/anon2/home/ncc/metadata/lists_by_element/readme.txt
```

## Creating a GeoJSON representation of that data

Put Code here

## Calculating the index into the Calibrated Forecast files

Put Code here

## Create a simple map with icons for each station

Put Code here

