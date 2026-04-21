#import "colors.typ": opfor
#import "primitives.typ": troopblock

#let artillery(
    side: 2cm,
    colors: opfor
) = troopblock(
    colors: colors,
    side: side,
    [
        #place(
            center+horizon,
            circle(
                fill: colors.stroke,
                radius: side/6
            )
        )
    ]
)

#let horse-arty(
    side: 2cm,
    colors: opfor
) = troopblock(
    colors: colors,
    side: side,
    [
        #place(
            bottom+right,
            polygon(
                stroke: 0.5pt,
                fill: colors.secondary,
                (100%, 0%),
                (0%, 100%),
                (100%, 100%),
            )
        )
        #place(
            center+horizon,
            circle(
                fill: colors.stroke,
                radius: side/6
            )
        )
    ]
)
