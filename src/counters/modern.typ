#import "shared.typ": unit, brown, wood, disorder-marker

#let tire-color = rgb("#444")

#let tank(
    color: olive,
    stroke: black,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = block(
    height: 0.5in,
    width: 0.5in,
    [
        #place(
            dx: 3.5*unit,
            center+horizon,
            rect(
                fill: color,
                stroke: stroke,
                width: 2pt,
                height: 14*unit,
            )
        )
        #place(
            dx: -3.5*unit,
            center+horizon,
            rect(
                fill: color,
                stroke: stroke,
                width: 2pt,
                height: 14*unit,
            )
        )
        #place(
            center+horizon,
            rect(
                fill: color,
                stroke: stroke,
                width: 8*unit,
                height: 12*unit,
            )
        )
        #place(
            dy: -5.5*unit,
            center+horizon,
            rect(
                fill: color,
                stroke: stroke,
                width: unit,
                height: 6.5*unit,
            )
        )
        #place(
            center+horizon,
            circle(
                fill: color,
                stroke: stroke,
                radius: 3*unit,
            )
        )
        #place(
            center+horizon,
            circle(
                fill: color,
                stroke: stroke,
                radius: 1.2*unit,
            )
        )
        #place(
            dx: unit,
            dy: -3*unit,
            left+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 9*unit, numeral)
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let apc(
    color: olive,
    stroke: black,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = block(
    height: 0.5in,
    width: 0.5in,
    [
        #place(
            dx: 3.5*unit,
            center+horizon,
            rect(
                fill: color,
                stroke: stroke,
                width: 2pt,
                height: 14*unit,
            )
        )
        #place(
            dx: -3.5*unit,
            center+horizon,
            rect(
                fill: color,
                stroke: stroke,
                width: 2pt,
                height: 14*unit,
            )
        )
        #place(
            center+horizon,
            rect(
                fill: color,
                stroke: stroke,
                width: 8*unit,
                height: 12*unit,
            )
        )

        #place(
            dy: unit,
            center+horizon,
            rect(
                fill: color,
                stroke: stroke,
                width: 5*unit,
                height: 6*unit,
            )
        )
        #place(
            dy: -4*unit,
            center+horizon,
            line(
                stroke: stroke,
                length: 4*unit,
            )
        )
        #place(
            dx: -1.3*unit,
            dy: unit,
            center+horizon,
            line(
                angle: 90deg,
                stroke: stroke,
                length: 6*unit,
            )
        )
        #place(
            dx: 1.3*unit,
            dy: unit,
            center+horizon,
            line(
                angle: 90deg,
                stroke: stroke,
                length: 6*unit,
            )
        )
        #place(
            dy: unit,
            center+horizon,
            line(
                angle: 90deg,
                stroke: stroke,
                length: 6*unit,
            )
        )
        #place(
            dx: unit,
            dy: -3*unit,
            left+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 9*unit, numeral)
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let plane(
    color: olive,
    stroke: black,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = block(
    height: 0.5in,
    width: 0.5in,
    [
        #place(
            center+horizon,
            polygon(
                stroke: stroke,
                fill: color,
                (40%, 0pt),
                (80%, 6*unit),
                (0pt, 6*unit),
            )
        )
        #place(
            dy: -2*unit,
            center+bottom,
            polygon(
                stroke: stroke,
                fill: color,
                (0pt, 4*unit),
                (10*unit, 4*unit),
                (5*unit, 0pt),
            )
        )

        #place(
            center+horizon,
            ellipse(
                stroke: stroke,
                fill: color,
                width: 5*unit,
                height: 14*unit,
            )
        )

        #place(
            dy: -4.8*unit,
            center+horizon,
            curve(
                fill: black,
                curve.move((0pt, 1.5*unit)),
                curve.line((3*unit, 1.5*unit)),
                curve.cubic(none, (2.8*unit, 0pt), (1.5*unit, 0pt)),
                curve.close(),
            )
        )

        #place(
            dy: -2*unit,
            center+bottom,
            rect(
                stroke: stroke,
                fill: color,
                width: unit,
                height: 4*unit,
            )
        )

        #place(
            dx: unit,
            dy: -3*unit,
            left+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 9*unit, numeral)
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let recon(
    color: olive,
    stroke: black,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = block(
    height: 0.5in,
    width: 0.5in,
    [
        #place(
            dy: -3*unit,
            dx: 4*unit,
            center+horizon,
            rect(
                radius: 0.5*unit,
                fill: tire-color,
                width: 2*unit,
                height: 3*unit,
            )
        )
        #place(
            dy: 3*unit,
            dx: 4*unit,
            center+horizon,
            rect(
                radius: 0.5*unit,
                fill: tire-color,
                width: 2*unit,
                height: 3*unit,
            )
        )
        #place(
            dy: 3*unit,
            dx: -4*unit,
            center+horizon,
            rect(
                radius: 0.5*unit,
                fill: tire-color,
                width: 2*unit,
                height: 3*unit,
            )
        )
        #place(
            dy: -3*unit,
            dx: -4*unit,
            center+horizon,
            rect(
                radius: 0.5*unit,
                fill: tire-color,
                width: 2*unit,
                height: 3*unit,
            )
        )
        #place(
            center+horizon,
            rect(
                radius: 1.5*unit,
                fill: color,
                stroke: stroke,
                width: 6*unit,
                height: 12*unit,
            )
        )
        #place(
            dy: -4*unit,
            center+horizon,
            line(
                stroke: stroke,
                length: 3*unit,
            )
        )
        #place(
            dy: -1*unit,
            center+horizon,
            line(
                angle: 90deg,
                stroke: stroke,
                length: 3*unit,
            )
        )
        #place(
            dy: 1.5*unit,
            center+horizon,
            circle(
                fill: color,
                stroke: stroke,
                radius: 1.5*unit,
            )
        )
        #place(
            dx: unit,
            dy: -3*unit,
            left+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 9*unit, numeral)
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let inf1(
    color: olive,
    stroke: black,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = block(
    height: 0.5in,
    width: 0.5in,
    inset: 4*unit,
    [
        #place(
            right+bottom,
            circle(
                stroke: stroke,
                fill: color,
                radius: unit,
            )
        )
        #place(
            left+bottom,
            circle(
                stroke: stroke,
                fill: color,
                radius: unit,
            )
        )
        #place(
            center+bottom,
            circle(
                stroke: stroke,
                fill: color,
                radius: unit,
            )
        )
        #place(
            dy: 3*unit,
            top+center,
            circle(
                stroke: stroke,
                fill: color,
                radius: unit,
            )
        )
        #place(
            dy: -unit,
            dx: -2*unit,
            left+top,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 9*unit, numeral)
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let inf2(
    color: olive,
    stroke: black,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = block(
    height: 0.5in,
    width: 0.5in,
    [
        #place(
            dy: 4*unit,
            center+top,
            ellipse(
                stroke: 1pt+black,
                height: 4*unit,
                width: 5*unit,
                place(
                    center+horizon,
                    circle(
                        radius: unit,
                        fill: color,
                        stroke: stroke,
                    )
                )
            )
        )
        #place(
            dx: 2*unit,
            dy: -4*unit,
            left+bottom,
            ellipse(
                stroke: 1pt+black,
                height: 4*unit,
                width: 5*unit,
                place(
                    center+horizon,
                    circle(
                        radius: unit,
                        fill: color,
                        stroke: stroke,
                    )
                )
            )
        )
        #place(
            dx: -3*unit,
            dy: -4*unit,
            right+bottom,
            ellipse(
                stroke: 1pt+black,
                height: 4*unit,
                width: 5*unit,
                place(
                    center+horizon,
                    circle(
                        radius: unit,
                        fill: color,
                        stroke: stroke,
                    )
                )
            )
        )
        #place(
            dy: 1.4*unit,
            dx: unit,
            left+top,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 9*unit, numeral)
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let modern-row(
    color: olive,
    stroke: black,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = grid(
    stroke: 1pt,
    columns: 15,
    tank(
        color: color,
        stroke: stroke,
        numeral: "1",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),
    tank(
        color: color,
        stroke: stroke,
        numeral: "2",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),

    apc(
        color: color,
        stroke: stroke,
        numeral: "1",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),
    apc(
        color: color,
        stroke: stroke,
        numeral: "2",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),

    plane(
        color: color,
        stroke: stroke,
        numeral: "1",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),
    plane(
        color: color,
        stroke: stroke,
        numeral: "2",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),

    recon(
        color: color,
        stroke: stroke,
        numeral: "1",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),
    recon(
        color: color,
        stroke: stroke,
        numeral: "2",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),
    recon(
        color: color,
        stroke: stroke,
        numeral: "3",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),

    inf1(
        color: color,
        stroke: stroke,
        numeral: "1",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),
    inf1(
        color: color,
        stroke: stroke,
        numeral: "2",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),
    inf1(
        color: color,
        stroke: stroke,
        numeral: "3",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),

    inf2(
        color: color,
        stroke: stroke,
        numeral: "1",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),
    inf2(
        color: color,
        stroke: stroke,
        numeral: "2",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),
    inf2(
        color: color,
        stroke: stroke,
        numeral: "3",
        number-color: white,
        number-stroke: black,
        disorder: disorder,
    ),
)


#let modern-sheet(
    color: olive,
    stroke: black,
    number-color: white,
    number-stroke: black,
) = grid(
    gutter: 0.5em,
    modern-row(
        color: color,
        stroke: stroke,
        number-color: white,
        number-stroke: black,
        disorder: false,
    ),
    modern-row(
        color: color,
        stroke: stroke,
        number-color: white,
        number-stroke: black,
        disorder: true,
    ),
)
