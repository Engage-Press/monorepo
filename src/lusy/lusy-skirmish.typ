#import "@local/LibEngage:1.0.0": meta

#show: doc => meta.engageDoc(
    author: "japanoise",
    font-size: 10pt,
    "LUSY 15mm Skirmish Rules",
    doc
)

#set page(
    columns: 2,
)

#let clw = "https://manoftinblog.wordpress.com/2016/06/09/close-little-wars-featherstones-simplest-rules/"

= LUSY 15mm Skirmish Rules v1.0

These simple wargames rules, based on Don Featherstone's "Close Wars"
& the adaption "#link(clw)[Close Little Wars]" by Mark from the "Man
of Tin" blog, are my attempt to create some super simple, no-thought
skirmish rules for 15mm games.  15mm is a great scale for those with
limited space or budget; and my aim is to make a set of rules that can
live in your head, so you won't have to have a book or ref sheet out
to play, either!

== Materials

To play LUSY Skirmish you will need:

- A dozen or so (per side) 15mm figures
- A handful of ordinary six-sided dice
- Props to serve as terrain
- Table or desk space
- An ordinary human hand or two

== LUSY — Super Simple Measurements

LUSY is so named for the measurement system.  Most wargames use inches
or millimeters to measure ranges and movement; some very clever ones
use base widths.  Makes sense, but that means if you want to play a
game, you need a ruler or tape measure to hand!

LUSY uses the Mark 1 Human Hand; the name comes from the four American
Sign Language letters that are formed when making measurements.  It
turns out that the variance in width and length of human hands isn't
very high; actually, that's probably where inch and feet(!)
measurements originally come from!  So, if you have a hand and most of
your fingers, you can measure out your ranges and movement just by
placing your hand on the playing field.

The ranges for movement and combat are as follows:

- _Short range_ (*S*) is roughly 1in or 30mm.  Measure it by using the
  width of your middle and index finger together.  The gesture is
  similar to the ASL letter 'U'.
- _Medium range_ (*M*) is roughly 3in or 80mm.  Measure it by using
  the width of your hand (clenched fist along the knuckles).  The
  gesture is similar to the ASL letter 'S'.
- _Long range_ (*L*) is roughly 6in or 150mm.  Measure it by using the
  length of your index finger down to the thumb.  The gesture is
  similar to the ASL letter 'L'.
- _Extra Long range_ (*XL*) is roughly 9in or 200mm.  Measure it by
  using the length between the tip of your pinky and thumb.  The
  gesture is similar to the ASL letter 'Y'.

This may seem weird or even unfair at first, but you'll get used to it
after a game.  If you're worried about fairness, pick one person to be
a consistent "ruler"; you could also assign a neutral third party to
do the measurements.

#figure(
    box(
        width: 100%,
        height: 23em
    )[

        #place(
            top+left,
            dx: 2em,
            rotate(
                90deg,
                image(
                    width: 16%,
                    "img/Sign_language_U.svg"
                )
            )
        )

        #place(
            dx: -3.8em,
            dy: 3.7em,
            top+center,
            line(
                stroke: stroke(dash: "dashed"),
                angle: 90deg,
                length: 1.5em
            )
        )

        #place(
            dx: 9em,
            dy: 4em,
            top+left,
            text(
                [#strong()[S]hort range (about an inch)]
            )
        )

        #place(
            dx: 0em,
            dy: 3.9em,
            top+left,
            text(
                14pt,
                font: "Alegreya Sans",
                strong()[U]
            )
        )

        #place(
            top+left,
            dy: 6.5em,
            dx: 3em,
            rotate(
                90deg,
                image(
                    width: 16%,
                    "img/Sign_language_S.svg"
                )
            )
        )

        #place(
            dx: -4.5em,
            dy: 7.2em,
            top+center,
            line(
                stroke: stroke(dash: "dashed"),
                angle: 90deg,
                length: 3.5em
            )
        )

        #place(
            dx: 8em,
            dy: 8.5em,
            top+left,
            text(
                [#strong()[M]edium range (about 3 inches)]
            )
        )

        #place(
            dx: 1em,
            dy: 8em,
            top+left,
            text(
                16pt,
                font: "Alegreya Sans",
                strong()[S]
            )
        )

        #place(
            top+left,
            dx: 3em,
            dy: 11em,
            rotate(
                30deg,
                image(
                    width: 20%,
                    "img/Sign_language_L.svg"
                )
            )
        )

        #place(
            dx: -4.8em,
            dy: 12em,
            top+center,
            line(
                stroke: stroke(dash: "dashed"),
                angle: 90deg,
                length: 3.7em
            )
        )

        #place(
            dx: 8em,
            dy: 13.5em,
            top+left,
            text(
                [#strong()[L]ong range (about 6 inches)]
            )
        )

        #place(
            dx: 1em,
            dy: 13.5em,
            top+left,
            text(
                16pt,
                font: "Alegreya Sans",
                strong()[L]
            )
        )

        #place(
            top+left,
            dx: 3em,
            dy: 18em,
            rotate(
                90deg,
                image(
                    width: 20%,
                    "img/Sign_language_Y.svg"
                )
            )
        )

        #place(
            dx: -4.8em,
            dy: 18em,
            top+center,
            line(
                stroke: stroke(dash: "dashed"),
                angle: 90deg,
                length: 4em
            )
        )

        #place(
            dx: 8em,
            dy: 19.5em,
            top+left,
            text(
                [#strong()[X]tra #strong()[L]ong range (about 9 inches)]
            )
        )

        #place(
            dx: 2em,
            dy: 19.5em,
            top+left,
            text(
                16pt,
                font: "Alegreya Sans",
                strong()[Y]
            )
        )

    ],
    caption: [The LUSY measurement system]
)

