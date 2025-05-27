#set page(
    paper: "us-statement",
    footer: context {
        if (counter(page).get().first() < 2) [
        ] else if (calc.rem(counter(page).get().first(), 2) == 0) [
            #counter(page).display(
                "1"
            )
            #h(1fr)
            Strategos T
            #h(1fr)
        ] else [
            #h(1fr)
            japanoise
            #h(1fr)
            #counter(page).display(
                "1"
            )
        ]
    },
    margin: 1cm, //(x: 1cm, bottom: 1.75cm, top: 1cm),
)

#set text(font: "Hyde", number-type: "lining", 9pt)

#set table(
    gutter: auto,
    inset: (x: 3pt, y: 3.7pt),
    stroke: (x, y) => (
        x: 0pt,
        top: if y == 1 { 1pt } else { 0pt },
        bottom: 0pt
    ),
)

/*
 * Per docs: https://typst.app/docs/guides/table-guide/
 * "We are using a show rule with a selector for cell
 * coordinates here instead of applying our styles directly
 * to table.header. This is due to a current limitation of
 * Typst that will be fixed in a future release."
 */
#show table.cell.where(y: 0): strong

#show table: it => {
    align(center, it)
}

#align(center)[
    #text(font: "Ouroboros", size: 52pt)[
        Strategos T
    ]

    #text(font: "Jost*", features: ("ss01",), size: 18pt)[
        #v(-2.5em)
        Medieval Fantasy Wargaming\
        Suitable for 1-6 Players

        #image("img/goblin.png")

        #v(1fr)

        By the Princess Japanoise
    ]
]

// Proper inch and feet marks: practicaltypography.com/foot-and-inch-marks.html
#let feet(no) = [#(no)′]
#let inches(no) = [#(no)″]
#let feet-inches(f, i) = [#feet(f)~#inches(i)]

#let frac(
    numerator,
    denominator,
) = text(fractions: true)[#(numerator)/#(denominator)]

#pagebreak()

#counter(page).update(1)

#set page(margin: (x: 1cm, bottom: 1.75cm, top: 1cm))

#pagebreak()

#align(center)[
    #v(1fr)

    #text(font: "Ouroboros", size: 52pt)[
        Strategos T
    ]

    #text(font: "Jost*", features: ("ss01",), size: 18pt)[
        #v(-2.5em)
        Medieval Fantasy Wargaming\
        By the Princess Japanoise

        #v(1fr)

        #text(12pt)[First Edition, 2025.]

        #v(1fr)

        #text(10pt)[
            Strategos T, Copyright © 2025 by japanoise is licensed
            under CC BY-SA 4.0.

            To view a copy of this license, visit\
            https://creativecommons.org/licenses/by-sa/4.0/
        ]
    ]

    #v(2fr)

    #text(font: "EB Garamond", features: ("ss01",), size: 48pt)[
        _&_
    ]
]

#counter(page).update(1)

#pagebreak()

#outline()

#pagebreak()

= Foreword

In the beginning, there was the War Game.  The War Game took many
forms but at its core were two competing ideals — the desire for a
fun, competitive game on one hand, and the desire for a verisimilar
simulation of warfare on the other hand.  In the Midwest, the need for
rules lead the great Dave Weseley to adapt Charles Totten's
_Strategos_ for fighting in the Early Modern period.  This game — one
with a neutral referee arbitrating gameplay between two or more
players — was an ancestor, through a decade-long game of telephone, to
the later "Role-Playing Games," also invented in the Midwest by
contemporaries of Weseley.

Unfortunately, the obscurity of the wargame origins of the RPG have
meant that simulations of large-scale warfare have been left out of
later RPGs.  At most, small skirmishes are possible — or segments of a
larger battle, perhaps — and the likes of the Battle of Helm's Deep
are left to prose fiction.

Inspiration, however, has struck from a later development.  In the
early days of the RPG hobby, Ken St Andre simplified an earlier effort
to create _Tunnels & Trolls,_ a cheaper and simpler game with great
game design ideas.  When somebody pointed out to me that T&T's combat
resolution more closely resembles a board wargame than do
contemporaries, I had been set a game design challenge.

This started with me wanting to find a way to create "mass combat"
rules for T&T.  I knew that the "compare sums" combat system became
unviable with very large numbers; rolling more than ten dice to
resolve a melee seems excessive.  But dividing by ten or similar
approaches seemed unviable as well; the damage must scale to the
difference in dice rolls.

That's when I struck upon the idea of combining two systems — the
"Monster Rating" from T&T, and the proportional power combat system
(Table T) from _Strategos._ Hence, and following the long trend of
Strategos houserules having names derived from the name and a single
letter — _Strategos T,_ or if you like, the Troll Edition.  It is both
a simplified RPG — an "FKR" version of T&T — and a tabletop wargame
suitable for both small skirmishes and large battles.

Much playtesting yet remains, and more development will be needed.
The bulk of rules for an RPG, outside of combat, tend to be the
_campaign_ rules, which save for the section on advancement are mostly
absent from these rules.  But these rules are already more than enough
for an exciting game, and should be able to handle anything from a
duel to a huge battle.  Feel free to borrow liberally from other games
to fill in the gaps — do that, and you'll be playing well within the
spirit I use for my own games.

Have fun and — *Fight On!*

#v(1fr)

japanoise#h(1fr)26th May 2025\
Designer, Engage Press#h(1fr)Not Lake Geneva

#v(1fr)

#pagebreak()

= Introduction

