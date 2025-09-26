#import "@local/LibEngage:1.0.0": meta, shapes, typography, units
#import units: inches
#import "shared.typ": man, horse, wood, unit, brown, disorder-marker
#import "ships.typ": naval-sheet
#import "modern.typ": modern-sheet
#import "small.typ": small-sheet
#import "special.typ": elephantry-sheet

#show: doc => meta.engageDoc(
    margin: 1.2cm,
    body-font: "Jost*",
    author: "japanoise",
    "Wargame Tiles",
    font-size: 10pt,
    doc
)

#let cannon(
    color: red,
    stroke: none,
    barrel-color: yellow,
) = block(
    width: 6.5*unit,
    height: 12.5*unit,
    [
        // Wheels
        #place(right+top, dx: -1*unit, dy: 2*unit, line(angle: 90deg, length: 4*unit, stroke: 1pt+brown))
        #place(left+top,  dx: 1*unit, dy: 2*unit, line(angle: 90deg, length: 4*unit, stroke: 1pt+brown))
        #place(center+top, dy: (4*unit), line(length: 4*unit, stroke: 1pt+brown))

        // Stand
        #place(center+top, dy: 2*unit, line(angle: 90deg, length: 8*unit, stroke: 3pt+brown))

        // Barrel
        #place(center+top,
            rect(width: 2pt, height: 6.2*unit, fill: barrel-color))

        // Crew
        #place(bottom+right, man(color: color, stroke: stroke))
        #place(bottom+left, man(color: color, stroke: stroke))
    ]
)

#let line-infantry(
    color: red,
    stroke: none,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = block(
    width: 1in,
    height: 0.5in,
    inset: 2*unit,
    [
        #grid(
            repeat(justify: false, man(color: color, stroke: stroke)),
            repeat(justify: false, man(color: color, stroke: stroke)),
            repeat(justify: false, man(color: color, stroke: stroke)),
            [~],
            repeat(justify: false, man(color: color, stroke: stroke)),
            repeat(justify: false, man(color: color, stroke: stroke)),
            repeat(justify: false, man(color: color, stroke: stroke)),
        )
        #place(
            dy: -unit, dx: -unit, right+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 10*unit, numeral)
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let light-infantry(
    color: red,
    stroke: none,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = block(
    width: 1in,
    height: 0.5in,
    inset: 4*unit,
    [
        #grid(
            gutter: 3*unit,
            repeat(justify: false, gap: 3*unit, man(color: color, stroke: stroke)),
            repeat(justify: false, gap: 3*unit, man(color: color, stroke: stroke)),
            repeat(justify: false, gap: 3*unit, man(color: color, stroke: stroke)),
        )
        #place(
            right+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 10*unit, numeral)
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let cavalry(
    horse-color: brown,
    color: red,
    stroke: none,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = block(
    width: 1in,
    height: 0.5in,
    inset: (x: 3*unit),
    [
        #place(center+horizon, grid(
            gutter: unit,
            repeat(justify: true, gap: 2*unit,
                horse(horse-color: horse-color, color: color, stroke: stroke)),
            repeat(justify: true, gap: 2*unit,
                horse(horse-color: horse-color, color: color, stroke: stroke)),
        ))
        #place(
            dy: -2*unit, right+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 10*unit, numeral)
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let light-cavalry(
    horse-color: brown,
    color: red,
    stroke: none,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = block(
    width: 1in,
    height: 0.5in,
    inset: (x: 7*unit),
    [
        #place(center+horizon, grid(
            gutter: unit,
            repeat(justify: true, gap: 4*unit,
                horse(horse-color: horse-color, color: color, stroke: stroke)),
            grid.cell(
                inset: (x: 5*unit),
                repeat(justify: true, gap: 4*unit,
                    horse(horse-color: horse-color, color: color, stroke: stroke))
            ),
        ))
        #place(
            dx: 4*unit,
            dy: -2*unit, right+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 10*unit, numeral)
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let arty(
    barrel-color: yellow,
    color: red,
    stroke: none,
    numeral: none,
    number-color: white,
    number-stroke: black,
    disorder: false,
) = block(
    width: 1in,
    height: 0.5in,
    inset: (x: 3*unit),
    [
        #place(center+horizon, grid(
            repeat(justify: true, gap: 2*unit,
                cannon(barrel-color: barrel-color, color: color, stroke: stroke)),
        ))
        #place(
            dy: -3*unit, right+bottom,
            text(fill: number-color, stroke: number-stroke, weight: "bold", 10*unit, numeral)
        )
        #place(
            center+horizon,
            if (disorder) { disorder-marker() } else { none }
        )
    ]
)

#let labelValue(
    range-end: 7,
    numeral,
    reverse
) = if (reverse) {
    str(range-end + 1 - numeral)
} else {
    str(numeral)
}

