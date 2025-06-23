#set document(
    title: [Fonts Preview],
    author: "japanoise",
)

#set page(
    numbering: "1/1",
    paper: "us-statement",
    margin: (x: 1cm, bottom: 1.75cm, top: 1cm),
)

#set text(font: "Vollkorn", number-type: "lining", 9pt)

#show link: underline

#outline()

#pagebreak()

= Display Fonts

Display fonts should be used for titles, logos, etc.

/ Combat: A display serif, by Martin Desinde for Velvetyne
/ Cooper\*: An old-style display font, similar to the famous "Cooper Black", by Indestructible Type
/ Hexagothic: A unique hexagonal Gothic, both futuristic and fantastic
/ Honoria: A swash serif by Luzius Thöny
/ Old Cupboard: A handwritten take on EB Garamond
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

== Hexagothic

A hexagon-shaped display font. It has a unique blend of sci-fi and fantasy.

By setting the weight to 100, the contrast is constant, giving a
sleek, futuristic feeling; by setting it to 900, dramatic differences
in contrast give the font the feeling of a gothic or blackletter.

#align(center)[
    #text(font: "Hexagothic", size: 48pt)[
        Hexagothic Light (weight 100)

        #text(weight: 900)[Hexagothic Display (weight 900)]
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

== Old Cupboard

A handwritten EB Garamond. Per the author:

#quote(block: true)[
    Old Cupboard is an OpenType Font made by hand in the style of EB
    Garamond. It takes advantage of an OpenType feature that allows
    glyphs to swap conditionally, giving the font an appearance of
    being handwritten while not repeating the same characters over and
    over!

    Old Cupboard is a display font, which means it’s best used for
    titles and headers. You will want to adjust the kerning (the space
    between letters) and word spacing, but after some toying around
    you should have something very cozy and warm to look at.

    Old Cupboard is a hand-written version of EB Garamond by Octavio
    Pardo and Georg Duffner and pairs very nice with that great font,
    but you’ll find that it doesn’t pair so nicely with sans serif
    fonts. It also works fantastically as dropped capital letters,
    leading into a paragraph!

]

#align(center)[
    #text(font: "Old Cupboard", size: 48pt)[
        Auld Cupboard

        Dungeons & Dragons

        So mote it be...
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
/ IBM Plex: Paired fonts, a grotesk serif and a humanist sans.

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

#pagebreak()

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

== IBM Plex

IBM's corporate typefaces,
#link("https://www.ibm.com/plex/concept/")[IBM Plex Sans] and
#link("")[IBM Plex Serif].  The sans is a grotesk, inspired by Helvetica:

#text(font: "IBM Plex Sans", )[
    #lorem(30)
]

The serif is a transitional with modern characteristics, like Bodoni
but with aspects from Janson:

#text(font: "IBM Plex Serif", )[
    #lorem(30)
]

= Monospace Fonts

Monospace fonts are the same width for every glyph, unlike a
proportional font where glyph widths may vary. Compare IBM Plex Sans &
IBM Plex Mono:

- #text(font: "IBM Plex Sans", )[Antidisestablishmentarianism]
- #text(font: "IBM Plex Mono", )[Antidisestablishmentarianism]

These fonts are used in a few scenarios:

1. Traditionally, for computer terminals and thus for text editors &
   source code.
2. Screenplays are as standard written in
   "#link("https://en.wikipedia.org/wiki/Screenplay#Format_and_style")[12
   point, 10 pitch Courier]"; the standardized size allows (roughly)
   one page of text to equal one minute of screen time.
3. Most mechanical typewriters and dot-matrix printers use or used
   monospace fonts as they are simpler to implement.

The use is thus quite limited for typesetting:

1. For verisimilitude when depicting typewritten or older printed text.
2. For accurately displaying ASCII art and indented source code.
3. For using a typesetting tool to write screenplays.

/ IBM Plex Mono: IBM's corporate monospace, fairly neutral with a
  grotesk character.
/ TT2020: Verisimilar typewriter font.

#pagebreak()

== IBM Plex Mono

IBM's corporate monospace. In their own words:

#quote(block: true)[
    ...a neutral yet friendly Grotesque style typeface that
    balances design with the engineered details that make Plex distinctly
    IBM.
]

It's closer to a Sans than Courier; it looks most similar of course to
IBM Plex Sans.

#show raw: it => block(
  text(font: "IBM Plex Mono", 9pt, it)
)

#text(font: "IBM Plex Mono", )[
    #lorem(30)
]

```c
#include <stdio.h>

int main(char **args) {
        for (int i = 0; i < 10; i++) {
                printf("%d...\n", i);
        }
        printf("%s\n", "Hello World!");
        return 0;
}

/*
 * Characters that can be ambiguous in bad programming fonts:
 *
 *   iIlL|1   ({[<>]})   @0Oo   `'"
 */

/*
 * "See no evil - hear no evil - talk no evil" by Morfina
 *
 *     _.-._         ..-..         _.-._
 *    (_-.-_)       /|'.'|\       (_'.'_)
 *  mrf.\-/.        \)\-/(/        ,-.-.
 *  __/ /-. \__   __/ ' ' \__   __/'-'-'\__
 * ( (___/___) ) ( (_/-._\_) ) ( (_/   \_) )
 *  '.Oo___oO.'   '.Oo___oO.'   '.Oo___oO.'
 */
```

#pagebreak()

== TT2020

A highly verisimilar typewriter font.  Replicates the "grodiness" of a
beat-up typewriter low on ink without obviously repeating glyphs.
Check out the #link("https://copypaste.wtf/TT2020/")[homepage] for
more information.

_Font "TT2020Base":_

#text(font: "TT2020Base")[
    Sphinx of black quartz, judge my vow! EEEEEEEE
]

_Font "TT2020 Style B":_

#text(font: "TT2020 Style B")[
    Sphinx of black quartz, judge my vow! EEEEEEEE
]

_Font "TT2020 Style D":_

#text(font: "TT2020 Style D")[
    Sphinx of black quartz, judge my vow! EEEEEEEE
]

_Font "TT2020 Style E":_

#text(font: "TT2020 Style E")[
    Sphinx of black quartz, judge my vow! EEEEEEEE
]

_Font "TT2020 Style F (ASCII)":_

#text(font: "TT2020 Style F (ASCII)")[
    Sphinx of black quartz, judge my vow! EEEEEEEE
]

_Font "TT2020 Style G (ASCII)":_

#text(font: "TT2020 Style G (ASCII)")[
    Sphinx of black quartz, judge my vow! EEEEEEEE
]