Of course, if you think this is just dumb, you can use a normal 12
inch (30cm) ruler with 1 inch, 3 inch, 6 inch, and 9 inch marks for
*S*, *M*, *L*, and *XL* respectively.

== Movement Ranges

Once per turn, troop movement is:

- *XL* for fast cavalry through open terrain
- *L* for fast infantry (auxilia, skirmishers, or regulars in groups
  of 3 or less); or slow cavalry through open terrain.
- *M* for regular troops in groups of 4 or more, or for fast infantry
  or cavalry slowed by rough terrain.
- *S* for groups of 4+ regulars slowed by rough terrain.

== Combat Ranges

- *XL* for infantry armed with rifles
- *L* for infantry armed with muskets
- *M* for infantry armed with pistols, cavalry with firearms, any unit
   with bows or thrown spears.
- *S* for melee; with being within *S* range of an ally counting as
   being part of his group for melee resolution.

== Turn Order

Before battle begins, designate one side as the Attacker and the
other as the Defender.

At the start of each turn, roll one die.  If the result is even (2, 4,
6) then the Attacker moves first; otherwise, the Defender moves first.

1. First side moves his troops & resolves melees
2. Second side shoots
3. First side shoots
4. Second side moves her troops & resolves melees

#pagebreak()

== Shooting

Roll one die per figure firing at a target group.  If the figures
shooting are in cover, then each 5 or 6 is a hit (possible kill);
otherwise, each 6 is a hit.  The target receiving fire resolves
casualties (see below).

== Melee

Each side rolls one die per figure involved in the melee.  The winner
is the side with the highest score; if there is a tie, both sides
lose!  Roll for casualties as below for losing side(s).

Unarmed men roll one die per two figures, rounding down.

== Casualties

Roll one die per figure hit.  On a 4, 5, or 6 the figure is saved;
otherwise, it is removed from play (killed or wounded).

If the casualty roll was caused by enemy figures shooting, and the
figures receiving casualties are in cover, then they are saved on 3,
4, 5 or 6.

=== Special Casualty Rules for Ancients

Only use these rules if it is expected figures are using ancient melee
weapons and that some may be armored (i.e. for pre-gunpowder periods);
otherwise, the above rules will do.

- For an unarmored target: Roll 6 to save
- For a target with armor _OR_ a shield: Roll 5 or 6 to save
- For a target with armor _AND_ a shield: Roll 4–6 to save
- For unarmored cavalry: Roll 5, 6 to save (horse killed on 5)
- For armored cavalry: Roll 4–6 to save (horse killed on 4)

== Special Events, Tricks, etc.

These rules are very brief and primarily deal with the most important
aspects: how to move, how to shoot, and whether or not you're dead.
If you want more rules for more scenarios (including crazy plans), no
you don't!  That would bloat the size of the rules and defeat the
purpose of them being so simple.

Two important wargaming adages are:

1. "Nothing can be done contrary to what could or would be done in
   actual war." — from 'The Rules of the Naval War Game' by Fred T Jane
2. "...anything which is not physically impossible may be attempted;
   but not always successfully." — from "Valley Forge" by Dave Wesely.

So, if in doubt, roll the dice!  You can start with a 50/50 chance (4,
5 or 6 on 1d6 it happens); require a higher roll if it's less likely
to happen (5 or 6; or even only if a 6 is rolled!) or a lower roll if
it's more likely (3–6 or 2–6).

= Terrain

Random scraps on your table can make for terrain; a placemat can make
for a fortification or hill, some string or strips of card or paper
can make for a road or river, and so on.  Of course, proper scale
terrain works too — 15mm figure scale is quite close to 1:120 scale,
which for model railways is called TT Scale and is fairly popular in
Europe.  Or, you can fight your battle on paper and just draw some
terrain.

As noted in the main rules section, rough terrain (such as
undergrowth, hills, streams, or fences) slows movement.  To make it
easy, anything that moves at *L* speed or greater moves at *M* speed
when any part of its move is through rough terrain; and anything that
moves at *M* speed moves at *S* speed.

= Scenarios

How the game is won has been left up to the player.  Of course you
could just set some proportion of a side that needs to be defeated (or
even go last man standing!) but a more entertaining game can be had by
setting objectives for one or both sides.  Coming up with scenarios is
part of the fun of the game, so this section is intentionally left
brief.  A few places of inspiration for scenarios:

- Books, movies, or TV shows — refight your favorite fictional
  skirmishes.
- Campaign scenarios — use these rules to resolve small actions
  between scouts, outpost infiltrations, attempted assassinations or
  rescues, etc.
- Link a few skirmishes together for a mini campaign following a
  small squad.
- Use it to resolve role-playing game battles if you forget your
  character sheet or rulebooks.

And a few quick-start ideas:

- Attack/Defend — a smaller force attempts to hold a defensible
  position while a larger force attempts to take it from them.
- Convoy Raid — One side attempts to get their supply wagons to the
  other side of the battlefield, the other attempts to capture the
  wagons and steal the supplies.
- Rescue — The defenders have a hostage, a stolen treasure, or the
  likes; the attackers attempt to recover it from them.
- Raid — The reverse of the rescue — the attackers attempt to kidnap
  someone or steal something from the defenders!
- Boarding Action — the attackers attempt to get on board the
  defenders' ship and capture it.  Lots of opportunities to use the
  Tricks rules for swinging from ropes, swashbuckling, etc.
