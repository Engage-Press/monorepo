// Body & Heading font - Jost*, a free Futura clone
// Add stylistic set 1 to use single-story a
#set text(stylistic-set: 1, font: "Jost*")
#show emph: it => {
    // When emphasizing, disable stylistic set 1 to retain the a shape.
    text(stylistic-set: none, style: "italic", it.body)
}

#set page(
    // us-letter could be replaced with a4 here I believe.
    // However, we may want to tweak the margins in that case.
    paper: "us-letter",
    margin: 1.5cm, //(x: 1cm, bottom: 1.75cm, top: 1cm),
    columns: 2
)

#set document(
    title: [Risa - Tropes & Troublemakers],
    author: "typeset by japanoise",
    keywords: (
        "Role-playing",
        "Comedy",
    )
)

// I'm not sure about the callout boxes being necessary, but if we do
// want to keep them, it makes sense to centralize their design.
#let callout(style: "italic", content) = {
    // Set the text style; see above note about single-story a
    set text(style: style, stylistic-set: if (style == "italic") {
        none
    } else {
        1
    })

    block(
        fill: rgb("b4c7dc"),
        inset: 8pt,
        content
    )
}

// Title/logo - I like the slight cheekiness of Cooper Black for this,
// so use Cooper*, a free version.
#align(center, text(font: "Cooper*", weight: "black", 24pt, "RISA: TROPES & TROUBLEMAKERS"))

#set par(justify: true)

= Character Creation

Characters are comprised of *TROPES*, a broad range of attributes and
abilities that defines that character’s core concept. Things that are
classes in other games like “Wizard”, “Space Smuggler”,
“Detective”. Your tropes implies a lot of different things that are
inherent to your character’s type.  A Space Smuggler knows how to
navigate the vast expanses of space, can pilot various different
space-ships and probably brags about a famous run in 12 parsecs.

To create a *RISA* character, come up with a *CORE TROPE* (Star-ship
Captain, Superspy, Angry Lizard-man Set on Conquering Earth) and then
create 2--3 other related tropes to round out your character’s
abilities. Tropes are rated by *PROFICIENCY DICE* a number of
six-sided die that you’ll roll to attempt actions in game. One die is
an *Amateur,* three dice is *Skilled* and six dice (the highest) is an
*Expert.*

You have 10 proficiency dice to apply to your tropes. _Starting
characters may not have more than 4 die in any trope to begin with._
The first trope you list is the trope that your character most
identifies themselves with, their *Core Trope,* the essence of the
character. Create a brief description and name for your character and
then apply Proficiency Dice to it's tropes. If you wanted a *Star-ship
Captain* you'd create something like this:

#callout[
    *Captain Jan Way*

    *Description:*

    Jan is the staunchly disciplined, battle-hardened Captain of the
    Traveler. Lost in space, she fearless leads her crew through the
    unknown parts of the galaxy in search of home.

    *Star-ship Captain* [4]\
    *Xeno Species Cultures* [3]\
    *Exo Planet Survivalist* [2]\
    *Quick Improviser* [1]
]

== Abilities, Equipment and Special Items

Your trope assumes abilities and equipment that your character
commonly has or has access to. The *Star-ship Captain [4]* would have
a star-ship and a crew, a slick fleet uniform, and when diplomacy goes
sour, most likely a handheld energy weapon of some sort.

Each *Trope* has a toolkit that comes with the trope, but these can be
lost or damaged and may effect the trope's *Proficiency Dice.* The
*Star-ship Captain [4]* that loses their ship to the *Mad Robot
Collective [6]* can't flee the galaxy for safety and may only operate
at half their dice *(Star-ship Captain [2])* due to the crew's low
morale. The *Wandering Wizard [3]* without their trusty staff can only
perform cheap parlor trick without the staff focusing their power.

Over the course of the adventure characters may find equipment or
special items that grant them a bonus to their die roll or grant a
special ability. A magical sword of reversal that swaps your die roll
with your opponent's. Targeting Cyber-Shades that make it so you never
miss.

= The System

Unopposed actions that aren't automatic are determined by rolling your
trope's dice against a *TARGET NUMBER (TN)* --- the number you must
meet or beat to succeed in an action. The scale of difficulty is:

#callout[
    *5* --- Challenging for Amateurs, automatic for Skilled characters

    *10* --- Challenging for Skilled characters

    *15* --- A mighty big challenge for Skilled characters, anything
     that is technical or unlikely

    *20* --- Challenging even for an Expert

    *30* --- Next to impossible, the domain of Superheroes and GODS
]

Any trope can attempt any action but, depending on the trope, have a
lesser or greater chance of success. A *Super Beefy Survivalist Guy
[3]* would have a mighty challenge (TN 15) wrestling a shark, but an
*Olympic Gymnast [3]* would have a staggering *[TN 20]* for success,
while a super-powered *Gorilla Girl [3]* wouldn't even break a sweat
and would automatically succeed.

== Combat

