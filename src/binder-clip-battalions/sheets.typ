#import "primitives.typ": troopblock, unit-number, card
#import "artillery.typ": artillery, horse-arty
#import "cavalry.typ": hussars, cuirassiers, dragoons, lancers
#import "infantry.typ": infantry, elites

#let infantry-elements(
    colors
) = (
    card(unit-number(color: colors.first-brigade, 1), infantry(colors: colors)),
    card(unit-number(color: colors.first-brigade, 2), infantry(colors: colors)),
    card(unit-number(color: colors.first-brigade, 3), infantry(colors: colors)),
    card(unit-number(color: colors.first-brigade, 4), infantry(colors: colors)),
    card(unit-number(color: colors.first-brigade, 5), infantry(colors: colors)),

    card(unit-number(color: colors.second-brigade, 1), infantry(colors: colors)),
    card(unit-number(color: colors.second-brigade, 2), infantry(colors: colors)),
    card(unit-number(color: colors.second-brigade, 3), infantry(colors: colors)),
    card(unit-number(color: colors.second-brigade, 4), infantry(colors: colors)),
    card(unit-number(color: colors.second-brigade, 5), infantry(colors: colors)),

    card(unit-number(color: colors.third-brigade, 1), infantry(colors: colors)),
    card(unit-number(color: colors.third-brigade, 2), infantry(colors: colors)),
    card(unit-number(color: colors.third-brigade, 3), infantry(colors: colors)),
    card(unit-number(color: colors.third-brigade, 4), infantry(colors: colors)),
    card(unit-number(color: colors.third-brigade, 5), infantry(colors: colors)),
)

#let cavalry-elements(
    colors
) = (
    card(unit-number(color: colors.first-brigade, 1), hussars(colors: colors)),
    card(unit-number(color: colors.first-brigade, 2), hussars(colors: colors)),
    card(unit-number(color: colors.first-brigade, 3), hussars(colors: colors)),
    card(unit-number(color: colors.first-brigade, 4), hussars(colors: colors)),
    card(unit-number(color: colors.first-brigade, 1), lancers(colors: colors)),

    card(unit-number(color: colors.first-brigade, 2), lancers(colors: colors)),
    card(unit-number(color: colors.first-brigade, 3), lancers(colors: colors)),
    card(unit-number(color: colors.first-brigade, 4), lancers(colors: colors)),
    card(unit-number(color: colors.first-brigade, 1), cuirassiers(colors: colors)),
    card(unit-number(color: colors.first-brigade, 2), cuirassiers(colors: colors)),

    card(unit-number(color: colors.first-brigade, 3), cuirassiers(colors: colors)),
    card(unit-number(color: colors.first-brigade, 4), cuirassiers(colors: colors)),
    card(unit-number(color: colors.first-brigade, 1), dragoons(colors: colors)),
    card(unit-number(color: colors.first-brigade, 2), dragoons(colors: colors)),
    card(unit-number(color: colors.first-brigade, 3), dragoons(colors: colors)),
)

#let other-elements(
    colors
) = (
    card(unit-number(color: colors.fourth-brigade, 1), infantry(colors: colors)),
    card(unit-number(color: colors.fourth-brigade, 2), infantry(colors: colors)),
    card(unit-number(color: colors.fourth-brigade, 3), infantry(colors: colors)),
    card(unit-number(color: colors.fourth-brigade, 4), infantry(colors: colors)),
    card(unit-number(color: colors.fourth-brigade, 5), infantry(colors: colors)),

    card(unit-number(color: colors.first-brigade, 4), dragoons(colors: colors)),

    card(unit-number(color: colors.first-brigade, 1), artillery(colors: colors)),
    card(unit-number(color: colors.first-brigade, 2), artillery(colors: colors)),
    card(unit-number(color: colors.second-brigade, 1), artillery(colors: colors)),
    card(unit-number(color: colors.second-brigade, 2), artillery(colors: colors)),
    card(unit-number(color: colors.third-brigade, 1), artillery(colors: colors)),
    card(unit-number(color: colors.third-brigade, 2), artillery(colors: colors)),

    card(unit-number(color: colors.fourth-brigade, 1), horse-arty(colors: colors)),
    card(unit-number(color: colors.fourth-brigade, 2), horse-arty(colors: colors)),
    card(unit-number(color: colors.stroke, "E"), elites(colors: colors)),
)

#let letter-sheet(
    title: "Untitled Sheet",
    elements
) = [

    #let fallback = card(text(32pt)[??], text(32pt)[??])
    #let rcard(n) = rotate(
        90deg,
        reflow: true,
        elements.at(
            default: fallback, n
        )
    )
    #let lcard(n) = rotate(
        -90deg,
        reflow: true,
        elements.at(
            default: fallback, n
        )
    )
    #page(
        [
            = #(title) --- A-side

            #grid(
                columns: (auto, auto, auto, 1fr),
                rcard(0),  rcard(1),  rcard(2),

                grid.cell(rowspan: 5)[],
                rcard(3),  rcard(4),  rcard(5),
                rcard(6),  rcard(7),  rcard(8),
                rcard(9),  rcard(10), rcard(11),
                rcard(12), rcard(13), rcard(14),
            )
        ]
    )
    #page(
        [
            = #(title) --- B-side

            #grid(
                columns: (1fr, auto, auto, auto),
                grid.cell(rowspan: 5)[],
                lcard(2), lcard(1),  lcard(0),
                lcard(5), lcard(4),  lcard(3),
                lcard(8), lcard(7),  lcard(6),
                lcard(11),lcard(10), lcard(9),
                lcard(14),lcard(13), lcard(12),
            )
        ]
    )
]

#let a4-sheet(
    title: "Untitled Sheet",
    elements
) = [

    #let fallback = card(text(32pt)[??], text(32pt)[??])
    #let ncard(n) = elements.at(
        default: fallback, n
    )
    #page(
        [
            = #(title) --- A-side

            #grid(
                columns: (auto, auto, auto, auto, 1fr),
                ncard(0),  ncard(1),  ncard(2), ncard(3),

                grid.cell(rowspan: 5)[],
                ncard(4),  ncard(5), ncard(6),  ncard(7),
                ncard(8),  ncard(9),  ncard(10), ncard(11),
                ncard(12), ncard(13), ncard(14),
            )
        ]
    )
    #page(
        [
            = #(title) --- B-side

            #grid(
                columns: (1fr, auto, auto, auto, auto),
                grid.cell(rowspan: 5)[],
                ncard(3), ncard(2), ncard(1),  ncard(0),
                ncard(7), ncard(6), ncard(5), ncard(4),
                ncard(11),ncard(10), ncard(9), ncard(8),
                [], ncard(14), ncard(13), ncard(12),
            )
        ]
    )
]

#let letter-army(
    colors
) = [
    #letter-sheet(title: colors.name + " infantry", infantry-elements(colors))
    #letter-sheet(title: colors.name + " cavalry", cavalry-elements(colors))
    #letter-sheet(title: colors.name + " others", other-elements(colors))
]

#let a4-army(
    colors
) = [
    #a4-sheet(title: colors.name + " infantry", infantry-elements(colors))
    #a4-sheet(title: colors.name + " cavalry", cavalry-elements(colors))
    #a4-sheet(title: colors.name + " others", other-elements(colors))
]
