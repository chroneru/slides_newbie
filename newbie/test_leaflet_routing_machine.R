library(rMaps)
map = Leaflet$new()
map$setView(c(40.73846, -73.99413), 16)
map$tileLayer(provider = 'Stamen.TonerLite')

mywaypoints = list(c(40.74119, -73.9925), c(40.73573, -73.99302))

map$addAssets(css = "https://www.liedman.net/leaflet-routing-machine@latest/dist/leaflet-routing-machine.css",
              jshead = "https://www.liedman.net/leaflet-routing-machine@latest/dist/leaflet-routing-machine.js")
# map$addAssets(
#   css = "http://www.liedman.net/leaflet-routing-machine/dist/leaflet-routing-machine.css",
#   jshead = "http://www.liedman.net/leaflet-routing-machine/dist/leaflet-routing-machine.min.js"
# )

routingTemplate = "
 <script>
 var mywaypoints = %s
 L.Routing.control({
  waypoints: [
    L.latLng.apply(null, mywaypoints[0]),
    L.latLng.apply(null, mywaypoints[1])
  ]
 }).addTo(map);
 </script>"

map$setTemplate(
  afterScript = sprintf(routingTemplate, RJSONIO::toJSON(mywaypoints))
)
map$set(width = 1450, height = 800)
map