#let sheet(
    number-color: white,
    number-stroke: black,
    barrel-color: gray,
    horse-color: brown,
    color: red,
    stroke: none,
    disorder: false
) = grid(
    columns: 7,
    stroke: 1pt+black,
    line-infantry(color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(1, disorder)),
    line-infantry(color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(2, disorder)),
    line-infantry(color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(3, disorder)),
    line-infantry(color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(4, disorder)),
    line-infantry(color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(5, disorder)),
    line-infantry(color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(6, disorder)),
    line-infantry(color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(7, disorder)),

    light-infantry(color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(1, disorder)),
    light-infantry(color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(2, disorder)),
    light-infantry(color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(3, disorder)),
    light-infantry(color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(4, disorder)),
    light-infantry(color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(5, disorder)),
    light-infantry(color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(6, disorder)),
    light-infantry(color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(7, disorder)),

    cavalry(horse-color: horse-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(1, disorder)),
    cavalry(horse-color: horse-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(2, disorder)),
    cavalry(horse-color: horse-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(3, disorder)),
    cavalry(horse-color: horse-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(4, disorder)),
    cavalry(horse-color: horse-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(5, disorder)),
    cavalry(horse-color: horse-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(6, disorder)),
    cavalry(horse-color: horse-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(7, disorder)),

    arty(barrel-color: barrel-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(1, disorder)),
    arty(barrel-color: barrel-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(2, disorder)),
    arty(barrel-color: barrel-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(3, disorder)),
    arty(barrel-color: barrel-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(4, disorder)),
    arty(barrel-color: barrel-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(5, disorder)),
    arty(barrel-color: barrel-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(6, disorder)),
    arty(barrel-color: barrel-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(7, disorder)),
)

#let light-cav-row(
    number-color: white,
    number-stroke: black,
    barrel-color: gray,
    horse-color: brown,
    color: red,
    stroke: none,
    disorder: false
) = grid(
    columns: 7,
    stroke: 1pt+black,
    light-cavalry(horse-color: horse-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(1, disorder)),
    light-cavalry(horse-color: horse-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(2, disorder)),
    light-cavalry(horse-color: horse-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(3, disorder)),
    light-cavalry(horse-color: horse-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(4, disorder)),
    light-cavalry(horse-color: horse-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(5, disorder)),
    light-cavalry(horse-color: horse-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(6, disorder)),
    light-cavalry(horse-color: horse-color, color: color, stroke: stroke,
        number-color: number-color,
        number-stroke: number-stroke,
        disorder: disorder,
        numeral: labelValue(7, disorder)),
)

#let light-cav-sheet(disorder: false) = [
    #grid(
        columns: 1fr,
        align: center+horizon,
        gutter: 0.5em,
        light-cav-row(disorder: disorder),
        light-cav-row(disorder: disorder, horse-color: black, color: blue),
        light-cav-row(disorder: disorder, color: olive),
        light-cav-row(disorder: disorder, color: yellow,
            stroke: 0.1pt+black,
            number-color: white,
            number-stroke: blue),
        light-cav-row(disorder: disorder, color: white, stroke: 0.1pt+black,
            number-color: white,
            number-stroke: red),
        light-cav-row(disorder: disorder, color: purple),
        light-cav-row(disorder: disorder, color: orange, number-color: rgb("00ffff")),
        light-cav-row(disorder: disorder, horse-color: luma(100), color: black,
            number-color: white,
            number-stroke: red),
    )
]

#let page1(disorder: false) = [
    #sheet(disorder: disorder)
    #sheet(disorder: disorder, horse-color: black, color: blue)
    #sheet(disorder: disorder, color: olive)
    #sheet(disorder: disorder, color: yellow,
        stroke: 0.1pt+black,
        number-color: white,
        number-stroke: blue)
]

#let page2(disorder: false) = [
    #sheet(disorder: disorder, color: white, stroke: 0.1pt+black,
        number-color: white,
        number-stroke: red)
    #sheet(disorder: disorder, color: purple)
    #sheet(disorder: disorder, color: orange, number-color: rgb("00ffff"))
    #sheet(disorder: disorder, horse-color: luma(100), color: black,
        number-color: white,
        number-stroke: red)
]

#let page3() = [
    #v(1fr)
    #light-cav-sheet()
    #v(1fr)
    #light-cav-sheet(disorder: true)
    #v(1fr)
]

#let page4() = [
    #naval-sheet()
    #modern-sheet()
    #small-sheet()
]

#let page5() = [
    #naval-sheet(color: blue)
    #modern-sheet(color: wood)
    #elephantry-sheet()
]

#page1()

#pagebreak()

#page1(disorder: true)

#pagebreak()

#page2()

#pagebreak()

#page2(disorder: true)

#pagebreak()

#page3()

#pagebreak()

#page4()

#pagebreak()

#page5()
