#import "colors.typ": opfor
#import "primitives.typ": troopblock

#let infantry(
    side: 2cm,
    colors: opfor
) = troopblock(
    colors: colors,
    side: side,
    [
        #place(
            bottom+left,
            polygon(
                stroke: 0.5pt,
                fill: colors.secondary,
                (0%, 0%),
                (50%, 50%),
                (0%, 100%),
            )
        )
        #place(
            bottom+right,
            polygon(
                stroke: 0.5pt,
                fill: colors.secondary,
                (100%, 0%),
                (50%, 50%),
                (100%, 100%),
            )
        )
    ]
)

#let elites(
    side: 2cm,
    colors: opfor
) = troopblock(
    colors: colors,
    side: side,
    [
        #place(
            dy: -side/5,
            center+top,
            text(
                stroke: colors.stroke+2pt,
                colors.secondary,
                92pt,
                sym.star.filled
            )
        )
    ]
)
