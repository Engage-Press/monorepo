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

= List of fonts

Fonts in the repo are:

/ Besley: A slab-serif, by Indestructible Type
/ Cooper\*: An old-style display font, similar to the famous "Cooper Black", by Indestructible Type
/ Drafting Mono: A monospace, by Indestructible Type
/ EB Garamond: An old-style serif, based on Garamond, by Georg Mayr-Duffner
/ Hyde: A transitional serif, by Andrew Berry
/ Jost\*: A geometric sans, similar to Futura, by Indestructible Type
/ Rakkas: A display font with Arabic included, by Zeynep Akay
/ Vollkorn: A transitional serif, by Friedrich Althausen et al.

= Font Usage

== Display Fonts

For titles, the display fonts Rakkas or Cooper\* can be used.

#align(center)[
    #text(font: "Rakkas", size: 48pt)[Sphinx of black quartz]

    #text(font: "Cooper*", weight: "black", size: 48pt)[judge my vow!]
]

#pagebreak()

== Body Fonts

I'm considering including Coelacanth, but that's under active
development right now.

=== Hyde

Hyde's one of my favorites. It's super readable at various sizes and
has a Times-esque neutrality without being boring.

#text(font: "Hyde", lorem(30))

=== Vollkorn

Vollkorn is also very readable, though there was something about it
that made me choose Hyde instead for some projects. I think it has
better versions of the special symbols like #sym.section or
#sym.pilcrow than Hyde does.

#text(font: "Vollkorn", lorem(30))

http://vollkorn-typeface.com has a lot of examples of alternates.

=== Besley

Besley is a slab-serif rather than a transitional.  This gives it a
bit more of a "Victorian" feel (or even maybe a slightly Western
feel).  Americans may associate it with National Park signage.

#text(font: "Besley", lorem(30))

=== Jost\*

Used with stylistic set 1 (to change the double-story 'a' back to a
single-story one), Jost\* works as a free drop-in replacement for
Futura. Since Futura was the font used for the body text of the OD&D
and AD&D manuals, this makes it a useful item in the toolkit.

#text(stylistic-set: 1, font: "Jost*", lorem(30))

=== EB Garamond

A pretty nice Garamond, still not sure if this is "my" old-style, but
it looks nice. It also has that awesome old-school ampersand - which
reveals that ampersands are, in fact, ligatures for "Et" (the Latin
for "and").

#text(font: "EB Garamond", )[
    #lorem(30)

    _Dungeons & Dragons_
]
