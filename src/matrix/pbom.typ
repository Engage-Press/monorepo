#import "@local/LibEngage:1.0.0": meta, shapes, typography, units
#import units: inches

#show: doc => meta.engageDoc(
    author: "Chris Engle",
    "Politics by Other Means",
    doc
)

#set page(columns: 2)

= Politics by Other Means

This is a miniatures wargame. It is about moving and shooting. What
makes it special is that you can do more than just fight. Hit units
get to try to save themselves and unexpected events can happen at any
time. Ready to play? The game starts with players picking sides. They
take turns moving and shooting. The youngest player goes first then
play passes to the right around the map.

== Units

Players command around 20 stands of troops. Assume that each stand
represents 100 men so an 8 stand unit is a battalion. The player is
effectively a brigadier general.

== Movement

Roll one six-sided die for each unit to see how many inches it
moves. You may move up to that number but don’t have to move that far
or to move at all. End the move pointed in whatever direction you
want. Once the moving is done you can start shooting.

#figure(
    caption: [Movement Speeds],
    table(
        columns: (6em, 6em),
        table.header(
            [Unit],
            [Move],
        ),
        [Infantry], [1d6],
        [Cavalry], [1d6+1],
        [Artillery], [1d6-1],
        [Vehicle], [1d6+4],
        [Other], [1d6-1],
    )
)

== Shooting

Units can fire at any target in range that they have a line of sight
on. Roll one six-sided die per stand firing. A six scores a hit. Hit
stands are destroyed (unless they are saved by an argument). Remove
dead stands from the table.

#figure(
    caption: [Combat Ranges],
    table(
        fill: (_, y) => meta.repeatingStripesFill(
            (
                white, white, white,
                silver, silver, silver,),
            y
        ),
        columns: 2,
        table.header(
            [Weapon],
            [Range],
        ),
        [Hand to hand], [1 inch],
        [Thrown weapons], [3 inches],
        [Bow], [6 inches],
        [Musket], [6 inches],
        [Rifle], [12 inches],
        [Machine gun], [24 inches],
        [Cannon], [24 inches],
        [Rifled Artillery], [48 inches],
    )
)

== “I’M NOT DEAD!”

Destroyed stands get a chance to survive. The player makes up a short
argument explaining why they are not dead. They pick another player to
be their referee. The referee decides what the player has to roll for
the argument to succeed. At first it is best to rule all arguments
“average”.  As the referee gains confidence in their judgement they can
branch out into other strength ratings. The player rolls and their men
either live or die.

Roll one six-sided dice. A roll equal to or greater than the target
number means the argument happens.

#figure(
    caption: [Argument Strength],
    table(
        fill: (_, y) => meta.repeatingStripesFill(
            (
                white, white, white,
                silver,silver,
                white, white,
                silver, silver
            ),
            y
        ),
        columns: 2,
        table.header(
            [Strength],
            [Target]
        ),
        [Very Strong], [2+],
        [Strong], [3+],
        [Average], [4+],
        [Weak], [5+],
        [Very Weak], [6],
        [Stupid], [7],
    )
)

== Unexpected Events

Each unit starts the game with ten tokens. At any time they can
interrupt play and cause something unexpected to happen. They pay a
token and make up an argument for why the unexpected event should
happen. They pick an enemy player as referee. The referee decides what
they have to roll and the player rolls. The event happens or it
doesn’t. Unexpected event arguments can be used to modify the game
rules.

Players may also pay a token and make a counter-argument. They say
what really happened, then pick a referee and roll. If it happens it
overwrites the first player’s argument but they may then counter-argue
to turn it back. Once players run out of unexpected event tokens they
are at the mercy of the other players.

== Ending The Game

The game ends when one side loses all of its units or uses up all its
unexpected event tokens.

== Changing The Rules

It is a good idea to use unexpected event arguments to modify the
rules in your favor. Make a side have a better chance to hit, get to
fire more, move farther, or even make up morale and terrain rules. The
rules only last for one game. The next battlefield starts off with a
clean slate.

== Afterword

I first wrote Politics by other means in 1999 and have written many
variations on it over the years. I’ve used it in everything from
ancients to sci fi miniatures games. It is meant to be a quick, fun
convention game. It is not meant to be a serious simulation.

_Chris Engle 2018_

#set page(columns: 1)

= Campaign Games

Players can link a series of battles into a mini campaign.  When this
is done the rules of one battle carry over to the next battle.  So the
rules of that war evolve as the game is played.  Each war is thus
unique.

In-between battles roll 1d6 to see how many arguments the players get
to make to prepare their troops for the next battle.  Preparation, not
fighting, wins wars.

If players want more meat to their campaigns, they should try a
Military Campaign Matrix Game.

= Toy Battlefields

