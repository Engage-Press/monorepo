#import "@local/LibEngage:1.0.0": meta, shapes, typography, units
#import typography: frac
#import units: inches
#let version = "1.0.0"
#let copy-year = 2026

#let copy(size: "US letter size") = [

    #let true-size = [
        Set your printer to print at true size (no scale to fit page or
        similar settings).
    ]

    #let print-pages = [ Print pages 2 to end ]

    #let cardboard = [
        You will also need some cardboard --- fiberboard (like postal
        packaging) or paperboard (like cereal boxes) are fine --- to
        use as a stiff core for the cards.
    ]

    #let cut = [Cut cards out with scissors or a sharp craft knife.]

    = About

    *BINDER CLIP BATTALIONS* #size version #version, © #copy-year by
     Japanoise is licensed under CC BY-SA 4.0. To view a copy of this
    license, visit https://creativecommons.org/licenses/by-sa/4.0/

    When printed at "true" size, the cards should be
    60mm#(sym.times)40mm.  This will fit in a standard
    #inches[1#frac(1,4)] binder clip and will be appropriately sized
    to play e.g. WRG's DBA or HOTT rules.

    This is version #version --- there may be a newer edition
    available upstream; and if you don't like the colors, you can use
    Engage Press' typst monorepo to generate your own:

    - https://japanoise.itch.io/binder-clip-battalions
      is the homepage for Binder Clip Battalions
    - https://github.com/Engage-Press/monorepo is the monorepo for
      Engage Press.  Source code for Binder Clip Battalions lives in
      `src/binder-clip-battalions`.

    = Instructions

    This document is sized to print out on #size paper. At
    https://japanoise.itch.io/binder-clip-battalions the following
    sizes are available to download:

    - A4 size (ISO-standard used in most of the world)
    - US Letter size (ANSI-standard used in the United States and
      throughout North & Central America)

    == Using cardstock

    Using stiff cardstock means you don't need to use any glue and is
    the least labor-intensive method.  However, the other methods use
    a cardboard core which can be stiffer, so consider those as well
    if you're anticipating putting your armies through a lot of wear
    and tear.

    + Set up double-sided printing, flip on long edge.
    + #true-size
    + #print-pages
    + #cut

    == Using printer paper

    You will need glue --- PVA glue or an ordinary glue stick will
    do. #cardboard

    + Disable double-sided printing --- print each page on one sheet.
    + #true-size
    + #print-pages
    + Using glue, adhere the cards to the cardboard core.
    + #cut

    == Using printable postal labels

    This approach uses the full-sheet kind of postal labels that can
    be printed on. #cardboard

    + Disable double-sided printing --- print each page on one sheet.
    + #true-size
    + #print-pages
    + Peel *one* side of cards off and stick it on the cardboard core.
    + Cut the cards to one side so that there is a clear edge.
    + Peel the other side of cards off and stick to the other side of
      the sheet, so that it lines up with the edge.
    + #cut
]