The rules herein are deliberately organized more like a "wargame" than
an "rpg."  Do not let that fool you; this is very much a game that can
handle a full-on campaign with named characters.  The rules are
written from the point of view of "rules elide;" for an RPG, the
rules simplify the part of the game that needs simplifying, and leaves
the rest up to interpretation.  Common sense and a quick dice roll
should resolve anything where a test of luck would make for an
interesting game.

= Necessary Materials

- One to six players & one patient referee.
- One or more copies of _Strategos T._
- Pencils & paper.
- Lots of six-sided dice (d6), preferably in multiple colors.
- (Optional) Miniature figures, and a table to push them around on.

= Scale & Movement

- Game turns take up one minute of "simulation" time.
- Ground scale is #inches(1)=10 yards _or_ #inches(1)=10 meters
  (1 yd = 0.9144 meters)
- Miniature figures are 20–30mm.  10–15mm can be used by interpreting
  an inch in the rules as a centimeter on the table.  Smaller than
  10mm troops can re-use the same base size but adjust the ratio.
- The ratio of miniature figures to simulation troops is between 1:10
  & 1:30; i.e. 5 figures represent between 50 and 150 men.

== Battlefield/Table Size

With the 20–30mm scale in mind, a battlefield (table) of
#feet(4)–#feet(7) in width and at least #feet(8) in length is most
viable; i.e. #inches(48)–#inches(84) by at least #inches(96).

Using smaller miniatures this would be 48cm–84cm by 96cm; i.e. the
battlefield would be slightly less than a meter square, at minimum
around the size of two\
FIDE-standard chessboards.

In scale terms (i.e. in the amount of terrain actually represented),
the board would then be at least a quarter mile wide and a half mile
long.  A battle the size of Agincourt (about 6,000–8,000 English vs
15,000 French) can easily be fit onto this board.

== Movement

Units can move as much as the following per turn, depending on their
orders (i.e. whether or not they're ordered to quickmarch or
doubletime, or if they charge):

#table(
    columns: 5,
    align: (left, center, center, center, center),

    table.header(
        [Troop Type],[March],[Quick/Trot],[Double/Gallop],[Charge],
    ),

    [Couriers, scouts, archers], inches()[12], inches()[16], inches()[24], [—],
    [Light infantry skirmishing],inches()[9],  inches()[12], inches()[18], inches()[18],
    [Other infantry],            inches()[6],  inches()[8],  inches()[12], inches()[18],
    [Cavalry],                   inches()[6],  inches()[12], inches()[18], inches()[72],

)

These rates assume the whole turn is spent marching (or charging) over
flat ground.  Other orders consume proportions of a turn as such:

#table(
    columns: 2,
    align: left,

    table.header(
        [Order], [Movement consumed],
    ),

    [Halt/Rest], [Whole turn],
    [Form up (change formation)], [Whole turn],
    [Change facing 90° or more], [Half turn],
    [Move then charge], [Proportion of movement VS charging],
)

As an example of the latter: A cavalry brigade marches #inches(3) at
normal time.  They have consumed one half of their movement. They may
charge up to #inches(36).

Ordering a quickmarch, doubletime, trot, or gallop for the turn must be done at
the start of the turn; a morale roll must be made to avoid a drop in morale.
Charges may be ordered whenever convenient, subject to the preceding rules.

Vehicles move at #inches(6) per turn on most terrain; or #inches(9)
(without horses) or #inches(12) (with) if using a road.  They cannot
charge or increase their speed.

Outside of combat, all troops use the courier speed #inches(12).

=== Fatigue

Troops become fatigued and *must* rest after six consecutive turns of
movement above a certain amount.  For infantry that is #inches(72)\;
for cavalry that is #inches(144).  Note that this movement is
abstracted based on the whole turn and the presence of a charge — use
the following values:

#align(center, table(
    columns: 2,
    align: (left, center),
    table.header(
        [Troop & Activity], [Movement]
    ),

    [Infantry at normal time], inches()[9],
    [Infantry at quickmarch], inches()[12],
    [Infantry at doubletime], inches()[18],
    [Infantry charging],       inches()[18],
    [Infantry in melee],       inches()[18],
    [Cavalry marching],        inches()[12],
    [Cavalry trotting],        inches()[24],
    [Cavalry galloping],       inches()[36],
    [Cavalry in melee],        inches()[36],
    [Cavalry charging],
    [#inches()[12+]#footnote()[12 inches plus distance charged]],
))

At the start of the battle, unless the situation calls for something
different such as a body of troops remaining stationary waiting for
the enemy or needing to move quickly before the battle, assume the
past six turns were spent marching at normal time (so six times
#inches(9) = #inches(54) for infantry, six times #inches(9) =
#inches(72) for cavalry).

= Fighting Power (FP)

A unit or figure's relative fighting power in Strategos T can be
expressed as a decimal number.  The tens (and hundreds, etc.) digit expresses a
power magnitude, and the units digit represents relative strength within that
magnitude.  This number is the unit's "Fighting Power", or *FP* for short.

In Skirmish Combat a higher Fighting Power number means more dice are
rolled (starting at one die and increasing by one every ten FPs) and
more bonuses are given to the final score; in Mass Combat the score
contributes directly to the relative strength of a force compared to
another's.

An ordinary — unarmed and untrained — civilian has a fighting power of
1–9, the differences representing relative physical strengths,
street-smarts, and so on.  Irregular troops, such as those that have
had some rudimentary training and simple weapons — peasant militias
and the like — increase their fighting power by ten to 10–19.  Regular
infantry troops have a fighting power of 20–29 due to better training
and equipment.  Elite infantry troops have a fighting power of 30–39.
Mounted troops gain an effective increase of magnitude again; light
cavalry 20–29, regulars 30–39, elites 40–49.  Non-human monsters or
heroes can have FPs greater than this.

Injuries or casualties are directly subtracted from a unit's Fighting Power,
reducing their combat effectiveness over time.  A unit of 0 FP is out of combat,
through death or serious injury, and thus does not contribute to combats.

Putting it all together:

#table(
    align: (center, center, left, left),
    columns: 4,
    table.header(
        [FP], [Skirmish], [Infantry], [Cavalry],
    ),

    [1–9], [1 (+0–4)], [Civilians], [—],
    [10–19], [2 (+5–9)], [Militia], [Mounted civilians],
    [20–29], [3 (+10–14)], [Regulars], [Light Cavalry],
    [30–39], [4 (+15–19)], [Elites], [Medium Cavalry],
    [40–49], [5 (+20–24)], [Heroes &c.], [Heavy/Elite Cavalry],
    [50–59], [6 (+25–29)], [Heroes &c.], [Mounted heroes &c.],
)

