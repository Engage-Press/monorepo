#set document(
    title: [Fonts Preview],
    author: "japanoise",
)

#set page(
    numbering: "1/1",
    paper: "us-statement",
    margin: 1cm, //(x: 1cm, bottom: 1.75cm, top: 1cm),
)

#set text(font: "Vollkorn", number-type: "lining", 9pt)

#show link: underline

#outline()

#pagebreak()

= Display Fonts

Display fonts should be used for titles, logos, etc.

/ Combat: A display serif, by Martin Desinde for Velvetyne
/ Cooper\*: An old-style display font, similar to the famous "Cooper Black", by Indestructible Type
/ Honoria: A swash serif by Luzius Thöny
/ Ouroboros: A display font, by Ariel Martín Pérez for Velvetyne
/ Rakkas: A display font with Arabic included, by Zeynep Akay

== Combat

Heavy serif. Sharp edges without being geometric.

#align(center)[
    #text(font: "Combat", size: 48pt)[
        Combatative

        Strategos T

        COMBAT SOCIAL

    ]
]

#pagebreak()

== Cooper\*

Old-style. Like Cooper Black, though supports other weights (black
used here).

#align(center)[
    #text(font: "Cooper*", weight: "black", size: 48pt)[
        Cooper

        Pet Sounds

        Da Rulez

        DUNGEONS & DRAGONS
    ]
]

#pagebreak()

== Honoria

Swash serif, with special glyphs:

#table(
    columns: 3,
    table.header(
        [Feature],
        [Variant],
        [Glyphs]
    ),
    [swsh], [variants with curls, tails or long legs], [A C G K N R S X Z],
    [cv01], [swirl on the left], [B D E F H K L M N P R U V W Y],
    [cv02], [swirl on the right], [K M N U V W X Y],
    [cv03], [swirl on the left and long leg], [K N R],
    [cv04], [extra long swirly leg], [R],
)

#let swsh(txt) = text(features: ("swsh",), txt)
#let cv01(txt) = text(features: ("cv01",), txt)
#let cv02(txt) = text(features: ("cv02",), txt)
#let cv03(txt) = text(features: ("cv03",), txt)
#let cv04(txt) = text(features: ("cv04",), txt)

#align(center)[
    #text(font: "Honoria", size: 48pt)[
        Honoria

        #cv01("N")ever say #cv03("n")eve#cv04("r")

        #swsh("S")t#cv03("r")ategos
    ]
]

#pagebreak()

== Rakkas

Black weight, Arabesque feel.

#align(center)[
    #text(font: "Rakkas", size: 48pt)[
        Rakkas

        Strategos T

        MAZES & MONSTERS

        Record of the Three Kingdoms

    ]
]

#pagebreak()

== Ouroboros

Swash, with a magical/sigil/alchemical feel, maybe a little
psychedelic.

#align(center)[
    #text(font: "Ouroboros", size: 48pt)[
        Ouroboros

        Strategos T

        MAZES & MONSTERS

        So mote it be...
    ]
]

#pagebreak()

= Body Fonts

Body fonts should be used for body copy, i.e. for the main text of a
document or book.

/ Alegreya: A serif, by Huerta Tipografica
/ Alegreya Sans: A sans version of Alegreya, by Huerta Tipografica
/ Besley: A slab-serif, by Indestructible Type
/ Drafting Mono: A monospace, by Indestructible Type
/ EB Garamond: An old-style serif, based on Garamond, by Georg Mayr-Duffner
/ Garamontio: Michele Casanova's updated version of EB Garamond. Cut into a static font by yours truly.
/ Hyde: A transitional serif, by Andrew Berry
/ Jost\*: A geometric sans, similar to Futura, by Indestructible Type
/ Libre Clarendon: A slab-serif, by Impallari Type
/ Vollkorn: A transitional serif, by Friedrich Althausen et al.

I'm considering including Coelacanth, but that's under active
development right now.

== Hyde

Hyde's one of my favorites. It's super readable at various sizes and
has a Times-esque neutrality without being boring.

#text(font: "Hyde", lorem(30))

== Vollkorn

Vollkorn is also very readable, though there was something about it
that made me choose Hyde instead for some projects. I think it has
better versions of the special symbols like #sym.section or
#sym.pilcrow than Hyde does.

#text(font: "Vollkorn", lorem(30))

http://vollkorn-typeface.com has a lot of examples of alternates.

== Besley

Besley is a slab-serif rather than a transitional.  This gives it a
bit more of a "Victorian" feel (or even maybe a slightly Western
feel).  Americans may associate it with National Park signage.

#text(font: "Besley", lorem(30))

== Jost\*

Used with stylistic set 1 (to change the double-story 'a' back to a
single-story one), Jost\* works as a free drop-in replacement for
Futura. Since Futura was the font used for the body text of the OD&D
and AD&D manuals, this makes it a useful item in the toolkit.

#text(stylistic-set: 1, font: "Jost*", lorem(30))

== EB Garamond

A pretty nice Garamond, still not sure if this is "my" old-style, but
it looks nice. It also has that awesome old-school ampersand - which
reveals that ampersands are, in fact, ligatures for "Et" (the Latin
for "and").

#text(font: "EB Garamond", )[
    #lorem(30)

    _Dungeons & Dragons_

    *Yelling is fun!*
]

== Garamontio

A Garamond based on EB Garamond. It's very similar, just has some
slightly different kerning (more spaced-out in places) and a less
dramatic italic.  Use it if you prefer it?  Mostly I just wanted to
test cutting a static font from a variable one using my new script.

#text(font: "Garamontio", )[
    #lorem(30)

    _Dungeons & Dragons_

    *Yelling is fun!*
]

== Alegreya & Alegreya Sans

Found these #link("https://beautifulwebtype.com/alegreya/")[here] and
#link("https://beautifulwebtype.com/alegreya-sans/")[here].  Very nice
looking pair of humanist/caligraphic fonts.

#text(font: "Alegreya", )[
    #lorem(30)
]

#text(font: "Alegreya Sans", )[
    #lorem(30)
]

== Libre Clarendon

A slab-serif. Very similar to Besley (based on the same root font,
Clarendon) but has 5 weights and 4 widths.

#text(font: "Libre Clarendon", 10pt)[
    #lorem(30)

    `#text(weight: x ):`#h(1fr)
    #text(weight: "light", "light")#h(1em)
    #text(weight: "regular", "regular")#h(1em)
    #text(weight: "medium", "medium")#h(1em)
    #text(weight: "bold", "bold")#h(1em)
    #text(weight: "black", "black")\
    `#text(stretch: x ):`#h(1fr)
    #text(stretch: 75%)[75% (Foobar)]
    #text(stretch: 87%)[87% (Foobar)]
    #text(stretch: 100%)[100% (Foobar)]

    #align(center, text(font: "Libre Clarendon Wide")[Using alt font name: Libre Clarendon Wide])
]
