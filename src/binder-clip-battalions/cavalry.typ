#import "colors.typ": color-scheme, opfor
#import "primitives.typ": troopblock

#let hussars(
    side: 2cm,
    colors: opfor
) = troopblock(
    colors: colors,
    side: side,
    polygon(
        fill: colors.secondary,
        stroke: 0.5pt,
        (0%, 100%),
        (100%, 100%),
        (100%, 0%),
    )
)

#let lancers(
    side: 2cm,
    colors: opfor
) = troopblock(
    colors: colors,
    side: side,
)[
    #let fh = 3*side/4
    #let fw = side/4
    #let sw = side/16
    #let fth = side/4
    #place(
        dx: side/5,
        dy: side/8,
        top+left,
        polygon(
            fill: colors.stroke,
            (0pt, 0pt),
            (0pt, fh),
            (sw, fh),
            (sw, fth),
            (sw+fw, fth/2),
        )
    )
    #polygon(
        fill: colors.secondary,
        stroke: 0.5pt,
        (0%, 100%),
        (100%, 100%),
        (100%, 0%),
    )
]

#let dragoons(
    side: 2cm,
    colors: opfor
) = troopblock(
    colors: colors,
    side: side,
    [
        #polygon(
            stroke: 0.5pt,
            fill: colors.stripe,
            (0%, 100%),
            (100%, 100%),
            (100%, 0%),
        )
        #place(
            bottom+right,
            polygon(
                fill: colors.secondary,
                stroke: 0.5pt,
                (20%, 100%),
                (100%, 100%),
                (100%, 20%),
            )
        )
    ]
)

#let cuirassiers(
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
                (0%, 80%),
                (0%, 100%),
                (100%, 100%),
                (100%, 0%),
                (80%, 0%),
            )
        )
        #polygon(
            stroke: 0.5pt,
            fill: colors.stripe,
            (0%, 100%),
            (100%, 100%),
            (100%, 0%),
        )
        #place(
            bottom+right,
            polygon(
                fill: colors.primary,
                stroke: 0.5pt,
                (20%, 100%),
                (100%, 100%),
                (100%, 20%),
            )
        )
    ]
)