= Morale

Historically, morale was a greater factor in winning battles than raw
troop numbers; for example at Agincourt the longbow's efficiency was
more in softening up troops and breaking their charge before they
could reach the massed men-at-arms than in sheer killing force.  In
Strategos T, the morale of a unit is expressed with a simple
adjectival description.

Assuming a one-minute turn, troops will re-organize after being
demoralized or calm down after a great victory at the rates given in
Duration; they will then move to the next morale level nearest
*Normal*.  For example, after 3 turns reorganizing, *Badly Shaken*
troops will move to *Shaken*; similarly, after 1 turn *Enthused,*
troops move to *Flushed*; after a further two turns, back to *Normal*.

#table(
    columns: (2.5fr, auto, 1fr, 1fr, 1fr),
    align: (left, left, center, center, center),
    table.header(
        [Morale Level], [Duration], [Missiles], [Infantry], [Cavalry]
    ),

    [Enthusiastic], [1 turn], [×1], [×5], [×10],
    [Flushed with Victory], [2 turns], [×1], [×3], [×6],
    [*Normal*], [*Indefinitely*], [×1], [×1], [×1],
    [Somewhat Shaken], [1 turn], [×½], [×⅔], [×⅓],
    [Shaken], [2 turns], [×⅓], [×½], [×¼],
    [Badly Shaken], [3 turns], [×⅕], [×⅓], [×⅙],
    [Disordered], [6 turns], [×⅒], [×⅕], [×⅒],
    [Great Confusion], [10 turns], [×0], [×⅒], [×#frac(1, 20)],
    [Routed], [20 turns], [×0], [×0], [×0],
    [Missing], [½ don't return], [×0], [×0], [×0]
)

== Changes In Morale

Troops that undertake a forced march (faster than normal speed for some period
of time) drop to the next morale level down.

If using Skirmish Combat, or when troops take casualties from missile
fire, a morale roll (see below) may be necessary.  The following
situations call for a morale roll:

- Losing 5% of force's initial strength at the start of the battle (once every
  time this happens);
- Facing a wizard or particularly dangerous hero or monster (once at start of
  encounter);
- Witnessing a friendly hero or commander perish or be driven off.

If using Mass Combat, then Table T should be used to determine the
morale effects of a melee.

== The Morale Roll

Units that need to check their morale may do so with a roll of one dice,
attempting to meet or exceed the target number.  The target number varies with
relative "eliteness", i.e. with training and confidence.  One roll is made for a
whole unit (a company, battalion, etc).

#table(
    columns: 2,
    align: (left, center),
    table.header(
        [Eliteness], [Target]
    ),
    [5 — knights, old guard], [2],
    [4 — infantry elite, heavy cavalry], [3],
    [3 — regulars & professionals], [4],
    [2 — experienced militia], [5],
    [1 — green militia], [6],
)

Some troops (such as religious zealots whipped into a fervor, or certain fantasy
creatures such as undead) do not need to check morale and automatically
pass. Others, such as peasant militia, may simply buckle at the first sign of
trouble and flee.

= Advancement

Engaging in combat leads troops to gradually getting stronger and more
experienced.  These rules apply only to campaigns, but are very
important in that context; elite troops are more effective in combat,
and a few Hero characters could make or break a battle.

== Ordinary Troops

Militia are ordinary 10–19 FP humans given a simple weapon (like a cheap
polearm, hand-axe, or club) and possibly some quick instruction with it.  Think
of a peasant mass that mostly just gets in the way of the enemy.  If they have
armor it's a simple gambeson and possibly a skull cap.

Regulars are hardened professional soldiers.  They have 20–29 FP.  These will
make up the core of any standing army.  In order to raise men like this from
would-be militia, they need two years of training, or one year and to survive a
battle in which they either took heavy losses (at least 10%), won a melee, or
achieved an objective.  You can assume any martial culture of any size already
has competent troops & the officers to train them, only differing in the number
of these & their distribution.

Elites or guards have 30–39 FP.  These are raised from the best regulars, or
trained in elite academies by their peers.  A unit of regulars must survive at
least three battles where they took heavy losses, won a melee, or achieved an
objective, in order for them to become elites.

Mounted troops advance at the same rate, the only difference being in the +10
initial FP they get from being mounted.

== Heroes

A hero is a soldier who is as good as four ordinary soldiers.  In practical
terms that means an FP of at least 80–89 equipped and unmounted (losing 10 FP if
unequipped, gaining 10 FP if mounted).  Ordinarily this would be impossible to
reach; this is strictly in "fantasy" terms.

