#let unit = 0.025in
#let wood = rgb("#ddbb94")
#let brown = rgb("#664c28")

#let disorder-marker() = block()[
    #circle(
        fill: yellow,
        stroke: 1pt+black,
        radius: 4*unit
    )
    #place(dy: -unit, center+bottom, circle(fill: black, radius: unit))
    #place(dy: unit, center+top,
        polygon(fill: black,
            (0pt, 0pt),
            (2*unit, 0pt),
            (1.5*unit, 3.2*unit),
            (0.5*unit, 3.2*unit),
        ))
]

#let man(color: red, stroke: none) = circle(
    fill: color, stroke: stroke, radius: unit
)

#let horse(color: red, horse-color: brown, stroke: none) = block(
    width: 2.3*unit, height: 8*unit,
    [
        #place(center+horizon,
            ellipse(fill: horse-color, width: 100%, height: 100%))
        #place(center+horizon, man(color: color, stroke: stroke))
    ]
)

#let flag(
    color: red,
    scale: unit,
) = curve(
    fill: color,
    stroke: color,
    curve.move(
        (0pt, 0pt)
    ),
    curve.line(
        (8*scale, 0pt)
    ),
    curve.cubic(
        (10*scale, 2*scale),
        (6*scale, 6*scale),
        (8*scale, 8*scale)),
    curve.line(
        (4*scale, 8*scale)
    ),
    curve.cubic(
        (2*scale, 6*scale),
        (6*scale, 2*scale),
        (4*scale, 0*scale)
    ),
)
