#import "meta.typ": engageDoc, fourRowColors, sixRowColors, repeatingStripesFill
#import "shapes.typ": arrow, ship
#import "typography.typ": frac, swsh, cv01, cv02, cv03, cv04
#import "units.typ": feet, inches, feet-inches

#show: doc => engageDoc(
    "LibEngage manual",
    doc
)

= LibEngage — Engage Press' Common Tools

This library contains common tools, utilities, and primitives to be
reused across our projects. The aim is to reduce copying-and-pasting
and encouraging reuse across projects.

== Methodology

We don't want this library to become too bloated, and we don't want
anything in the monorepo to be overly complicated and difficult to
use.  Therefore, here's some guidelines as to when to move things
here:

1. If you're copying and pasting something for a second time
   (i.e. it's the third time re-using something), consider putting it
   into LibEngage.
2. Don't put anything document or project specific in here.
3. Don't put anything in here that cannot reasonably be simply
   abstracted for reuse.

== Usage

If using the package:

```typst
// With prefixes
#import "@local/LibEngage:1.0.0": meta, shapes, typography, units

// e.g.
#meta.engageDoc(/* ... */)

// Without prefixes
#import "@local/LibEngage:1.0.0": engage-doc, shapes, typography, units

#import meta: engageDoc, fourRowColors, sixRowColors, repeatingStripesFill
#import shapes: arrow, ship
#import typography: frac, swsh, cv01, cv02, cv03, cv04
#import units: feet, inches, feet-inches

// e.g.
#engageDoc(/* ... */)
```

If copying the typst files into the directory:

```typst
#import "meta.typ": engageDoc, fourRowColors, sixRowColors, repeatingStripesFill
#import "shapes.typ": arrow, ship
#import "typography.typ": frac, swsh, cv01, cv02, cv03, cv04
#import "units.typ": feet, inches, feet-inches
```

Below, prefixes will be omitted.

#pagebreak()

#set page(columns: 2, numbering: "1/1")

= Meta

Functionality to help with general typesetting tasks.

== EngageDoc — Document Format

These are basically just some better defaults for typst. Example:
you're looking at it, buster!

```typst
#engageDoc(
    paper-size: "us-letter",
    body-font: "Alegreya",
    heading-font: "Alegreya Sans",
    number-type: "lining",
    author: "japanoise",
    margin: 2cm,
    font-size: 10pt,
    title,
    doc,
)

// Example: use the template for this document
#show: doc => engageDoc(
    "LibEngage manual",
    doc
)
```

#v(48em)

== Table Stripes

By default, `engageDoc` applies formatting to the tables to use fewer
lines but apply "zebra stripes" to some of the rows.  This makes them
both more readable and attractive.  By default, these alternate
between two rows of white and two of silver; `repeatingStripesFill`
lets you provide a list of stripe colors to customize
it. `fourRowColors` and `sixRowColors` are provided for certain
special cases.

=== Examples

```typst
#table(
    // ... data goes here ...
)
```

#table(
    align: center+horizon,
    columns: (1fr, 1fr, 1fr),
    table.header([Foo], [Bar], [Baz]),
    [1], [Qux], [Snarf],
    [2], [Lorem], [Ipsum],
    [3], [Dolor], [Sit],
    [4], [Amet], [Consectetor],
)

```typst
#table(
    fill: (_, y) =>
        repeatingStripesFill(fourRowColors, y),
)
```

#table(
    align: center+horizon,
    fill: (_, y) => repeatingStripesFill(fourRowColors, y),
    columns: (1fr, 1fr, 1fr),
    table.header([Foo], [Bar], [Baz]),
    [1], [Qux], [Snarf],
    [2], [Lorem], [Ipsum],
    [3], [Dolor], [Sit],
)

```typst
#table(
    fill: (_, y) =>
        repeatingStripesFill(sixRowColors, y),
)
```
#table(
    align: center+horizon,
    fill: (_, y) => repeatingStripesFill(sixRowColors, y),
    columns: (1fr, 1fr, 1fr),
    table.header([Foo], [Bar], [Baz]),
    [1], [Qux], [Snarf],
    [2], [Lorem], [Ipsum],
    [3], [Dolor], [Sit],
    [4], [Amet], [Consectetor],
    [5], [When], [in the course],
    [6], [of human], [events],
)

#pagebreak()

= Shapes

Useful shape primitives.

== Arrow

An arrow with a solid/block shaft.  Set the head width to be wider
than the shaft width to avoid distortion.

```typst
#arrow(
    fill: none,
    stroke: 1pt+black,
    headWidth,
    headHeight,
    shaftWidth,
    shaftHeight
)
```

== Examples

#grid(
    row-gutter: 1em,
    columns: (1fr, 1fr),
    align: (left, center+horizon),

    raw(lang: "typst", "#arrow(10pt, 5pt,\n        5pt, 5pt)"),
    arrow(10pt, 5pt, 5pt, 5pt),

    raw(lang: "typst",
        "#arrow(fill: green,\n       stroke: none,\n       30pt, 15pt,\n       10pt, 15pt)"),
    arrow(fill: green, stroke: none, 30pt, 15pt, 10pt, 15pt),
)

== Ship

An abstract representation of a sailing ship.  The `gauge` argument
sets the size of the ship — higher is smaller.

```typst
#ship(
    fill: gray,
    stroke: 1pt+black,
    gauge: 4
)
```

#grid(
    row-gutter: 1em,
    columns: (1fr, 1fr),
    align: (left, center+horizon),

    raw(lang: "typst", "#ship()"),
    ship(),
    raw(lang: "typst", "#ship(gauge: 2)"),
    ship(gauge: 2),
    raw(lang: "typst",
        "#ship(stroke: 5pt+green,\n      fill: red,\n      gauge: 1)"),
    ship(stroke: 5pt+green, fill: red, gauge: 1),
)

= Typography

Functions to apply font settings.

== Frac

If the font supports it, set the `frac` feature on to display vulgar
fractions.

#grid(
    row-gutter: 1em,
    columns: (1fr, 1fr),
    align: (left, center+horizon),

    raw(lang: "typst", "#frac(1, 2)"),
    frac(1, 2),

    raw(lang: "typst", "#frac(2, 3)"),
    frac(2, 3),

    raw(lang: "typst", "#frac(99, 255)"),
    frac(99, 255),
)

== Swash & Character Variant 1–4

If the font supports it, turns on the `swsh`, `cv01`, etc. features.

#grid(
    row-gutter: 1em,
    columns: (1fr, auto),
    align: (left, center+horizon),

    raw(lang: "typst",
        "#text(font: \"Honoria\",\n      [#swsh(\"S\")t#cv03(\"r\")ategos])"),
    text(font: "honoria")[#swsh("s")t#cv03("r")ategos],
)

= Units

Display units of measurement correctly.

== Feet & Inches

Displays feet and inches with the proper symbols (*not* curly quotes,
but slanted straight quotes).

#grid(
    row-gutter: 1em,
    columns: (1fr, 1fr),
    align: (left, center+horizon),

    raw(lang: "typst", "#feet(6)"),
    feet(6),

    raw(lang: "typst", "#inches(12)"),
    inches(12),

    raw(lang: "typst", "#feet-inches(6, 4)"),
    feet-inches(6, 4),
)