One hero may be raised from a unit of any troop type that displays extraordinary
courage, skill, or luck in battle.  For example, a unit of regulars that scales
a castle wall and takes it alone without incurring heavy losses must have some
kind of genius within the unit that's unsuited for the ordinary ranks.

At this stage, any advancement that would be gained from the battle is deferred;
instead, one soldier from the unit is raised to Hero status.  Her FP is raised
to at least 80, and she gains any benefits that training or experience would
confer on an ordinary troop (i.e. her morale, discipline, and so on are counted
as elite).

All heroes should be named and known.  Historical heroes include Guan Yu,
Achilles, and Joan of Arc.  A hero makes a good "player character" in a
campaign.

== Advancement for heroes

Heroes require ten Advancement Points (AP) to increase both their fame
and their skill.  Once these points are acquired, they can be "spent"
during a week of rest to gain 20–29 FP and advance to 100–109 FP.  The
distribution of points is a subtle art but the following guidelines
should help:

- 1 AP — participating in a battle, slaying a worthy foe, doing a good deed,
  finding something neat, looting a chest.
- 2–3 AP — significant contribution to a battle, slaying a peer, saving scores
  of lives, finding something amazing, looting a treasure hoard.
- 5 AP — single-handedly winning a large battle, slaying a greater threat,
  saving hundreds of lives, finding something unbelievable, looting a vault.
- 7+ AP — being invaluable to an entire campaign, slaying a legendary threat,
  saving thousands of lives (or the world!), finding an incredible magical
  discovery or a new continent.

In general a hero should achieve at least one AP for every game session they
appear in and "adventure" in (i.e. go out and cause some mayhem rather than
sitting on their arses).

AP in excess of ten does carry over to advance again, but no more than 5 AP
carries over this way; i.e. if you somehow accumulate 30 FP without a rest, you
can increase in FP but cannot add more than 5 AP to your next increase.

Each time FP is advanced in this way, the requirement to gain FP again is
increased by ten.  If you count a hero as level one, and a hero with three
advancements as level three, this yields the following advancement table:

#table(
    columns: 4,
    align: center,
    table.header(
        [Hero Level], [Fighting Power], [AP to Advance], [Total AP],
    ),
    [1], [80–89],     [10], [10],
    [2], [100–109],   [20], [30],
    [3], [120–129],   [30], [60],
    [4], [140–149],   [40], [100],
    [5], [160–169],   [50], [150],
    [6], [180–189],   [60], [210],
    [7], [200–209],   [70], [280],
    [8], [220–229],   [80], [360],
    [9], [240–249],   [90], [450],
    [10], [260–269], [100], [550],
)

Once reaching 160 FP (i.e. as good as two heroes) the hero becomes a super-hero.
Mythical figures such as Hercules, Lu Bu, Red Sonja, and Elric are examples of
these.  An army who counts a super-hero among her ranks is fearsome indeed, even
if relatively small.  The movement of super-heroes should be treated specially
on the campaign map.  A huge drop in morale will result from a super-hero
defecting in battle.

= Skirmish Combat

The Skirmish Combat system is most suitable for small engagements,
where only a few units are clashing (down to the level of individual
duels).  In order to resolve Skirmish Combat, the Fighting Power of
every unit on each side should be known.

Every unit rolls dice; at least one, with one extra for every ten FPs;
to their total dice score, add half their FP, rounding down.  So for
example, an elite knight with an FP of 47 would roll 5 dice and add
\23.  A quick way to calculate the number of dice is to take the tens
digit and add one; for example, 20 FP rolls 3 dice, 30 FP rolls 4.

The sum of every dice score is that side's Combat Total (*CT*).  The
side with the greater CT has "won" the skirmish round.  They deal
their CT in damage to the opponent, subtracted by the opponent's CT.
This damage comes off their opponent's Fighting Power, distributed as
makes sense by the referee (divided evenly if no alternative presents
itself).  This abstracted damage represents a combination of wounds,
lost morale, fatigue, etc.  The new, lowered FP is used in subsequent
combat turns.

For example, our knight of 47 FP (5d6+23) is fighting a 33 FP serjeant (4d6+16).
His five dice come up 6, 5, 5, 3, 5 — adding those together gives 24, and adding
his bonus gives a CT of 24 + 23 = 47.  The serjeant rolls his dice and scores 3,
3, 3, 1 — adding those together gives 10, and adding his bonus gives a CT of
10 + 16 = 26.  The knight has the higher Combat Total and thus wins the round.
His CT, subtracted by the serjeant's CT, is dealt in damage to the serjeant.
The serjeant thus takes 47 - 26 = 21 damage, reducing his FP to 33 - 21 = 12.
He has taken a serious wound and thus his Fighting Power is severely reduced.

== Special Circumstances

The relative FP or CT of units or sides may be modified by the
circumstances listed in Table S.  For example, units that have the
high ground relative to their opponents may multiply their effective
Fighting Power by between 1.5–6 times (depending on the slope of the
hill).  In this circumstance, if the combat is still lost, then the
damage is subtracted from their *initial* Fighting Power, *not* the
effective total.

For example, say our serjeant had the high ground on a moderate slope.  His 33 FP
would be tripled in effectiveness, giving 99 FP (10d6+49).  If somehow he still
lost the skirmish round, by say 11, that 11 would come off his *original* FP of
33, reducing it to 22 FP. On a subsequent round, his effective FP could still be
tripled, but it would be triple 22 FP, giving the more modest 66 FP (7d6+33).

