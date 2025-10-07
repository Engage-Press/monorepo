#import "@local/LibEngage:1.0.0": meta, shapes, typography, units
#import shapes: dice, arrow
#import meta: repeatingStripesFill

#set page(
    paper: "us-letter",
    flipped: true,
    margin: 2cm,
)

#set table(
    gutter: auto,
    fill: (_, y) => repeatingStripesFill(
        (
            white,
            white,
            white,
            silver,
            silver
        ),
        y
    ),
    inset: (x: 3pt, y: 3.7pt),
    stroke: (x, y) => (
        x: 1pt,
        top: if y <= 1 { 1pt } else { 0pt },
        bottom: 1pt
    ),
)
#set table.hline(stroke: 1pt)
#show table.cell.where(y: 0): strong

#set text(font: "Alegreya", number-type: "lining", 10pt)
#show heading: set text(font: "Alegreya Sans")

#grid(
    align: (
        center+horizon,
        left+top,
    ),
    gutter: 1em,
    columns: (1fr, 1fr, 1fr),
    grid.cell(
        rowspan: 3,
        grid(
            columns: 4,
            gutter: 1em,
            align: (
                center+horizon,
                center+horizon,
                center+horizon,
                left+horizon,
            ),

            rotate(-90deg, reflow: true)[*Black*],
            dice(
                stroke: black+1pt,
                fill: black,
                pips: white,
                size: 4em,
                6
            ),
            text(size: 14pt)[+3],
            [
                *Elite Units*\
                The finest troops you have.
            ],

            rotate(-90deg, reflow: true)[*Blue*],
            dice(
                stroke: black+1pt,
                fill: blue,
                pips: white,
                size: 4em,
                5
            ),
            text(size: 14pt)[+2],
            [
                *Veteran Units*\
                Troops with a lot of combat experience.
            ],

            rotate(-90deg, reflow: true)[*Green*],
            dice(
                stroke: black+1pt,
                fill: green,
                pips: white,
                size: 4em,
                4
            ),
            text(size: 14pt)[+1],
            [
                *Above-Average Units*\
                Troops that are well-trained with good equipment.
            ],

            rotate(-90deg, reflow: true)[*White*],
            dice(
                stroke: black+1pt,
                fill: white,
                pips: black,
                size: 4em,
                3
            ),
            text(size: 14pt)[#(sym.plus.minus)0],
            [
                *Average Units*\
                Standard troops forming the bulk of an army.
            ],

            rotate(-90deg, reflow: true)[*Yellow*],
            dice(
                stroke: black+1pt,
                fill: yellow,
                pips: black,
                size: 4em,
                2
            ),
            text(size: 14pt)[-1],
            [
                *Poor Units*\
                Green troops, or those that are poorly trained or equipped.
            ],

            rotate(-90deg, reflow: true)[*White*],
            dice(
                stroke: black+1pt,
                fill: red,
                pips: white,
                size: 4em,
                1
            ),
            text(size: 14pt)[-2],
            [
                *Fragile Units*\
                Militia, or shattered troops on the verge of running
                away.
            ],

        )
    ),
    grid.cell(colspan: 2)[
        = Matrix Game Rules

        Start with a problem.  Say what happens next.  There is no
        order of play. Anyone can add to or alter what happens.  All
        players may ask a player to roll if they don't like what they
        said.  Roll 2d6; 7+ the action happens and cannot be altered.
        6- it does not happen and cannot happen in the game.  The game
        ends when the problem is solved.
    ],
    grid.cell(colspan: 2)[
        = Simple Combat Resolution Using Dice

        Each side rolls 1 die per unit.  Modifiers for troop quality
        are to left — use different color dice.  Additional
        #(sym.plus.minus)1 can be applied using arguments.  Line dice
        up, highest to lowest after modifiers (cannot be less than 1
        or more than 6).  Higher score wins; equal scores ignored.
        Defeated units take -1 (taken off board if already at -2).
        For every 3 defeats in one roll, remove the lowest value (or
        lowest score) unit.
    ],
    grid.cell(colspan: 2,
        text(
            weight: "bold", 32pt,
            grid(
                stroke: 1pt+black,
                align: center+horizon,
                columns: (
                    1.05in, 1.05in, 1.05in,
                    1.05in, 1.05in, 1.05in,
                ),
                rows: 1.05in,
                text(blue)[1],
                text(blue)[2],
                text(blue)[3],
                text(blue)[4],
                text(blue)[5],
                text(blue)[6],
                text(red)[1],
                text(red)[2],
                text(red)[3],
                text(red)[4],
                text(red)[5],
                text(red)[6],
            )
        )
    ),
    grid.cell(
        align: left+horizon,
    )[
        = 2d6 Resolution With 50% Chance

        Roll 2d6 with one green and one red dice.  If both the score
        and the target is 7, one of the dice will have a higher value
        (as 7 is an odd number).

        If the *green* dice has a higher value, the answer is *yes*.

        If the *red* dice has a higher value, the answer is *no*.

        This means that the default 7+ target will have exactly 50%
        chance of happening or not happening.

        _Credit to Major Tom Mouat MBE MSc PGCE, from "Practical
        Advice on Matrix Games"_
    ],
    grid.cell(
        align: center+horizon,
        table(
            align: center,
            columns: 3,
            table.header(
                [Target (2d6≥)],
                [Chance of a Yes],
                [Chance =],
            ),
            [2 (+5)],  [100%],  [2.8%],
            [3 (+4)],  [97.2%], [5.6%],
            [4 (+3)],  [91.7%], [8.3%],
            [5 (+2)],  [83.3%], [11.1%],
            [6 (+1)],  [72.2%], [13.9%],

            [7 (#(sym.plus.minus)0)],
            [58.3%], [16.7%],

            [8 (-1)],  [41.7%], [13.9%],
            [9 (-2)],  [27.8%], [11.1%],
            [10 (-3)], [16.7%], [8.3%],
            [11 (-4)], [8.3%],  [5.6%],
            [12 (-5)], [2.8%],  [2.8%],
        )
    ),
    grid.cell(align: left+horizon)[
        = Argument Procedure

        - Players alternate turns.
        - Each turn, a player may make an Argument.
        - The player *states what happens* and gives one or more
          *Pros* — reasons why it might happen.
        - The other players can give one or more *Cons* — reasons why
          it might not happen.
        - Pros and cons are evaluated, and a chance of success is
          determined (quick rule of thumb — reduce target by 1 for
          each Pro, increase by 1 for each Con).
        - The player rolls the dice; the argument happens if the
          target is met or exceeded.
    ]
)

#pagebreak()

This is the cheatsheet I use to play solo matrix games.

Matrix Games were invented by Chris Engle.
