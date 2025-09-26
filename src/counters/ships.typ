#import "shared.typ": unit, flag, brown, wood, disorder-marker

#let three-mast-ship(
    color: red,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = block(
    height: 1in,
    width: 0.5in,
    inset: (x: 3*unit),
    [
        #place(
            dy: 0.05in,
            center+top,
            polygon(fill: brown,
                (0pt, 4*unit),
                (2*unit, 4*unit),
                (1.5*unit, 0pt),
                (0.5*unit, 0pt),
            )
        )
        #place(
            dy: -0.05in,
            center+bottom,
            ellipse(
                stroke: brown+1pt,
                fill: wood,
                width: 75%,
                height: 0.8in,
            )
        )
        #place(
            dy: -3*unit, left+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 10*unit, numeral)
        )
        #place(
            dy: -6*unit,
            center+horizon,
            circle(
                radius: unit,
                fill: brown,
            )
        )
        #place(
            dy: 2*unit,
            center+horizon,
            circle(
                radius: unit,
                fill: brown,
            )
        )
        #place(
            dy: 10*unit,
            center+horizon,
            circle(
                radius: unit,
                fill: brown,
            )
        )
        #place(
            dy: -1pt,
            right+bottom,
            flag(
                color: color,
                scale: unit*0.75,
            )
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let two-mast-ship(
    color: red,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = block(
    height: 1in,
    width: 0.5in,
    inset: (x: 3*unit),
    [
        #place(
            dy: 0.05in,
            center+top,
            polygon(fill: brown,
                (0pt, 4*unit),
                (2*unit, 4*unit),
                (1.5*unit, 0pt),
                (0.5*unit, 0pt),
            )
        )
        #place(
            center+horizon,
            ellipse(
                stroke: brown+1pt,
                fill: wood,
                width: 65%,
                height: 0.7in,
            )
        )
        #place(
            dy: -3*unit, left+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 10*unit, numeral)
        )
        #place(
            dy: -4*unit,
            center+horizon,
            circle(
                radius: unit,
                fill: brown,
            )
        )
        #place(
            dy: 4*unit,
            center+horizon,
            circle(
                radius: unit,
                fill: brown,
            )
        )
        #place(
            dy: -3pt,
            right+bottom,
            flag(
                color: color,
                scale: unit*0.75,
            )
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let one-mast-ship(
    color: red,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = block(
    height: 1in,
    width: 0.5in,
    inset: (x: 3*unit),
    [
        #place(
            dy: 0.15in,
            center+top,
            polygon(fill: brown,
                (0pt, 4*unit),
                (2*unit, 4*unit),
                (1.5*unit, 0pt),
                (0.5*unit, 0pt),
            )
        )
        #place(
            center+horizon,
            ellipse(
                stroke: brown+1pt,
                fill: wood,
                width: 50%,
                height: 0.5in,
            )
        )
        #place(
            dy: -3*unit, left+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 10*unit, numeral)
        )
        #place(
            center+horizon,
            circle(
                radius: unit,
                fill: brown,
            )
        )
        #place(
            dy: 2em,
            right+horizon,
            flag(
                color: color,
                scale: unit*0.75,
            )
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let ship-sheet(
    color: red,
    stroke: none,
    disorder: false
) = grid(
    columns: 12,
    stroke: 1pt+black,
    three-mast-ship(
        color: color,
        disorder: disorder,
        numeral: "1",
    ),
    two-mast-ship(
        color: color,
        disorder: disorder,
        numeral: "1",
    ),
    one-mast-ship(
        color: color,
        disorder: disorder,
        numeral: "1",
    ),
    three-mast-ship(
        color: color,
        disorder: disorder,
        numeral: "2",
    ),
    two-mast-ship(
        color: color,
        disorder: disorder,
        numeral: "2",
    ),
    one-mast-ship(
        color: color,
        disorder: disorder,
        numeral: "2",
    ),
    three-mast-ship(
        color: color,
        disorder: disorder,
        numeral: "3"
    ),
    two-mast-ship(
        color: color,
        disorder: disorder,
        numeral: "3"
    ),
    one-mast-ship(
        color: color,
        disorder: disorder,
        numeral: "3"
    ),
    three-mast-ship(
        color: color,
        disorder: disorder,
        numeral: "4"
    ),
    two-mast-ship(
        color: color,
        disorder: disorder,
        numeral: "4"
    ),
    one-mast-ship(
        color: color,
        disorder: disorder,
        numeral: "4"
    ),
)

#let squadron1(
    color: red,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false
) = block(
    height: 1in,
    width: 1in,
    inset: 3*unit,
    [
        #place(
            top+center,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 4*unit,
                height: 12*unit,
                place(
                    center+horizon,
                    circle(
                        fill: brown,
                        radius: unit,
                    )
                )
            )
        )
        #place(
            dy: -1em,
            bottom+center,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 4*unit,
                height: 12*unit,
                place(
                    center+horizon,
                    circle(
                        fill: brown,
                        radius: unit,
                    )
                )
            )
        )
        #place(
            dy: -1em,
            left+horizon,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 4*unit,
                height: 12*unit,
                place(
                    center+horizon,
                    circle(
                        fill: brown,
                        radius: unit,
                    )
                )
            )
        )
        #place(
            dy: -1em,
            right+horizon,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 4*unit,
                height: 12*unit,
                place(
                    center+horizon,
                    circle(
                        fill: brown,
                        radius: unit,
                    )
                )
            )
        )
        #place(
            left+bottom,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 4*unit,
                height: 12*unit,
                place(
                    center+horizon,
                    circle(
                        fill: brown,
                        radius: unit,
                    )
                )
            )
        )
        #place(
            right+bottom,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 4*unit,
                height: 12*unit,
                place(
                    center+horizon,
                    circle(
                        fill: brown,
                        radius: unit,
                    )
                )
            )
        )
        #place(
            dx: 4pt,
            dy: 1.8em,
            center+top,
            flag(
                color: color,
                scale: unit/2,
            )
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
        #place(
            left+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 10*unit, numeral)
        )
    ]
)