Half of the fun of miniatures battles is moving neat little soldiers
around on interesting toy battlefields.  The more detailed the terrain
the neater the game.  Be warned, terrain making and figure painting is
addictive.  You will spend hours in great contentment and joy
preparing games for your friends.  But it is time well spent.

#let big = 12pt

#table(
    inset: 0.6em,
    stroke: 1pt,
    fill: none,
    columns: 4,
    align: center+horizon,
    table.header(
        text(big, weight: "bold")[Terrain],
        text(big, weight: "bold")[Basic],
        text(big, weight: "bold")[Good],
        text(big, weight: "bold")[Great],
    ),

    text(big, weight: "bold")[*Ground*],
    [A green table cloth or green felt.],
    [A flock-covered terrain mat.],
    [Sculpted terrain boards.],

    text(big, weight: "bold")[*Trees*],
    [Circles of green cloth to show forests.],
    [Green lichen put on green cloth circles.],
    [Individual toy trees with green lichen.],

    text(big, weight: "bold")[*Hills*],
    [A book underneath the cloth.],
    [A free-standing hill sculpture.],
    [A hill sculpted into the terrain board.],

    text(big, weight: "bold")[*Roads*],
    [Strips of brown cloth or tape.],
    [A strip of kitty litter sprinkled on the mat.],
    [Permanent roads built into the board.],

    text(big, weight: "bold")[*Rivers*],
    [Strips of blue cloth or blue tape.],
    [Strips of blue plastic.],
    [Permanent rivers built in the board.],

    text(big, weight: "bold")[*Buildings*],
    [Boxes and pieces of wood.],
    [Toy buildings.],
    [Scale-built buildings or sculpted cities.],
)

= Setting Up Battles

== Why is this battle happening?

Real battles never happen in isolation.  They are fought for reasons.
To run a successful miniatures game the players need to know why they
are fighting.  Mind you, the reason does not need to be a good one!
War is full of stupid fights.  So decide what the fight is about when
setting it up.  Maybe one side needs to hold a hill or defend a town.
Maybe they need to get supplies through or break a siege.  It doesn't
matter what as long as there is a reason.

== Zen and the Art of Terrain Placement

Laying out terrain on a battlefield is like painting a picture.  There
need to be lots of details but there also need to be empty spaces.  A
game with around 25 stands per side looks best on a
#inches(24)x#inches(24) battlefield.  (Figures take up 10% of the
space.)  On the field there need to be 3 to 6 big terrain features.
People's eyes (and little men) will be drawn to them.  The terrain
features do not have to be evenly distributed.  Bunch several together
and have large open spaces elsewhere.  The end result is like a
Chinese bamboo painting.

= Different Scales of Battle

#set text(9pt)

#grid(
    columns: (16fr, 5fr),
    align: (left, center),
    gutter: 1em,

    [

        Depending on the size of figures used, miniatures battles
        appear to be very different.  "Politics by other means..."
        works well with figures as small as 6mm and as large as 30mm
        without changing ranges or movement. 30mm and 25mm figure
        games look like skirmishes where each stand represents a squad
        or platoon of men rather than a company.  20mm and 15mm figure
        games look like battles, where a stand represents a company.
        While 10mm and 6mm figure battles begin to look grand
        tactical, with each stand representing a battalion.  Strangely
        the weapon ranges and movement seem to feel right even though
        the size of the battle is different.  The explanation is that
        the length of each turn in real time is different.  Skirmishes
        5 minutes, battles 15-30 minutes, grand tactical 1 to 2 hours
        a turn.

    ],

    [
        *Figures*

        54mm Man-to-Man actions

        30mm and 25mm Skirmishes

        20mm and 15mm Battles

        10mm and 6mm Grand Tactical
    ],

)

== Credits & History

Matrix Games were invented by Chris Engle in Bloomington Indiana in
1988, an evolution of wargaming campaigns such as those run by Tony
Bath, Paddy Griffith's "muggergames", RPG campaigns such as Dave
Arneson's Blackmoor, & the ancestors of D&D in the "Braunstein" games
run by Dave Wesely.  Engle's "Campaign In A Day" approach favored
words and reason over statistical abstraction and mathematics.

Engle Matrix Games are copyright Chris Engle and licensed under the
Creative Commons Attribution-ShareAlike 4.0 International
(CC BY-SA 4.0) license. If you create derivative works, please include
the sentence, "Matrix Games were invented by Chris Engle."

This presentation of the "Politics by other means..." Matrix Wargame
rules was created by japanoise in 2025, and is licensed CC~BY-SA~4.0.
She humbly asks you to direct any monetary support to Chris Engle, or
failing that to a charity doing good work for marginalized groups,
such as _#link("https://mermaidsuk.org.uk/")[Mermaids]_ in the UK.