Combat is considered any type of contest between two or more
opponents. This can be arguing lawyers in a murder case, race car
drivers vying for the championship, two drunks trying to win over the
same girl in a karaoke sing-off or just a plain old boxing bout.

Once a combat has commenced actions take place in *rounds,* with each
opponent making one action per round. Players describe or roleplay
their actions, the GM decides what is a valid trope to use for the
contest. *Hotdog Eating Champion [3]* is a valid trope for an eating
contest, but not for a wrestling match.

Both opponents roll their chosen trope's dice, the lowest roll
loses. If you lose a combat round, you lose one die from the trope you
used. You can use different tropes throughout each round, as long as
the trope is a valid one for the current contest. The *Eloquent
Caveman Lawyer [3]* can lose and argument bringing her proficiency to
[2], then can use her *Prehistoric Charmer [3]* trope if she wants to
next round. Once any one trope goes to [0], that player loses, even if
other tropes have die left, and the winner chooses what happens to
their opponent.

The GM determines how long it takes to heal lost dice. The battered
vocal chords of the *Drunken Karaoke Singer* needs a hot cup of tea,
and to sleep off their hangover. After retrieving her battle-scarred
star-ship, the *Star-ship Captain* has to warp back to Gamma Station 3
and do deck repairs for a week. To fully heal sometimes you'll have to
satisfy different conditions. The *Angry Lizard-man Bent on Conquering
Earth* has to explain to his dad, the *King Lizard of the Under-Earth,*
why the puny humans bested his plan for world-domination.

Time is context based. There are no standard units, a combat round can
be mere seconds like two parkour experts free-styling along a
building's edge or jealous gods wrestling for power over eons.

#callout(style: "normal")[

    _*Unsuitable Tropes*_

    The GM will determine what tropes are suitable or unsuitable for a
    contest. In a fight *Monkey That Knows Jujitsu* is suitable,
    *Sentient Rotting Ham-Sammich* is not. Unsuitable tropes are
    allowed, _but the player must explain their action in the most
    amusing way possible._ The action must also be possible in the
    tone and context set by the GM for the game. The *Sentient
    Ham-Sandwich* could trick the *Monkey That Knows Jujitsu* into
    eating a part of it by talking about how good it would taste after
    all those exhausting jujitsu moves, and then upset the monkey's
    stomach with it's rotted meat! _If the unsuitable trope wins, it's
    opponent loses three die instead of one, but the unsuited trope
    only loses one die if it fails._

    The combatant that initiates the fight, is the one that determines
    the type of fight. If the *Sentient Rotting Ham-Sammich* and the
    *Monkey That Knows Jujitsu* are arguing who is smarter and decide to
    settle it by competing in a spelling contest, then it's a battle
    of wits where the sammich and monkey have suitable tropes. On the
    other hand, if the monkey takes a flying kick at the sammich, it's
    a martial duel where the sammich would be an unsuitable
    trope. Whereas if the sammich taps into its putrid aura,
    permeating the air with its rotting stench, then the monkey would
    be unsuited (unless it's a *Jujitsu Monkey Wearing a Gas Mask*).

]

== Team-Ups

A team is formed when when multiple characters join together. The team
attacks as one group, and can only be attacked as one group. There are
two types of teams: one is comprised of player characters, or NPCs and
the other is groups of faceless goons for underlings and monster
swarms.

=== Character Team-Ups

When multiple player character, NPCs or both form a team, _use the
trope with the highest Proficiency Dice to be team leader._ The whole
team rolls, but _only the team leader's dice are used for actions._
Only sixes are counted from the other members of the team.

Tropes don't have to be similar in a team, and can be a mix of
suitable and unsuitable. However, the opponent won't lose three die
like individual unsuited tropes, _unless the whole team is comprised
of unsuitable tropes,_ in the case of such the team will have to
explain why exactly a *High School Gym Teacher,* a *Late Night Talk
Show Host* and a *Overworked Barista* are taking on a *Giant Hamster
from Mars.*

A team that loses a round of combat reduces one member's contributed
trope by one die. If a member chooses voluntarily to reduce their
trope, the trope is reduced by twice the loss (two for a suitable
trope, six for an unsuitable), _in the honor of their valor the team
leader rolls a *Retribution Bonus: double dice next round.*_ If a
member doesn't choose to reduce their die, the team leader will choose
somebody, their trope will only be reduced by one, die and there will
be no Retribution Bonus.

Whoever wins when a team is in a contest declares what happens to the
loser same as individual contests, but if a member of the team loses,
the consequence is determined after the team-up ends. If their team
wins, the team gets to decide the outcome of their member's loss, not
whoever they're fighting.

Teams can be disbanded between rounds, _but every member loses a die
from whatever trope they'd been contributing to the team._ New teams
can be formed from disbanded members, as long as the die loss doesn't
result in their defeat. _Lone members can disband as well, but they'll
drop to zero dice and be sidelined until a victor emerges from the
contest._