#let squadron2(
    color: red,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false
) = block(
    height: 1in,
    width: 1in,
    inset: 3*unit,
    [
        #place(
            top+center,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 6*unit,
                height: 15*unit,
            )
        )
        #place(
            bottom+center,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 6*unit,
                height: 15*unit,
            )
        )
        #place(
            left+horizon,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 6*unit,
                height: 15*unit,
            )
        )
        #place(
            right+horizon,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 6*unit,
                height: 15*unit,
            )
        )
        #place(
            dy: -2*unit,
            dx: -2*unit,
            right+horizon,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dy: 2*unit,
            dx: -2*unit,
            right+horizon,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dy: -4.5*unit,
            center+bottom,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dy: -8.5*unit,
            center+bottom,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dy: 4.5*unit,
            center+top,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dy: 8.5*unit,
            center+top,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dy: -2*unit,
            dx: 2*unit,
            left+horizon,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dy: 2*unit,
            dx: 2*unit,
            left+horizon,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dx: 4pt,
            dy: 2.5em,
            center+top,
            flag(
                color: color,
                scale: unit/2,
            )
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
        #place(
            left+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 10*unit, numeral)
        )
    ]
)

#let squadron3(
    color: red,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false
) = block(
    height: 1in,
    width: 1in,
    inset: 3*unit,
    [
        #place(
            top+center,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 6*unit,
                height: 20*unit,
                place(
                    center+horizon,
                    circle(
                        fill: brown,
                        radius: unit,
                    )
                )
            )
        )
        #place(
            left+bottom,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 6*unit,
                height: 20*unit,
                place(
                    center+horizon,
                    circle(
                        fill: brown,
                        radius: unit,
                    )
                )
            )
        )
        #place(
            right+bottom,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 6*unit,
                height: 20*unit,
                place(
                    center+horizon,
                    circle(
                        fill: brown,
                        radius: unit,
                    )
                )
            )
        )
        #place(
            dy: -4*unit,
            dx: -2*unit,
            right+bottom,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dy: -14*unit,
            dx: -2*unit,
            right+bottom,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dy: -4*unit,
            dx: 2*unit,
            left+bottom,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dy: 14*unit,
            top+center,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dy: 4*unit,
            top+center,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dy: -14*unit,
            dx: 2*unit,
            left+bottom,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dx: 4pt,
            dy: 3.4em,
            center+top,
            flag(
                color: color,
                scale: unit/2,
            )
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
        #place(
            left+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 10*unit, numeral)
        )
    ]
)

#let landers(
    color: red,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false
) = block(
    height: 1in,
    width: 1in,
    inset: 3*unit,
    [
        #place(
            dx: 8*unit,
            left+horizon,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 6*unit,
                height: 15*unit,
            )
        )
        #place(
            dy: 3*unit,
            dx: 10*unit,
            left+horizon,
            rect(
                fill: black,
                height: 4*unit,
                width: 2*unit,
            )
        )
        #place(
            dx: -8*unit,
            right+horizon,
            ellipse(
                fill: wood,
                stroke: brown,
                width: 6*unit,
                height: 15*unit,
            )
        )
        #place(
            dy: 3*unit,
            dx: -10*unit,
            right+horizon,
            rect(
                fill: black,
                height: 4*unit,
                width: 2*unit,
            )
        )
        #place(
            dy: -2*unit,
            dx: -10*unit,
            right+horizon,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dy: -2*unit,
            dx: 10*unit,
            left+horizon,
            circle(
                fill: brown,
                radius: unit,
            )
        )
        #place(
            dx: -6*unit,
            dy: -6*unit,
            right+bottom,
            flag(
                color: color,
                scale: unit/2,
            )
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
        #place(
            left+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 10*unit, numeral)
        )
    ]
)

#let squadron-sheet(
    color: red,
    number-color: white,
    number-stroke: black,
    disorder: false
) = grid(
    columns: 6,
    stroke: 1pt+black,
    squadron1(
        color: color,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: "1"
    ),
    squadron1(
        color: color,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: "2"
    ),
    squadron1(
        color: color,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: "3"
    ),
    squadron2(
        color: color,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: "1"
    ),
    squadron2(
        color: color,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: "2"
    ),
    squadron2(
        color: color,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: "3"
    ),


    squadron3(
        color: color,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: "1"
    ),
    squadron3(
        color: color,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: "2"
    ),
    squadron3(
        color: color,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: "3"
    ),
    landers(
        color: color,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: "1"
    ),
    landers(
        color: color,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: "2"
    ),
    landers(
        color: color,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: "3"
    ),
)

#let naval-sheet(
    color: red,
    number-color: white,
    number-stroke: black,
) = grid(
    gutter: 0.5em,
    columns: 4,
    rotate(90deg, reflow: true,
        ship-sheet(color: color)),
    rotate(90deg, reflow: true,
        ship-sheet(color: color, disorder: true)),
    rotate(90deg, reflow: true,
        squadron-sheet(color: color)),
    rotate(90deg, reflow: true,
        squadron-sheet(color: color, disorder: true)),
)
