#import "shared.typ": man, flag, horse, wood, unit, brown, disorder-marker

#let elephant(
    color: red,
    stroke: none,
    ele-color: gray,
) = block(
    height: 0.4in,
    width: 0.2in,
    [
        #place(center+top,
            polygon(
                fill: ele-color,
                (0pt,    3.2*unit),
                (2*unit, 3.2*unit),
                (1.5*unit, 0pt),
                (0.5*unit, 0pt),
            )
        )
        #place(
            dy: -2*unit,
            center+horizon,
            circle(
                fill: ele-color,
                radius: 3*unit,
            )
        )
        #place(
            center+bottom,
            ellipse(
                fill: ele-color,
                width: 8*unit,
                height: 10*unit,
            )
        )

        #place(
            dy: -1.5*unit,
            center+horizon,
            man(
                color: color,
                stroke: stroke
            )
        )

        #place(
            dy: 2*unit,
            center+horizon,
            man(
                color: color,
                stroke: stroke
            )
        )
    ]
)

#let elephant-general(
    color: red,
    flag-color: red,
    stroke: none,
    ele-color: gray,
    disorder: false
) = block(
    height: 0.5in,
    width: 0.5in,
    inset: unit,
    [
        #place(
            center+horizon,
            elephant(
                color: color,
                stroke: stroke,
                ele-color: ele-color
            )
        )
        #place(
            dy: 5*unit,
            dx: 3*unit,
            center+horizon,
            flag(
                scale: unit/2,
                color: flag-color,
            )
        )
        #place(
            bottom+left,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let elephantry(
    color: red,
    number-color: white,
    number-stroke: black,
    disorder: false,
    numeral: none,
) = block(
    height: 0.5in,
    width: 1in,
    [
        #place(
            center+horizon,
            grid(
                gutter: 2pt,
                columns: 4,
                elephant(color: color),
                elephant(color: color),
                elephant(color: color),
                elephant(color: color),
            )
        )
        #place(
            dy: -2*unit,
            dx: 2*unit,
            left+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 10*unit, numeral)
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let elephantry-row(
    disorder: false
) = grid(
    columns: 9,
    stroke: 1pt+black,
    elephantry(
        disorder: disorder,
        numeral: "1",
    ),
    elephantry(
        disorder: disorder,
        numeral: "2",
    ),
    elephantry(
        disorder: disorder,
        numeral: "3",
    ),
    elephantry(
        disorder: disorder,
        color: blue,
        numeral: "1",
    ),
    elephantry(
        disorder: disorder,
        color: blue,
        numeral: "2",
    ),
    elephantry(
        disorder: disorder,
        color: blue,
        numeral: "3",
    ),
    elephant-general(
        disorder: disorder,
    ),
    elephant-general(
        disorder: disorder,
        color: blue,
        flag-color: blue,
    ),
    elephant-general(
        disorder: disorder,
        color: yellow,
        stroke: black,
        flag-color: yellow,
    ),
)

#let elephantry-sheet() = grid(
    gutter: 0.5em,
    elephantry-row(),
    elephantry-row(disorder: true),
)
