#let arrow(
    fill: none,
    stroke: 1pt+black,
    headWidth,
    headHeight,
    shaftWidth,
    shaftHeight
) = {
    let arCenter = headWidth / 2
    let shaftAncLeft = (headWidth - shaftWidth)/2
    let shaftAncRight = shaftAncLeft + shaftWidth
    let arBottom = headHeight + shaftHeight

    curve(
        fill: fill,
        stroke: stroke,
        curve.move((arCenter, 0pt)),
        curve.line((0pt, headHeight)),
        curve.line((shaftAncLeft, headHeight)),
        curve.line((shaftAncLeft, arBottom)),
        curve.line((shaftAncRight, arBottom)),
        curve.line((shaftAncRight, headHeight)),
        curve.line((headWidth, headHeight)),
        curve.line((arCenter, 0pt)),
    )
}

#let ship(
    fill: gray,
    stroke: 1pt+black,
    gauge: 4
) = block()[
    #let shipScale(x, y) = {
        return (x/gauge, y/gauge);
    }
    #let sailPos = 20pt / gauge
    #curve(
        fill: fill,
        stroke: stroke,
        curve.move(shipScale(0pt, 10pt)),
        curve.cubic(none, shipScale(15pt, 3pt), shipScale(40pt, 0pt)),
        curve.line(shipScale(70pt, 0pt)),
        curve.cubic(none, shipScale(100pt, -2pt), shipScale(100pt, 10pt)),
        curve.cubic(shipScale(100pt, 22pt), none, shipScale(70pt, 20pt)),
        curve.line(shipScale(40pt, 20pt)),
        curve.cubic(shipScale(15pt, 17pt), none, shipScale(0pt, 10pt)),
    )
    #place(center+horizon, line(
        stroke: stroke, angle: 90deg, length: sailPos))
    #place(center+horizon, dx: sailPos, line(
        stroke: stroke, angle: 90deg, length: sailPos))
    #place(center+horizon, dx: -sailPos, line(
        stroke: stroke, angle: 90deg, length: sailPos))
]

#let dice(
    stroke: black+1pt,
    fill: white,
    pips: black,
    size: 4em,
    sides
) = {

    let pipsize = size/10

    let topleft = if (sides == 1) {
        none
    } else {
        pips
    }

    // Not used
    let topcenter = none

    let topright = if (sides == 6 or sides == 4 or sides == 5) {
        pips
    } else {
        none
    }

    let centerleft = if (sides == 6) {
        pips
    } else {
        none
    }

    let centerpip = if (sides == 2 or sides == 4 or sides == 6) {
        none
    } else {
        pips
    }

    let centerright = if (sides == 6) {
        pips
    } else {
        none
    }

    let botleft = if (sides == 6 or sides == 4 or sides == 5) {
        pips
    } else {
        none
    }

    // Not used
    let botcenter = none

    let botright = if (sides == 1) {
        none
    } else {
        pips
    }

    block(
        [
            // Dice body
            #square(
                size: size,
                stroke: stroke,
                fill: fill,
                radius: size/8,
            )

            // Center pip
            #place(
                center+horizon,
                circle(
                    stroke: none,
                    fill: centerpip,
                    radius: pipsize
                )
            )

            // top center pip
            #place(
                dy: pipsize,
                center+top,
                circle(
                    stroke: none,
                    fill: topcenter,
                    radius: pipsize
                )
            )

            // bottom center pip
            #place(
                dy: -pipsize,
                center+bottom,
                circle(
                    stroke: none,
                    fill: botcenter,
                    radius: pipsize
                )
            )

            // top left
            #place(
                dx: pipsize,
                dy: pipsize,
                left+top,
                circle(
                    stroke: none,
                    fill: topleft,
                    radius: pipsize
                )
            )

            // center left
            #place(
                dx: pipsize,
                left+horizon,
                circle(
                    stroke: none,
                    fill: centerleft,
                    radius: pipsize
                )
            )

            // bottom left
            #place(
                dx: pipsize,
                dy: -pipsize,
                left+bottom,
                circle(
                    stroke: none,
                    fill: botleft,
                    radius: pipsize
                )
            )

            // top right
            #place(
                dx: -pipsize,
                dy: pipsize,
                right+top,
                circle(
                    stroke: none,
                    fill: topright,
                    radius: pipsize
                )
            )

            // center right
            #place(
                dx: -pipsize,
                right+horizon,
                circle(
                    stroke: none,
                    fill: centerright,
                    radius: pipsize
                )
            )

            // bottom right
            #place(
                dx: -pipsize,
                dy: -pipsize,
                right+bottom,
                circle(
                    stroke: none,
                    fill: botright,
                    radius: pipsize
                )
            )
        ]
    )
}
