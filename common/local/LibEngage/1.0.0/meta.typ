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

#let engageBook(
    paper-size: "us-statement",
    body-font: "Alegreya",
    heading-font: "Alegreya Sans",
    number-type: "lining",
    author: "japanoise",
    margin: 2cm,
    font-size: 10pt,
    cover: none,
    title-page: none,
    show-toc: true,
    first-page: 2,
    toc-extra: [],
    title,
    doc,
) = {
    // Generate a shitty placeholder cover if none provided
    let actual-cover = if (cover == none) [
        #place(
            left+top,
            dy: 1em,
            text(font: heading-font, 32pt, title)
        )
        #place(
            right+bottom,
            dy: -1em,
            text(font: heading-font, 16pt, author)
        )
    ] else { cover }

    // Show the title page, if provided
    let actual-title-page = if (title-page == none) [
    ] else [
        #pagebreak()
        #title-page
        #pagebreak()
    ]

    let toc-page = if (show-toc) [
        #columns(2)[
            #outline()
            #toc-extra
        ]
        #pagebreak()
    ] else []

    engageDoc(
        paper-size: paper-size,
        body-font: body-font,
        heading-font: heading-font,
        number-type: number-type,
        author: author,
        margin: margin,
        font-size: font-size,
        title,
        [
            #actual-cover
            #pagebreak()

            #actual-title-page
            #pagebreak()

            #toc-page
            #counter(page).update(first-page)

            #set page(
                footer: context {
                    if (calc.rem(counter(page).get().first(), 2) == 0) [
                        #counter(page).display(
                            "1"
                        )
                        #h(1fr)
                    ] else [
                        #h(1fr)
                        #counter(page).display(
                            "1"
                        )
                    ]
                }
            )

            #doc
        ]
    )
}
