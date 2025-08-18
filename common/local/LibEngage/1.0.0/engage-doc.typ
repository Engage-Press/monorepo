#let defaultColors = (white, white, silver, silver)
#let fourRowColors = (white, white, silver, white)
#let sixRowColors = (white, white, white, silver, silver)

#let repeatingStripesFill(tcolors, y) = {
    tcolors.at(calc.rem(y, tcolors.len()))
}

#let engageDoc(
    paper-size: "us-letter",
    body-font: "Alegreya",
    heading-font: "Alegreya Sans",
    number-type: "lining",
    author: "japanoise",
    margin: 2cm,
    font-size: 10pt,
    title,
    doc,
) = {
    set text(font: body-font, number-type: number-type, font-size)
    show heading: set text(font: heading-font)

    set document(
        title: title,
        author: author,
    )

    set page(
        paper: paper-size,
        margin: margin,
    )

    set table(
        gutter: auto,
        inset: (x: 3pt, y: 3.7pt),
        fill: (_, y) => repeatingStripesFill(defaultColors, y),
        stroke: (x, y) => (
            x: 1pt,
            top: if y <= 1 { 1pt } else { 0pt },
            bottom: 1pt
        ),
    )
    set table.hline(stroke: 1pt)
    show table.cell.where(y: 0): strong

    doc
}
