#import "colors.typ": color-scheme, opfor

#let troopblock(
    colors: opfor,
    side: 2cm,
    content
) = block(
    fill: colors.primary,
    stroke: 1pt + colors.stroke,
    height: side,
    width: side,
    inset: 0pt,
    content
)

#let card(
    number,
    symbol,
) = block(
    inset: 0pt,
    width: 4cm,
    height: 6cm,
    stroke: black+1pt,
    grid(
        align: center+horizon,
        columns: (1fr, 1fr),
        number, symbol
    )
)

#let unit-number(
    color: blue,
    number
) = block(
    width: 1.8cm,
    height: 1.8cm,
    align(
        center+horizon,
        text(
            weight: "black",
            color, 36pt,
            if (number == 1) {
                [Ⅰ]
            } else if (number == 2) {
                [Ⅱ]
            } else if (number == 3) {
                [Ⅲ]
            } else if (number == 4) {
                [Ⅳ]
            } else if (number == 5) {
                [Ⅴ]
            } else {
                [#number]
            }
        )
    )
)