#pagebreak()

= Mass Combat

The Mass Combat system is suitable for when the number of
dice required to resolve a combat with Skirmish Combat becomes
unreasonable; say through large numbers of troops or very strong
creatures causing Fighting Power values in the multiple hundreds.

Resolution is simple — the side with the highest effective total FP
gets better odds for rolling on Table T. To wit:

1. Add up both sides' total FP.
2. Apply any multipliers on Table S to sides' totals, yielding their
   Effective Total (*ET*).
3. Boil the odds down to x:1, where x is greater than or equal to 1,
   and is the multiple above the lesser ET that the greater ET is.
   See below.
4. The side with the advantage rolls one die first.  They may choose
   to re-roll the dice once for every x higher than 1, or stand and
   take their current score.  So for example, a side that has 2:1 odds
   and rolls a 5 may choose to reroll the dice, taking whatever they
   get on the second roll; or to stand and take the 5.
5. The side with the disadvantage rolls one die.
6. The side with the higher score wins the combat round.
7. Subtracting the greater score from the lesser score gives the
   margin of victory.  Use Table T to determine the outcome of the
   combat.
8. Losses in FPs for both sides are (the opponent's die roll)% of the
   opponent's FPs, plus one for the winning side and minus one for the
   losing side (so the winning side will take 0–5% of the losing
   side's FP in losses, and the losing side 3–7% of the winning side's
   FP).  Morale is not checked for these losses as Table T already
   accounts for morale changes.  As with modified skirmish combat, all
   calculations at this stage use initial FP, not ET.

== Reckoning Odds

Odds must take a unit form of x:1.  The side with disadvantage never rolls more
than one die on Table T.

There's not enough difference between, say, 4:3 odds and 3:2 odds to justify
increasing in increments of much more than 50%. So:

- If the ET of both sides is roughly equal (neither side is closer to 150% the
  size of the other than it is to equal), the odds are 1:1;
- If one side has closer to 150% the ET of the opponent than equal to or double,
  roll a die; on an even number the odds are 2:1, on an odd, 1:1;
- If one side has around twice the ET of the opponent, the odds are 2:1;
- If one side has around 250% the ET of the opponent, roll a die; on an even
  number the odds are 3:1, on an odd, 2:1;
- If one side has around triple the ET of the opponent, the odds are 3:1;
- etc.

= Saves & Missiles

In Strategos T, ordinary combat (Skirmish Combat and Mass Combat)
takes into account the throwing of javelins etc. but has no solution
for *distant fire,* that is troops firing at an enemy that is not
within melee range.  Nor are there rules elsewhere for covering
general scenarios where a unit might tempt the fates.  For these
purposes, a *Save* is called for.

== Saves

To make a Save, roll two dice and add the Fighting Power (FP) of the
unit Saving, trying to equal or exceed the target number.  Doubles add
and roll over, i.e. if the two dice have the same face value, re-roll
the dice and add the scores together, repeating for as long as doubles
come up.

The target number to hit with your two dice + FP is determined by level; the
Save level times 5 plus 15. That is:

#table(
    columns: 6,
    align: center,
    table.header(
        [Level], [Target], [Level], [Target], [Level], [Target],
        [1], [20], [6], [45], [11], [70],
        [2], [25], [7], [50], [12], [75],
        [3], [30], [8], [55], [13], [80],
        [4], [35], [9], [60], [14], [85],
        [5], [40], [10], [65], [15], [90],
    ),
)

== Missile Fire

Troops may not use the missile fire rules when within melee range; for that it
is assumed that they are using a combination of their missile weapons and any
melee sidearms, guards, portable defenses &c. and the normal melee rules are
used.

To resolve missile fire a body of missile troops — and only those parts of the
body that actually have missiles — makes a Save.  At minimum this is a
second-level Save (target 25).  If the Save is successful, then the margin of
success — the target value subtracted from the roll — determines the FPs of
damage dealt to the unfortunate victim.  For example, a roll of 56 against a
target of 40 would deal 16 FPs of damage.

The base level Save depends on distance:

#table(
    columns: 2,
    align: center,
    table.header(
        [Distance (meters)], [Level of Save]
    ),
    [1 — 5], [1],
    [6 — 50], [2],
    [51 — 100], [3],
    [101+], [4],
)

However, this assumes the target is a mass body of troops, or a large creature
such as a giant or dragon;  if not, a multiplier should be applied to the level
of the save:

#table(
    columns: 2,
    align: (left, center),
    table.header(
        [Target Size], [Multiplier],
    ),

    [Man-sized to large (5'—12')], [×2],
    [Small animal to child-sized (2'—5')], [×3],
    [Smaller animals, fairies (4"—2')], [×4],
    [Coins, locks, eyes (4" or less)], [×5],
)

Additional multipliers or divisors can be applied at the referee's discretion
for surprise, outflanking, target formations, etc.

== Siege Engines/Artillery

Siege engines (trebuchets, ballistae, and the likes) have a similar FP as do a
body of troops, but there are a few differences:

- Siege engines attacked in melee are destroyed if unguarded, or if their guards
  are repelled by enough of a margin to destroy the siege engine.
- The target number is not subtracted from a siege engine's damage on a
  successful hit; if they exceed the target number, full damage is dealt.
- Kinetic siege engines (catapults &c) are usually aimed at one target (part of
  a castle); true artillery is not possible without gunpowder or magic.  In
  practice that means they are not usually aimed at troops.

#image("img/ballista.svg", height: 50%)

#pagebreak()

= Magic

Magic for Strategos T.  These rules assume the use of Fighting Power
(FP) as in other sections of the rules.

== Magic-Users

Magic-users, or Mages, are a special class of Hero, and they use the
same Advancement rules as do Heroes, with the exception that a mage
may not be raised from ordinary soldiery; apprentice mages must study
under a master since childhood in order to open their mind to the
magical arts.

Mages do not specialize in melee combat.  In a melee, mages only use their full
FP value if they have support from soldiers (of at least 20 FP).  If not, they
fight with 2:1 odds against them.

Instead, the strong point of mages is in their ability, naturally, to use magic.
By default the use of their FP in melee or at range assumes that the mage is
fighting using cantrips or the like.  However, mages *also* have a reserve of
mana called *Magic Dice (MD)*.  This reserve is the same as their dice rolled
in Skirmish Combat — one die plus one every ten FPs over 0, i.e. their FP
divided by 10, plus one.  In practice this means all mages will have at least 9
in reserve.

Once per combat turn (minute), Mages may "spend" their MD to cast more complex
spells.  One die is rolled per MD spent (the number spent up to the mage); dice
that come up 1–3 are returned to the mage's pool of MD, others are spent.  A
full night's rest restores the mage's MD completely; otherwise, one die per hour
rested is restored.

It bears emphasis that magic-users may be of any gender.  The ability to wave
one's hands around and speak in a stentorian voice is not limited to any one
gender in particular.  Witches for example are the same as any other magic-user
in terms of training and skill.  A master witch (grandmother) apprentices a girl
since childhood, and when she reaches adulthood she is a full blown 80–89 FP
magic-user just the same as if she had studied under any other master.  Any
other details are setting-dependent.

== Counterspells

When a mage casts a spell by spending MD, an opposing mage may attempt to
counterspell, using their magic to disrupt the opponent; the same procedure as
for casting an ordinary spell, they choose dice to roll and regain them on a
1–3, spend them otherwise.  If the sum of the dice they roll exceeds the
target's, the spell is countered and does not have any effect.  This counts as
casting for the purpose of dispelling invisibility.

== Spellbook

Any spell that the referee and players agree would make for a fun time may be
cast.  Care must be taken, of course, to not upset the balance of the game with
overly powerful spells; an appropriate cost in MD (and possibly the need of
difficult conditions to cast a spell, such as special equipment or ingredients)
should see to balance.

/ Dice: refers to the number of Magic Dice (MD) rolled to cast the spell.
/ Sum: refers to the sum of all MD rolled in casting the spell.

#table(
    columns: 2,
    align: (left, left),
    table.header(
        [Spell], [Description],
    ),
    [Cloudkill], [A 3" deep, 6" wide, 3" high cloud of poison gas created.  Any creature of less than 70 base FP in the cloud dies instantly. Moves 6" per turn away from mage for *Dice* turns.],
    [Elemental], [Elemental of *Sum*×4 FP is summoned.  Caster must maintain control; either banish or *Dice* level Save every 5 turns.],
    [Explosion], [Fireball, lighting bolt, etc. (*Sum*) damage divided by two within area (6" diameter)],
    [Gloom], [Darkens the whole battlefield, as if it were twilight.  Dissipated after *Dice* turns.],
    [Grease], [3" pool of slippery, flammable grease is created, lasts for *Dice* rounds.],
    [Knock], [Violently unlock (*Dice*) doors, chests, etc.],
    [Magebolt], [Blast one target with lightning, fire etc. *Sum* damage.],
    [Seal], [Lock something.  Cannot be picked; for the purposes of _Knock,_ counts as *Dice* locks.],
    [Slowfall], [*Dice* targets, when airborne, fall to the ground slowly, like a feather, negating fall damage.],
    [Timeshift], [Slows (half-speed) or speeds up (double speed) *Dice*×2 targeted creatures.],
    [Transmute], [User transforms into a creature of their choice, up to giant-size. *Dice* turn duration.],
    [Vanish], [*Dice* targets disappear (become invisible).  Only through being detected or through attacking or casting spells do they become visible again.],
)

== Other magic (cantrips)

Mages learn a grab-bag of useful little tricks too long to enumerate here. These
include blowing fancy smoke rings, causing a torchlight to appear on the end of
a finger or staff, lighting a fire without tinder, mending small breaks in
clothes or tchotchkes by enclosing them with their hands, and the likes.  Some
witches use their cantrips to help around the village, acting as "wise women"
much needed by the community; indeed, any mage can make a living acting as a
kind of magical handyman.

A mage that knows only cantrips, and that has not had a proper apprenticeship
(i.e. has less than 70 FP), is known as a hedge wizard or rogue mage.  They may
advance, but will require a journeyman period and access to a source of magical
knowledge (such as a magical library or another mage to teach them).

#pagebreak()

= Orders of Battle

Army building, and building heroes and personalities for use in Strategos
T. These rules assume the use of Fighting Power (FP) as in
other sections of the rules.

== Building Characters

Player characters (as used for an RPG) will generally be one of two
types — heroes, or "fighters", and magic-users.  As above, these can
be placed into an army, but for a campaign game, one may wish to
control one or more heroes over the course of several games.  The
Advancement rules can be used to handle the growth of these heroes
over time.

Unlike for other games, character creation is extremely brief and only
includes one (optional) dice roll; it is also trivial to create
characters at any level:

1. Determine individual talent (TAL), 0–10, higher is better.  An easy
   way to do this randomly is to roll two dice and subtract two from
   the result (2d6-2); or rolling one ten-sided dice and subtracting
   one (1d10-1).
2. Fighting Power (FP) is 60 + (20×level) — i.e. 80 at first level,
   100 at second, etc. — plus the assigned TAL.
3. Record FP & TAL, and optionally assign a gender, name, backstory,
   &c.

== Points Buy

An army can be built, and kept somewhat equal, through use of a
_points buy_ system.  Players and/or referee agree to a total for each
side; then each side "buys" troops until they meet the total.  1200
points will allow for a large, interesting battle with a variety of
troops.

#table(
    columns: 3,
    align: (left, center, center),
    table.header(
        [Troop Type], [FP range], [Cost],
    ),

    [Light Infantry], [10–19], [2],
    [Regulars], [20–29], [4],
    [Elite Infantry], [30–39], [5],
    [Light Cavalry], [20–29], [6],
    [Medium Cavalry], [30–39], [8],
    [Heavy Cavalry], [40–49], [10],
    [Hero/Monster], [80+], [\*],
    [Mage/Dragon], [80+], [†]
)


\* Heroes cost 30 + 10 per level (so 40+).  Monsters cost the same as a hero
or troop of equivalent FP.

† Mages cost 90 + 10 per level (so 100+).  Dragons cost the same as a mage of
equivalent FP.


#pagebreak()

== Barkerese Units

Using rules not unlike those in Phil Barker's _De Bellis Antiquatatis_ or
_Hordes of the Things,_ an army can be built from *units* (each representing a
company, batallion, or regiment of troops; or, a few heroes and their
retainers).  One has a number of Army Points (AP) to spend, 24 as standard; and
the units one can buy are as follows (with the caveat that at least half the
total AP must consist of 2 AP or 1 AP units):

#table(
    columns: 4,
    align: (center, center, left, left),
    table.header(
        [AP], [Points], [Unit], [Example composition],
    ),
    [6], [300], [Aerial Hero], [Super Hero (160+ FP) atop dragon (280 FP)],
    [4], [200], [Paladin], [Super Hero (160+ FP), retainers],
    [4], [200], [Heroes], [Super Hero (160 FP) & heroes (80 FP); retainers],
    [4], [200], [Magician], [Wizard (160 FP) & guards],
    [4], [200], [Dragon], [Dragon (280 FP)],
    [3], [150], [Sneakers], [Skirmishers (40×20 FP)],
    [3], [150], [Cleric], [Hero (80 FP), retainers],
    [2], [100], [Knights], [Heavy cavalry (10×40+ FP)],
    [2], [100], [Riders], [Medium (12×30+ FP) or light cavalry (16×20+ FP)],
    [2], [100], [Blades], [Infantry (20×30+ FP or 24×20+ FP)],
    [2], [100], [Spears], [Infantry (20×30+ FP or 24×20+ FP)],
    [2], [100], [Shooters], [Light infantry with bows (40×10+ FP)],
    [2], [100], [Warband], [Light infantry without bows (50×10+ FP)],
    [1], [50], [Horde], [Rabble (25×10 FP)],
    [1], [50], [Lurker], [Land-bound monster (60 FP)],
)

The HOTT second edition/version 2.1 book has an extensive list of
sample armies, as well as a simple campaign system, and is recommended.

#v(1fr)

#image("img/knight.svg")

#pagebreak()

= Table S — Melee/Charge Multipliers

Any multipliers than mention charging do not apply on second or
further turns of melee combat.

== General Considerations

1. A unit that stands and takes a charge, or that is interrupted while moving or
   taking an objective, is considered to be a defender.  Their opponents are
   considered to be attackers.
2. When defending against other infantry, infantry get 3:2 odds in the
   defender's favor.
3. At the referee's discretion, or should the player argue it successfully, odds
   of 2–3 may be applied to a unit which has an applicable advantage; e.g. set
   spear walls VS charging cavalry.

== Charging Formations

1. Infantry in line formation charged by cavalry: 2:1 in favor of infantry.
2. Infantry in column formation charged by cavalry: 1:1
3. Infantry in other formations or changing formation charged by cavalry: 5:1
   favoring cavalry.
4. Cavalry (defender) charged by cavalry (attacker) and not counter-charging:
   12:1 favoring attackers.
5. Infantry moving, but not charging, charged: 2:1 for those charging.

== High Ground, Defenses

For the purposes of these rules:

- A *Gentle Slope* (less than 14°/25%) is a slight incline that does not slow
  infantry or cavalry and vehicles only slightly.
- A *Moderate Slope* (up to 26°/50%) is a serious hill where movement is
  halved; one where vehicles can only ascend or descend.
- A *Steep Slope* (greater) is impassable for cavalry and vehicles; infantry
  may not travel through these in formation.

1. Cavalry charging downhill suffer reduced odds —
   1. 2:1 against the cavalry on a gentle slope;
   2. 4:1 against the cavalry on a moderate slope;
   3. Cavalry may not charge down a steep slope.
2. Defenders on high ground gain advantage if attacked by downhill troops:
   1. 3:2 for defenders attacked up a gentle slope;
   2. 3:1 for defenders attacked up a moderate slope;
   3. 6:1 for defenders attacked up a steep slope.
3. Assuming fortified defenses use a form of Fighting Power for their
   relative strength, defenders behind those defenses attacked from
   outside them get odds against attackers proportional to every 100
   FP of the defenses. For example, a 500 FP curtain wall grants 5:1
   odds to defenders.

== Surprise

Troops charged by troops they were not aware of before this
turn face reduced odds:

1. If the defenders are in line formation: 3:2 in favor of the attacker.
2. If the defenders are in column formation: 3:1 in favor of the attacker.
3. If the defenders are skirmishing: 2:1 in favor of the attacker.
4. Defenders charging another target, entering melee,
   forming up: 4:1 for attacker.

== Outmaneuvering

1. When defenders are flanked: 2:1 in favor of the attacker.
2. When defenders are attacked from the rear: 3:1 in favor of the attacker.
3. If one side is fatigued and the other is fresh, 4:3 in favor of the fresh
   troops.
   - Troops become fatigued if they spend 10 minutes (turns) moving without
     rest; or if they spend at least 2 turns in melee;
   - Fatigued troops that rest for 10 turns without moving may be
     considered fresh.
4. If defenders are re-attacked within one turn after repelling an attack: 3:2
   for attacking infantry; 2:1 for attacking cavalry.  Applies throughout the
   melee.

== Fantasy Combat

1. Magic-users facing any other unit when the mages are not supported by at
   least regular (20+ FP) troops: 2:1 against the mages.
2. Sped-up troops facing normal-speed troops: 2:1 in favor of sped-up troops.
3. Slowed troops facing normal-speed troops: 2:1 against slowed troops.
4. Sped-up troops facing slowed troops: 4:1 in favor of sped-up troops.
5. Swordmaster in duel: 3:2 in favor of swordmaster.

= Table T — Melee Results

Table T resolves melee combat using the following process:

1. Determine odds, `x`:1, ratio of Effective Total.
2. Side with favored odds may roll once per `x`.
3. Unfavored side rolls once.
4. Side with greater roll wins the round.
5. Difference in dice determines magnitude of the victory, as below.
   Morale changes; victor may pursue for no. turns before slash,
   capturing proportion after slash.
6. Winner's losses: (loser's die roll - 1)% of loser's initial FP (0–5%).
7. Loser's losses: (winner's die roll +1)% of winner's initial FP (3–7%).

#table(
    columns: 3,
    align: (right, center, left),
    table.header(
        [Effect on Winner], [Diff.], [Effect on Loser],
    ),
    [Fighting continues], [0], [Fighting continues],
    [Morale: Shaken], [1], [Morale: Shaken],
    [Morale: Shaken], [2], [Morale: Disordered],
    [Morale: Normal. Pursuit: 5/¼], [3], [Disordered.  Pursuit: ¼ missing #frac(3,4) routed],
    [Morale: Flushed. Pursuit: 10/½], [4], [Disordered. All missing if pursued.],
    [Morale: Enthused. Pursuit: 10/1], [5], [Disordered.  All surrender if pursued.],
)

#set page(
    margin: 1cm,
    footer: none
)

