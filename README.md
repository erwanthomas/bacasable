baca-sable
==========

Trucs divers, surtout pour usage personnel, mais qui, si ça vous intéresse...

css-slider
----------

x = nbre de slides
y = durée d'une transition entre deux slides
z = durée d'affichage d'une slide

alors:

t = 2y + z        (durée d'une slide)
T = x*t - (x*y)   (durée d'un cycle du slideshow)

Dn = Dn-1 + (y + z)    (délai de l'animation pour la slide n) 

-> keyframes:

α = (y * 100) / T
β = ((y+z) * 100) / T
γ = ((2y+z) * 100) / T
