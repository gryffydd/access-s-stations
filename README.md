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

```
import json

f='alphaAUS_139.txt'
a = [l for l in open(f, 'r').readlines() if l[0] == ' ']
a = [l for l in a if l[81:85] == '2019']

fl = []
for l in a:
    fl.append({
        "type": "Feature",
        "geometry": {
            "type": "Point",
            "coordinates": [float(l[59:68].strip()), float(l[49:59].strip())]
            },
        "properties": {
            "site_id": l[0:8].strip(),
            "site_name": l[8:49].strip(),
            }
        })
fc = {
    "type": "FeatureCollection",
    "features": fl
    }

json.dump(fc, open('ACCESS-S-Stations.json', 'w'), indent=4)
```

Generates something like this:
```
{
    "type": "FeatureCollection",
    "features": [
        {
            "geometry": {
                "type": "Point",
                "coordinates": [
                    115.2861,
                    -33.6855
                ]
            },
            "type": "Feature",
            "properties": {
                "site_name": "VASSE",
                "site_id": "109519"
            }
        },
        ...
        ...
    ]
}
```

## Calculating the index into the Calibrated Forecast files

Put Code here

## Create a simple map with icons for each station

Put Code here