= Appendix A: Cosmopolitan Strategos

To convert creatures, monsters, or soldiers from "old-school" games to
Strategos T, assign 20 FP per hit die; then, if hit dice or fighting
abilities seem higher or lower, reduce or increase by 10 FP.  For
mounted, four-legged, or larger creatures, treat them as mounted and
add 10 FP.  For example:

#table(
    align: (left, center, center, center, center),
    columns: 5,
    table.header(
        [Creature],
        [Hit Dice],
        [FP],
        [Dice],
        [Bonus],
    ),
    [Goblin Swarmer], [#frac(1, 2)], [10–19], [2], [5–9],
    [Orc Raider], [1], [20–29], [2], [10–14],
    [Goblin Wolf-Rider], [1], [30–39], [3], [15–19],
    [Hyenafolk Berserker], [2], [40–49], [5], [20–24],
    [Cockatrice], [5], [100–119], [11], [50–54],
    [Troll], [6+3], [130–139], [14], [65–69],
    [Dragon], [12], [240-249], [25], [120–124],
)

For new-school games (those that take you Next or Beyond), each
#frac(1, 4) of Challenge Rating (CR) is 10–20 FP, plus 1–9 at your
discretion.

= Appendix B: Simple Resolution with Dice

Only roll dice if there is a chance of failure, and if both success
and failure lead to interesting outcomes.