_When the team leader is defeated, the team is disbanded and each
member loses a die each._ A new team can be formed from the former
members with a new team leader chosen. If the team leader was defeated
by choosing to take damage, the leader of the new team can make a
Retribution Roll rolling double dice for the first round of the new
team-up.

=== Faceless Goons

For swarms of similar foes, you can band these foes together. Instead
of numerous *Super Villian’s Incompetent Minion [2],* you can instead
make *The Villain's Amassed Minion's [8],* which fight as one
unit. These goons fight as one until defeated, after which they will
tuck their tails and run, although at least one will remain for the
consequence of defeat determined by the winner.

This idea can also be applied to large geographical areas
(*Staggeringly Steep Mountain Pass [7]*), dangerous effects (*Downtown
City Block Ablaze [6]*), entire cities or countries (*Zombie Infested
City Ruins [8], The Kleptomaniac Kingdom Where No Possessions are Safe
[5]*).

#callout(style: "normal")[

    Single Roll Contests

    In the case of a quick contest between two combatants, a single
    roll is more prudent. Two characters reaching for the same thing,
    seeing who draws their gun first in a deadly high-noon duel,
    placing the winning bid at that evil art auction. The GM will
    determine which resolution (Target Number, Single Roll, Back and
    forth Battle) works best.

]

== Loaned Tropes

Tropes that don't have a relevant Trope, such as when the Long-Legged
Super-Sprinter [3] in the party enters the Galactic Council 100 Meter
Sprint, and the Sheepish Accountant for Mega-Lo Corp [3] can't
plausibly even imagine an unsuitable scenario for their trope
applying, to enter the race they can be given the temporary Loaned
Trope of Regular Guy Running as Fast as He Can [2]. This adds two die
to the Long-Legged Super-Sprinter's [5], but allows the Sheepish
Accountant for Mega-Lo Mart to participate for the length of the
run. This rule only is used in combat and single roll contests, not
for Target Numbers since the TN is adjusted accordingly to a trope's
ability to accomplish a specific task.

= Optional Rules

== Drawbacks

If the player chooses to come up with some drawback like a phobia
(“snakes, I hate snakes!”), a character flaw (raging narcissist), an
old injury (bum hip from fighting a yeti in the alps) or some other
impediment that can adversely effect their character sometimes, in
return they’ll be rewarded with an extra die to spend on their
starting tropes.

== Backstories

If the player comes up with an informative backstory for their
character: such as their past, who they used to be, what their beliefs
are, their outlook on life and their overall goals, the player will be
given an extra die to spend on their starting tropes.

== Boosts

A player can increase a trope with a *BOOST,* a one time increase that
lasts a single round but will decrease their trope by the same amount
as the boost. When the round is resolved the trope will lose dice
equal to the boost and must be healed the same as any other damage to
replenish their trope’s Proficiency Dice. For a really potent Boost,
do this with an inappropriate trope in a combat to take a much
stronger opponent down by three die, which can make the resulting die
loss even more worth the risky effort.

== Double Boosts

Double Boost tropes are tropes that only lose half the dice they use
to boost, but Double Boost tropes must be stated that they are Double
Boosted (denoted as such by [[ ]] double brackets: *Supremely Smug
Sorcerer of the Supreme [[4]]*) and are purchased a double the dice of
regular tropes. It may be the GM’s decree that these tropes only be
used for magic, supernatural and super-powered tropes.

== Progression

Once an adventure has ended, players rolls on each trope used in the
adventure to see if it progresses. This can only be a trope that was
used during the session. If the roll is an even number the trope
increases by one Proficiency Die, but cannot advance past [6] dice.

If a player does something astounding during a session, the GM may
allow the player to roll for an increase right on the spot (and still
allowing for the standard experience roll at the end of the session as
well).

New tropes can be added if the GM agrees that the player’s character
has grown enough to warrant expanding their skill-set. When this is
the case, the player can roll for new Proficiency Dice as usual, but
any gained can be applied to the new trope’s Proficiency Die total.

As a variant, the GM can opt to have characters roll on a single trope
of their choice to progress, instead of each trope used. Consider this
for longer campaigns.

= Credits

RISA would not exist without the man, the myth, the legend: John
C. Ross and his beautifully crafted RISUS: The Anything RPG. Many
thanks to John for creating a wonderful game that has brought Risus’
namesake: a smile, to many a gamer. Special thanks to the progenitors
of RISUS: Mayfair’s DC Heroes, Over the Edge, The Ghostbusters RPG,
GURPS, TWERPS, Fudge, Tunnel & Trolls and Dragonquest. Last but not
least, thank you to the RISUS community for keeping the game fresh and
full of new ideas!

/ kvasirofthewoods: designer
/ japanoise: typesetter of this document
/ Owen Earl: author of Cooper\* and Jost\*, fonts used

This work is licensed under CC BY-SA 4.0. See
https://creativecommons.org/licenses/by-sa/4.0/
for license terms.

Typeset using typst.app
