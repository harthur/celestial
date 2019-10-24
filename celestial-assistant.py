from skyfield.api import load
from skyfield.api import Topos

planets = load('de421.bsp')
earth, mars = planets['earth'], planets['mars']

ts = load.timescale()
t = ts.now()
astrometric = earth.at(t).observe(mars)
ra, dec, distance = astrometric.radec()

print("Distance of earth and mars", distance)