Start with a base 50/50 chance — rolling 7+ on two dice.  For each
argument made in favor of a positive (success) outcome, subtract one
from the target number (making it easier).  For each argument in favor
of a negative (failure) outcome, add one to the target number (making
it harder).  No more than ±3 bonus/malus can be applied.

= Appendix C: Design Notes

The core of this system is "Fighting Power," a libre version of the
"Monster Rating" system from _Tunnels & Trolls._ I always thought this
was a very elegant system, but it was wasted by being limited to just
monsters — notwithstanding the desire of RPG players for their
characters to be mechanically special and unique!  I love how simple
this makes character creation, too.  One dice roll, and that one
optional — now _that's_ what I call rules-light!  Skirmish Combat
should thus, by-the-by, be very recognizable to those that have played
T&T before.

I combined this with my thoughts on the flexibility of the "hit dice"
and "troop type" mechanics from early _Dungeons & Dragons_ (especially
with influence from the earlier _Chainmail)_ to hopefully provide a
simple framework that can fit in your head, but that will nonetheless
scale both up and down to action of any size.

The use of the _Strategos_ rules is of course most notable in the
inclusion of *Table S* and *Table T*. This deceptively simple system
of multipliers is, in my opinion, far superior to the endless series
of "modifiers" seen in newer versions of the first fantasy game.  If
you can reckon the "edge" that some particular situation gives, aside
from the small boost from equipment or a mount, you can potentially
extend it endlessly.

The game is yours now — treat it well! #h(1fr)— japanoise
