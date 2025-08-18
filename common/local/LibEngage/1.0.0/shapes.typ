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
