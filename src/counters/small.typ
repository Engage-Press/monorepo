#import "shared.typ": man, flag, horse, wood, unit, brown, disorder-marker

#let general(
    horse-color: brown,
    color: red,
    stroke: none,
    flag-color: red,
    disorder: false,
) = block(
    height: 0.5in,
    width: 0.5in,
    inset: unit,
    [
        #place(
            center+horizon,
            horse(horse-color: horse-color, color: color, stroke: stroke)
        )
        #place(
            dx: -5*unit,
            center+horizon,
            man(color: color, stroke: stroke)
        )
        #place(
            dx: -5*unit,
            dy: -2*unit,
            center+horizon,
            polygon(
                fill: yellow,
                (0pt, 0pt),
                (2*unit, 0pt),
                (1*unit, 2*unit),
            )
        )
        #place(
            dx: 5*unit,
            center+horizon,
            man(color: color, stroke: stroke)
        )
        #place(
            dy: 3*unit,
            dx: 5*unit,
            center+horizon,
            rotate(
                45deg,
                reflow: true,
                flag(scale: unit/2, color: flag-color)
            )
        )

        #place(
            left+bottom,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let supply-truck(
    color: red,
    disorder: false,
) = block(
    height: 0.5in,
    width: 0.5in,
    inset: unit,
    [
        #place(
            dx: -2*unit,
            dy: 2*unit,
            center+top,
            line(
                length: 12*unit,
                angle: 90deg,
                stroke: 2pt+brown,
            )
        )

        #place(
            dx: 2*unit,
            dy: 2*unit,
            center+top,
            line(
                length: 12*unit,
                angle: 90deg,
                stroke: 2pt+brown,
            )
        )

        #place(
            dx: 4*unit,
            dy: -2*unit,
            center+horizon,
            line(
                length: 4*unit,
                angle: 90deg,
                stroke: 2pt+brown,
            )
        )

        #place(
            dx: -4*unit,
            dy: 4*unit,
            center+horizon,
            line(
                length: 4*unit,
                angle: 90deg,
                stroke: 2pt+brown,
            )
        )

        #place(
            dx: -4*unit,
            dy: -2*unit,
            center+horizon,
            line(
                length: 4*unit,
                angle: 90deg,
                stroke: 2pt+brown,
            )
        )

        #place(
            dx: 4*unit,
            dy: 4*unit,
            center+horizon,
            line(
                length: 4*unit,
                angle: 90deg,
                stroke: 2pt+brown,
            )
        )

        #place(
            center+horizon,
            dy: unit,
            rect(
                height: 8*unit,
                width: 6*unit,
                fill: wood,
                stroke: brown,
            )
        )

        #place(
            dy: unit,
            center+horizon,
            rect(
                height: 4*unit,
                width: 3*unit,
                fill: color,
                stroke: brown,
            )
        )

        #place(
            left+bottom,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let small-row(
    disorder: false,
) = grid(
    stroke: 1pt,
    columns: 15,
    general(disorder: disorder),
    general(color: blue, flag-color: blue, horse-color: black, disorder: disorder),
    general(color: olive, flag-color: olive, disorder: disorder),
    general(stroke: black, color: yellow, flag-color: yellow, disorder: disorder),
    general(stroke: black, color: white, flag-color: gray, disorder: disorder),
    general(color: purple, flag-color: purple, disorder: disorder),
    general(color: orange, flag-color: orange, disorder: disorder),
    general(color: black, flag-color: black, disorder: disorder),
    supply-truck(disorder: disorder),
    supply-truck(disorder: disorder),
    supply-truck(disorder: disorder),
    supply-truck(color: blue, disorder: disorder),
    supply-truck(color: blue, disorder: disorder),
    supply-truck(color: blue, disorder: disorder),
)

#let small-sheet() = grid(
    gutter: 0.5em,
    small-row(),
    small-row(disorder: true),
)
