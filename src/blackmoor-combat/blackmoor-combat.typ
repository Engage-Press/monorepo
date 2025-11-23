#import "@local/LibEngage:1.0.0": meta, units
#import meta: repeatingStripesFill
#import units: feet, inches, feet-inches

#show: doc => meta.engageDoc(
    author: "japanoise",
    font-size: 10pt,
    "A Reconstructed Combat System for Blackmoor",
    doc
)

#set page(
    numbering: "1/1"
)

#set quote(
    block: true
)

#show title: set align(center)

#title()

#align(center)[
    Unleashed on an unsuspecting world by japanoise, building upon the
    ideas of too many people to name on one page!
]

#outline()

#outline(
  title: [List of Figures],
  target: figure,
)

#v(2fr)

#align(center)[
    Version 1.0, November 22 2025.

    Copyright #sym.copyright japanoise 2025, licensed CC-BY-SA 4.0;
    see https://creativecommons.org/licenses/by-sa/4.0/
]

#v(1fr)

#set page(
    columns: 2,
)

= Abstract

Dave Arneson's "Blackmoor" campaign is a direct ancestor of the
published _Dungeons & Dragons_ rules.  Blackmoor has been played by
the original players pretty much ever since it began in the early
1970s.  However, no complete elaboration of the rules Arneson used has
ever been published; in fact, all that remains of proto-D&D is
scattered notes from the man himself in a few poorly-organized
volumes, old secondary sources, and heavily gatekept manuscripts
unlikely to be forthcoming.

As a result, the nature of the original rules — and their connection
to the published rules with Gary Gygax — has long been a source of
speculation.  We likely will never know for sure exactly how combat
was run in Blackmoor.  But, with the information available, it may be
possible to speculate on and even to reconstruct the system used.
This article is one such approach at just that.

= Methodology

It has never been directly stated exactly how Blackmoor's combat
system worked.  Arneson did give us hints, mostly in Judge's Guild's
_First Fantasy Campaign,_ but he never laid his system out in plain
English.

However, several tidbits of information have
trickled out over the years that give us a more complete picture:

- _Chainmail_ points values are important parts of the puzzle.
- "Hit Dice" and "Hit Points" were both Arnesonian inventions; "Armor
  Class" is similarly Arnesonian.
- "Hit Dice" were actually *damage* dice.
- One's "Hit Points" were fixed, and as one grew in power, they
  actually got better at both dealing damage and at avoiding it rather
  than gaining more hit points.
- Armor was a factor in avoiding/absorbing damage, via a saving throw.

With this in mind, the starting point is as follows:

+ Blackmoor predates RPGs; but Arneson was an active historical
  wargamer and aware of wargaming's early pioneers.  Thus, influence
  from Don Featherstone and Tony Bath is extremely likely.
+ Player characters are more important and more "resilient" than
  monsters.
+ _Chainmail,_ _Strategos,_ and Featherstonian wargames were all
  _influential,_ but none are the sum total of the system.

= Summary

This section is a presentation of the complete combat system, without
extensive references to the sources. Full sources are provided in the
following sections.

== Definitions

/ Referee: the real-life person running the game (elsewhere called an
  Umpire, DM, GM, etc.)
/ Player: the real-life people playing the game
/ Creature: a player character or monster
/ Player Character: a named character with a character sheet/matrix;
  also an important NPC such as a villainous player's character or
  leader of a rival faction.
/ Monster: an enemy, especially a mook or flunky.
/ Armor class: descends from 5 for unarmored to 1 for plate armor,
  following naval tradition (plate is "first class" armor, i.e. the
  best).
/ Hit Dice: dice rolled for damage in combat, measured in points.
/ Points: the damage dealt by rolling one's Hit Dice.
/ Hits to Kill: ab. HTK — the points of damage a character or
  monster can take before they are defeated.
/ Armor Save: a roll of one's Hit Dice to attempt to utilize
  their armor and avoid being hurt.
/ Skill: a measure of character skill with a weapon or "non-weapon
  proficiency"; 1-12+, roll under on 2d6 to succeed; boxcars auto
  fail, snake eyes auto success.

== Initiative

When players are involved, the player characters act first, *unless*
the players dither, in which case the monsters go first.  The Referee
should silently count to ten after describing the situation and if no
orders are given or in the process of being given when they reach
zero, the monsters will go first.

When players are not involved (such as observing a combat, or the
Referee running a combat behind the scenes), dice for initiative.

== Monster attacking

The monster rolls their Hit Dice.  If the target is wearing armor,
remove any dice below the "To-Hit" number on @armor-targets. The sum
of the remaining dice is the damage dealt.

#figure(
    table(
        columns: 3,
        table.header(
            [Armor Class],
            [To-Hit],
            [To Save],
        ),
        [1 (Plate)],
        [5],
        [2],

        [2 (Chain)],
        [4],
        [3],

        [3 (Leather)],
        [3],
        [4],

        [4 (Shield)],
        [2],
        [5],

        [5 (None)],
        [Auto],
        [6],
    ),
    caption: [Armor target numbers],
)<armor-targets>

When a player character is attacked, they get the opportunity to
attempt to save.  They roll their Hit Dice; for each die that is equal
to or over the "To Save" number on @armor-targets (i.e. greater than
their armor class), cancel out one of the damaging dice (lowest
first).  The sum of any remaining dice is the actual damage dealt to
the player.

== Player character attacking

Player characters may choose between using their Hit Dice to attack as
do monsters, *or* by utilizing a weapon Skill.  These are values 2-12
on the character sheet, representing a character's training and
mastery of their chosen weapon.  If the player chooses to attack with
a weapon, they roll two dice, attempting to roll _under_ the weapon
skill value (boxcars is an automatic failure, snake eyes an automatic
success).  If they roll greater than the weapon skill value, they
miss; equal to or under the skill value, they hit.  They roll all
their Hit Dice for damage.  Targeted player characters may still roll
an armor save, but their armor does not absorb any of the initial
damage dice.

== Damage

Each creature has a "hits to kill" value, ranging from 1 to about
100#footnote()[
    Arneson states 100 is the maximum for player characters (_FFC,_
    pg. 3); Snider's additions has dragons going up to 120 with 26 HD
    breath weapons (_FFC,_ pg. 57), which while a tonne of dice seems reasonable for a
    top-level Gold Dragon boss monster.
].
When dice are rolled to damage, this is taken directly from their HTK;
when a creature's HTK reach 0, they are defeated:

- Monsters or flunky-level (under 4 HD) player characters are killed;
- 4HD+ player characters are knocked out, unless they are the last
  one standing, in which case their entire side is dead.

Any damage dealt _beyond_ that subtracted from a target's HTK is
instead "splashed" over and dealt to their allies, if there are any
left standing.

== Example of Combat

*Alice* is umpiring her home dungeon.  Long time player *Bob* is
playing his 10 HD Lord "Ser Derringdo".  New player *Charlie* is
playing a 1 HD Flunky "Auld Ned".

*Alice:* The door opens up. Before you, you see thirty "white hand"
orcs.  They are immediately hostile.  Looks like a fight. _(Alice
rolls dice; she has determined that each White Hand orc has 3 HTK)_

*Bob:* Ser Derringdo isn't afraid of orcs! He attacks with his magic
sword!

_Bob rolls 2d6 and gets a nice low score of 5_

*Alice:* Alright, roll your Hit Dice.

_Bob rolls his 10 HD, scoring 32_

*Alice:* Several of the orcs recognize your blade, and they hesitate;
 a foolish move.  You easily cut a swathe through their front ranks,
 felling ten of the foul beasts in a series of masterfully executed
 strokes.  Charlie, Ned sees this and feels inspired. The orcs are
panicking. What do you do?

*Charlie:* Uh... I mean...

*Alice:* _Seeing that Charlie is dithering, she cuts in._ Three orcs
in the front ranks manage to break away from the carnage.  They close
in for the kill, blades swinging.  _She rolls three dice — 3, 3, and
4._ Mmm... your armor is leather, right?

*Charlie:* Yeah, that was all I could afford.

*Alice:* Right, well, roll your Hit Dice.

_Charlie rolls one die. It comes up a miserable 2, failing to prevent
any damage._

*Alice:* Yikes, sorry Charlie.  While you were starstruck watching Bob
chopping up the orcs, their allies got the jump on you.  All three of
them land solid blows, dealing 10 hits.  With Ned failing his save,
he's dead.

*Charlie:* Damn it!

*Bob:* Hah! Cheer up, Chaz. You're not one of us until you've had a
character die!

= Optional Rules

If wanting high-level play to feel more like low level play and/or to
roll the same amount of dice for opponents of equal strength, you can
use "Effective Hit Dice" — subtract the defender's Hit Dice from the
attacker's Hit Dice (if the defender has more HDs, minimum of zero)
and add one to yield the attacker's "Effective Hit Dice".  These are
the dice he rolls to attack, defend, or damage in the rules above.

== Bonuses

Bonuses to *attack* can be given in a few ways:

- Granting extra dice to the damage/Hit Dice rolls
- Adding to the skill/to-hit roll
- Nerfing an enemy's saving throws
- Designating one dice as the "bonus" dice and adding modifiers to it
- Adding bonus damage to final damage scores
- Adding (small) bonuses to every die rolled

Bonuses to *defense* could include:

- Nerfing an enemy's damage/Hit Dice rolls
    - Removing dice from the dice pool
    - Bonus die in reverse (malus die)
    - Subtracting from the final score
- Granting bonuses to armor saves (adding to the score, adding to the
  dice, lowering the target, or adding extra dice to roll)

#pagebreak()

= Designer's Notes

In this section, I will outline the choices made, my philosophy of
reconstruction, and what I believe are the important sources of
information about Blackmoor & its combat system.

== Features of the System

Arneson teases us right in the Introduction in the First Fantasy
Campaign:

#quote(attribution: [Dave Arneson, _FFC_ pg. 3])[
    Combat was quite simple at first and then got progressively
    complicated with the addition of Hit Location, etc. as the players
    first rolled for characteristics, the number of Hits a body could
    take ran from 0–100. As the player progressed, he did not receive
    additional Hit Points, but rather he beceme harder to Hit. All
    normal attacks were carried out in the usual fashion but the
    player received a "Saving Throw" against any Hit that he
    received. Thus, although he might be "Hit" several times during a
    melee round, in actuality he might not take any damage at
    all. Only Fighters gained advantages in these melee Saving
    Throws. Clerics and Magicians progressed in their own areas, which
    might or might not modify their Saving Throws. And so it went, Hit
    Location so that even the might Smaug could fall to a single arrow
    in the right place (very unlikely), height differentiation, so that
    the little guys could run around more and the big ones could kill
    more, etc. Still these were guidelines, Hit Location was
    generally used only for the bigger critters, and only on a man
    to man level were all the options thrown in. This allowed play to
    progress quickly even if the poor monsters suffered more from it.
]

From this we can glean a few important notes:

- The combat system was *simple*, thus probably derived from wargames
  that Arneson and the larval "Blackmoor bunch" would be familiar
  with.
- As is well-known, "Hit Points" are Arnesonian; 0–100 being the range.
- "Saving Throws" to avoid damage are a feature for player characters
  as they grow in fighting power.
- Hit Location was a later innovation, and saved for important enemies
  and/or for duels.
- The players had an edge; this wasn't a "symmetrical" system.
- "These were guidelines" — the system was not formalist, but more
  was used as a framework for the referee (very much in the tradition
  of later "free kriegsspiel"; cf. the Sandhurst Kriegsspiel for
  example).

== Use of Hit Dice

On the one hand, Arneson downplays the importance of Hit Dice:

#quote(attribution: [Dave Arneson, _FFC_ pg. 52])[
    To progress to the next level (which in Blackmoor meant getting
    50% more Hit Dice per level, although our combat system did not
    really use Hit Dice).
]

On the other hand, Hit Dice are mentioned *all over the place* in
_FFC,_ and were important enough to end up in OD&D, unlike for example
"Hits To Kill".  Take their primacy when talking about designing
monsters:

#quote(attribution: [Dave Arneson, _FFC_ pg. 3])[
    AC was determined by description of the creature (Hide, scales,
    etc.) and how impervious it was in the accounts given in mythology
    about it. HD was determined pretty much on the size of the creature
    physically and, again, some regard for its mythical properties. For
    regular animals that were simply made larger, like Beetles, a standard
    text book provided interesting facts about the critters and all were
    given HD proportionate to their size, relative to other Beetles for
    instance. Insects were all given about the same AC with additions,
    again, for unique properties.
]

Considering Arneson's fondness for "making it up on the fly,"
i.e. making rulings rather than rules; and his direct statements about
the system evolving over time, it's entirely possible that this
statement refers to a later iteration of the combat system than the
one reconstructed in this document (possibly more along the lines of
the one described in _Adventures in Fantasy_); and/or that the primacy
of Hit Dice was not necessarily in their D&D usage of improving one's
odds to hit and for determining Hit Points, which Arneson is
implicitly contrasting.

== Saving Throws for avoiding hits

For role-players, the notion of Saving Throws is probably mostly
associated with D&D.  However, for wargamers, especially early
wargamers, it was an established notion _before_ Gygax & Arneson.

The most salient example would be from well-known British ancients
campaigner Tony Bath:

#quote(attribution: [Tony Bath, in _Donald Featherstone's Wargames,_ pg. 56])[
    To lessen the speed at which troops are killed and removed from the
    game, and also to encourage aggressive tactics, the following formula
    has been devised to determine which of the casualties are killed and
    out permanently or only wounded and able to carry on [...]

    If, for example, ten men have been hit — take eight white dice and two
    coloured dice (the white representing other ranks and the coloured the
    officers) [...]  Throw the dice in one throw and compute casualties by
    the following scale:

    - If the soldier is unarmoured and has no shield he must throw a
      _6_ to survive.
    - Armour or shield: _5 or 6._
    - Armour and shield: _4, 5 or 6._
    - Unarmoured cavalry: _5 or 6_ saves rider alone.
    - Armoured cavalry: _5 or 6._  _4_ saves rider alone.
    - Fully mailed cavalry: _4, 5 or 6._  _3_ saves rider alone.
    - Casualties from _pilum_ or crossbow must throw a _6_ however
      clad, provided the hit is at close range.
]

The British scene has historically been the home of miniature
wargaming, certainly in the English-speaking world, dating back to the
pre-war pioneers such as Stevenson and Wells.  Bath, Featherstone,
Brigadier Young, Charles Grant and others are represented in Jack
Scruby's American zine, _War Game Digest,_ the latter two having
rulesets of theirs cited in TSR's _Tricolor_ Napoleonics rules.  In
this pre-D&D, small but tight-knit wargaming community, it seems very
unlikely that these classic rules would be unfamiliar to the Blackmoor
bunch.

To add to that, the most likely antecedent for the lost/gatekept
"Ironclads" rules that Arneson mentions off-hand in discussions of the
Blackmoor combat system — Walter Gurney Green Ⅲ's "1875 Period Rules"
— was published in Donald Featherstone's _Naval War Games,_ alongside
ancient naval rules from Tony Bath, which surprise surprise,
explicitly mention "saving throws".

Thus the saving throw rule proposed in the main summary — using one's
Hit Dice as a pool for Saving Throws, leaning on the use of Armor
Class to get a target number — which in fact is pretty much exactly
the same as Bath's rules (assuming, hopefully accurately, that
medieval chainmail or field plate is better than a legionary's
"banded" armor) — and using the classic Chainmail #sym.arrow OD&D
convention of ordinary soldiers being essentially 1 HD monsters, the
rule rather elegantly ticks the boxes.

I cannot take credit for this idea, however. Rod Hampton put forward a
"roll a d10 over descending armor class"
proposal#footnote()[https://rhampton.substack.com/p/a-tale-of-two-characters],
and the connection to Bath/Featherstone just clicked.

== 2d6 & Skills

That 2d6 was a part of the Blackmoor combat system should not be
controversial.  For example, 6:20 into _The Secrets of Blackmoor,_ at
the anniversary game, we can see Dave Megarry saying "I'm gonna attack
him," rolling 2d6, and being disappointed at the results!  Similarly,
secondary sources — Megarry's _DUNGEON!_ or the third-hand _Rules to
the Game of Dungeon_ — utilize 2d6 for combat results.

We can furthermore say that it's very likely that _Chainmail_ provided
inspiration here, since 2d6 is used almost exclusively in the fantasy
supplement and man-to-man rules; see the section on _Chainmail_ below.

We can also say that player statistics – labeled "personality" on
Wizard Gaylord's character sheet#footnote()[_The Making of Original
Dungeons & Dragons 1970–1977,_ pg. 66] — likely were on the 2–12 scale from a
close reading of the extent character matrices, such as those on
Megarry's sheets (see @matrices); my design work on this relies on
Boggs', found on the "Hidden in Shadows" blog:
https://boggswood.blogspot.com/2019/04/thoughts-on-arnesons-armor-class.html

What we today might today call "attributes" (Brains, Guts, Health,
Looks, Sex, and Misc (Luck); Leadership, Strength and Loyalty) and
"skills" (and may further separate by weapon and non-weapon
proficiency) are clearly extent on the character matrices, though not
separated as such.  The non-weapon proficiencies seem to mostly be
related to different forms of navigation
(woodcraft#footnote()[Probably for overland travel, hunting, survival,
and so on rather than carpentry!]), flying #footnote()[We can
speculate from _OD&D_ that this is for riding on dragons, magic
carpets, brooms, &c.; perhaps in later (post-_Final Fantasy_) settings
it could be used for airships.], sailing) and things that might be
useful to a soldier (horsemanship, throwing).  Notably, none of the
more familiar "lists of every human endeavor" — of _GURPS,_ later
_Advanced Dungeons & Dragons_ (e.g. 2e _Player's Handbook_, pg.~76),
or the editions of _D&D_ produced by Wizards of the Coast — are
represented.  There is no "perception," "insight," or "search" skill;
similarly no "history," "religion," or "arcana."  I feel validated by
the lack of pre-_D&D_ evidence of some personal bugbears of mine!

What this all suggests is:

- 2d6 in order for at the very least attributes, possibly skills and
  weapon proficiencies as well
- Character skill was important to combat performance
- Blackmoor's "skill system," such as it was, was limited in scope and
  quite unlike later designs such as in _Traveller._
- The classic six _D&D_ attribute scores, which range from 3–18, are
  probably a later Gygaxian redesign.

== On Gygax

Firstly — to disclaim Gygax's influence on D&D would be to minimize
the legacy of a legendary game designer and to contradict the word of
both the original players and of Dave Arneson himself.  It is clear
that Gygax was involved in the design and commercial release of
_Chainmail,_ alongside Dave Perren; it is also fairly clear that many
of the systems used in _Original Dungeons & Dragons_ are of Gygaxian
authorship.  To reduce him to a mere editor is to go directly against
the documented history of the game.

Secondly — Gygax is not a primary source of Arnesonian information,
except inasmuch as he agrees with more reliable sources.  At various
points, he had a financial incentive to minimize Arneson's
contributions; it is also uncontroversial to say he heavily benefited
both socially and financially from being seen as the "inventor of
D&D."

Historical factors have lead to two competing schools of thought on
Gygax & his influence on OD&D:

+ *Gygaxian Maximalism* was Gygax's own position during the lawsuit;
  that Arneson had merely inspired what was his own original work. (Thesis)
+ *Gygaxian Minimalism* is a reaction to that — it reduces Gygax's
  work down to mere editor, or even mere publisher or
  plagiarist. (Antithesis)

Considering historical evidence and the testimony of those that were
there, I think it would be unreasonable to take either position.  It
is clear that Arneson had an enormous influence on D&D, on the _idea_
of a fantasy role-play itself; it is also clear that while he was a
brilliant designer he struggled a lot with putting his thoughts into
clear, unambiguous prose.  Gygax, whatever you may think of the
"crunchiness" of his designs or the scattershot nature of what is more
undeniably his (such as _Advanced Dungeons & Dragons,_ or later work
such as _Lejendary Adventures_), was much more of a communicator when
it came to how his rules worked.

My synthesis is to trust that _OD&D_ contains Blackmoor DNA, but is
not a codified account of how it was played at any particular time;
rather, it is as the book states, a collaboration between two great
game designers to produce a whole greater than the sum of its parts.
_OD&D_ can be looked towards when referred to explicitly by Arneson,
or when referring to it makes some obscure Arnesonian prose make a bit
more sense.

== Primacy of sources; "Canon"

In rough order of precedence, the sources drawn on are:

+ _First Fantasy Campaign;_ as this is the most directly
  Arneson-authored material in widespread circulation.
+ Testimony/statements from Dave Arneson outside of published
  material; as I have no reason to doubt the man himself, despite how
  terse and sometimes cryptic his words are.
+ Testimony/statements from original players; as they have direct
  experience with the game as it was played.
+ _Adventures in Fantasy;_ this is lower down the precedence as it is
  unclear how much of the system was authored by Snider and how much
  is from Arneson; nonetheless it is clearly Arnesonian & inspired by
  Blackmoor
+ _Chainmail;_ see below.
+ _Original Dungeons & Dragons;_ as Arneson authored material clearly
  went into it, although it was obviously edited and built upon by
  Gygax.
+ _Rules to the Game of Dungeon,_ _DUNGEON!_, &c.

== Differences from published systems

Two systems are documented for use with _Original Dungeons & Dragons_:

- The "alternate" combat system, roll 1d20 over target number, which
  was the only one fully enumerated in the books and so stuck as the
  default into later editions of D&D;
- "Combat resolution using CHAINMAIL", i.e. the use of the combat
  tables from _Chainmail._ This is the origin of the "Hero - 1"
  etc. as fighting capability in the tables.

I consider the "alternate" combat system to be a later innovation and
to have little to do with Blackmoor other than overlapping
terminology; and _Chainmail_ to have been a strong influence, but one
among many.

One further system that has been floated as an influence on Blackmoor
is _Strategos;_ while I find it likely that Arneson considered earlier
work on _Strategos_-derived games while umpiring Blackmoor, there is
no strong evidence that _Strategos N_ or _Strategos A_ are the One
True System which powered Blackmoor.

=== Against the "Alternate" Combat System

The "Alternate" combat system is almost definitely a later, Gygaxian
invention, for a few reasons:

- It utilizes polydice (see below)
- Arneson never claimed to have invented it
- Arneson disclaims several features of the "Alternate" combat
  features as not being intended i.e. not being in his original
  system.
- Testimony of several players & noted features of the Blackmoor
  system in secondary material (including those of Arnesonian
  authorship).

It is possible that the "Alternate" combat system *was* used for
Greyhawk, but that is out of scope of this article.

One of the primary sources that went into this reconstruction is the
following quote from Arneson, who was commenting on _OD&D:_

#quote(attribution: [
    Dave Arneson on _OD&D_#footnote()[_Great Plains Game Players Newsletter,_ Issue 16, pp. 19–20.  Sourced from https://boggswood.blogspot.com/2023/02/arnesons-early-thoughts-on-od.html]
])[
    ...Another point of mixup was that players were not
    intended to become harder to hit and take more damage as they
    progress. Instead they were to take the same amount of hits all
    the time (with the exceptions of spells, magic, etc.) while
    becoming more talented in inflicting hits and avoiding the
    same. This was a great equalizing influence. I should note that I
    gave them all about twice the potential number of hits (one die
    roll for the number of dice you roll is a three meaning you cast
    three die 3, 4, 2 meaning that you take nine hits (but you could
    take as many as 36 hits). Also the number of hits you could take
    were partially in relation to the of points the person possesses.
]

This is recognizably _not_ the "Alternate" combat system, in which due
to the increase in (D&D-style) Hit Dice per level, one's Hit Points
grew greater from level to level; they instead "take the same amount
of hits all the time", i.e. have a fixed amount of hit points, "while
becoming more talented in inflicting hits and avoiding the same"
i.e. deal more damage and/or hit more often while also being more able
to *avoid* hits as your level increases.

I grant that it is possible that the "alternate" combat system somehow
evolved from the Blackmoor one, but RAW it is recognizably not the
same.

=== On Chainmail

One aspect of "Gygaxian Minimalism" that occasionally crops up is a
total denial of the importance of _Chainmail._ It is however
completely inaccurate to state that _Chainmail_ had no influence on
Blackmoor; it completely contradicts statements both from Arneson and
from his players.  Off-handed mentions of _Chainmail_ are scattered
throughout _First Fantasy Campaign,_ and testimony from Blackmoor
players supports that _Chainmail_ was at the very least influential,
if not contributing directly to the rules:

#quote(attribution: [Greg Svenson#footnote()[
    2009: https://blackmoor.mystara.us/greg01.html]])[
    During the Christmas break of 1970-71; our gaming group was
    meeting in Dave Arneson's basement in St. Paul, Minnesota. We had
    been playing a big Napoleonics miniatures campaign, which was
    getting bogged down in long drawn out miniatures battles. So, as a
    diversion for the group, one weekend Dave set up Blackmoor instead
    of Napoleonics on his ping pong table. The rules we used were
    based on "Chainmail", which is a set of medieval miniature rules
    with a fantasy supplement allowing for magic and various beings
    found in the "Lord of the Rings".
    ]

#quote(attribution: [
    Dave Arneson#footnote()[GameSpy interview, Aug 2004: http://pc.gamespy.com/articles/540/540395p2.html]
])[
    *GameSpy:* When did you first come in contact with Chainmail and
     how did you start playing that?

    *Arneson:* Well, it was offered by a small company at that point
     called Guidon Games (Gygax's company - ed.), and we were doing
     some medieval battles so we bought a copy and tried it out. We
     thought the fantasy part was interesting so we elaborated on
     that, expanded it, etcetera, etcetera, and eventually that grew
     into what became the first Blackmoor game which eventually grew
     into being the first Dungeons and Dragons game. That probably
     took three years to develop.
]

One anecdote explicitly mentions the usage of the "Fantasy Combat
Table," and how it grew into the notion of "hit points":

#quote(
    attribution: [Dave Arneson#footnote()[
        GameSpy interview, Aug 2004: http://pc.gamespy.com/articles/540/540395p3.html
    ]]
)[
    *GameSpy:* So you started playing Chainmail using the fantasy
    rules. How did you have to change the rules around?

    *Arneson:* We had to change it almost after the first
    weekend. Combat in Chainmail is simply rolling two six-sided dice,
    and you either defeated the monster and killed it … or it killed
    you. It didn't take too long for players to get attached to their
    characters, and they wanted something detailed which Chainmail
    didn't have. The initial Chainmail rules was a matrix. That was
    okay for a few different kinds of units, but by the second weekend
    we already had 20 or 30 different monsters, and the matrix was
    starting to fill up the loft.

    I adopted the rules I'd done earlier for a Civil War game called
    Ironclads that had hit points and armor class. It meant that
    players had a chance to live longer and do more. They didn't care
    that they had hit points to keep track of because they were just
    keeping track of little detailed records for their character and
    not trying to do it for an entire army. They didn't care if they
    could kill a monster in one blow, but they didn't want the monster
    to kill them in one blow.
]

Nonetheless, there is little reason to believe that Blackmoor ran
entirely on _Chainmail_ rules. It seems more likely that _Chainmail_
was used as a source of inspiration and for ideas to "kitbash".

#quote(attribution: [Dave Arneson#footnote([
    _Heroic Worlds: A history and guide to role-playing games_, p. 131
])])[
    I also hasten to point out that the _Chainmail_ connection was the
    use of the Combat Matrix and nothing more.  Find a first-edition
    _Chainmail_ and compare it to a first-edition _Original D&D_
    someday and you will see that for yourself: not a hit point,
    character class, level, or armor class, much less any role-playing
    aspects in _Chainmail._
]

=== The Strategos Connection

Another enduring myth of Blackmoor, spread after the "_Chainmail_
Connection" started to be questioned, is that Blackmoor ran on rules
based on Charles Totten's _Strategos_ kriegsspiel rules, and their
descendents via Dave Wesely's _Strategos N._  Without a copy of these
rules to hand (with the exception of _Don't Give Up The Ship_ and
_Valley Forge_), I cannot say for sure, but it does not seem likely
that either the firing tables or "Table T" were the source of combat
resolution for Blackmoor.  Notably, there's very little mention of
combat odds (M:N), which are extremely important to Strategos,
anywhere in the _First Fantasy Campaign,_ in _Adventures in Fantasy,_
or in Arneson's statements; and furthermore, the usage of "2d6 roll
under" or "Hit Dice" are not similar to anything in Totten's
_Strategos,_ _DGUTS,_ or _Valley Forge._

The primary influence of _Strategos_ on Blackmoor seems to be the
presence of the referee, at least partially via Dave Wesely's
"Braunstein".  Wesely himself downplays the influence on RPGs of
Strategos:

#quote(attribution: [
    Dave Wesely#footnote()[_Pits Perilous_ interview, 2017: https://pitsperilous.blogspot.com/2017/04/the-braunstein-experiment-wesely-weighs.html]]
)[
    ...role playing was not spelled out in my _Strategos-N_ Napoleonic
    rules nor was it in _Strategos: The American Game of War_ the 1880
    US Army wargame rules that inspired me, beyond a very loose
    suggestion that the referee could provide information that might
    be obtained by talking to local civilians.  Much of what we now
    expect in an RPG, the interactions between player and GM (or as I
    called him, the referee), the referee telling the player to roll
    dice rather than just declaring the result, players being given a
    LOT of room to come up with tricky ideas, and so on, was not
    planned in the first Braunstein, but evolved as I floundered
    forward through the two flops (Braunstein 2 and 3) and then got it
    working well in Braunstein 4 and its successors from June
    1969-September 1970.
]

Doubtless _Strategos N_ was in the "stone soup" that lead to
Blackmoor, especially via "Braunstein," but there's little direct
evidence that it was a mechanical basis.

== Choice of six-sided dice only

The reason six-sided dice only are used in this reconstructed system
is due to my belief that the use of polyhedral dice was not widespread
before the release of _Dungeons & Dragons;_ and testimony from Arneson
himself and original players that polydice were adopted later:

#quote(attribution: [
    Dave Arneson#footnote()[_First Fantasy Campaign,_ page 3]
])[
    It began with only the basic monsters in _Chainmail_ and was only
    some six levels deep.  Six levels was chosen since it allowed
    random placement with six-sided dice (no funny dice back then)...
]

#quote(
    attribution: [
        Greg Svenson#footnote()[2008: https://grognardia.blogspot.com/2008/04/on-oracular-power-of-dice.html?showComment=1241702340000&m=1#c6638346636397956943]
    ]
)[
    Dave Arneson did tell me that he found a set of polyhedral dice on
    his trip to England, but that was before I met him and I never saw
    that set of dice. We used six sided dice in the early Blackmoor
    days. We were even using d6's when we started play testing the new
    D&D rules in mid 1973.

    My understanding is that Dave Wesley is the person who found the
    polyhedral dice in an educational supply catalog and showed them to
    Gary Gygax, who liked them and adopted them for D&D. So, it is quite
    possible that Dave Wesley was the first modern gamer to use them, but
    I don't know that for sure. I did not personally see polyhedral dice
    until I saw a boxed set of D&D rules in 1974.
]

My rule of thumb when reading _OD&D_ is to assume polydice mechanics
were added later, and six-sided mechanics are more likely to be
Arnesonian.  It also fits with the wargaming origins of Blackmoor;
polydice in wargames are uncommon now and were very rare then.

= Data

== Original Blackmoor Players

List compiled by Finarvyn; source: https://blackmoor.mystara.us/originalp.html

"These names were confirmed by Dave Arneson!"

- Dave Arneson
- Bill Heaton
- Blue Petal
- Bob Meyer
- Chuck Munson
- Cliff Olilla
- Dale Nelson
- Dan Nicholson
- Dave Belfry
- Dave Fant
- Dave Wesley
- David Megarry
- Duane Jenkins
- Frederick Paul Funk III
- Giovanna Frengi
- Greg "Svenny" Svenson
- Harry Holman
- Jim Abler
- Jim Barber
- Jim Lafferie
- John Snider
- Kletcher Fletcher
- Kurt Krey
- Larry Bond
- Malia Arneson-Weinhagen
- Martin Noetzel
- Mike Carr
- Mike Mornard
- Pete Gaylord
- Phil Grant
- Richard Snider
- Rick (Mel) Johnson
- Ross Maker
- Scott Belfry
- Steve Dabenspeck
- Steve Lortz
- Tim Kirkpatrick
- Tony Kellen
- Walter Oberstar
- \* Chuck Soukup
- \* John Soukup

\* Apparently Arneson said that the Soukup brothers were not involved,
but they were added back in due to comments from Svenny.

== Select Matrices/"Character Sheets"

Source: Dave Megarry#footnote()[Beginning c. 1971; retrieved from
https://boggswood.blogspot.com/2016/10/megarry-early-blackmoor-character-matrix.html]<source-megarry>.
For the sake of brevity, @matrices does not include what appear to be
"non-weapon proficiencies", and the weapons listed are limited to the
highest and lowest values (they all appear to be from _Chainmail,_
e.g. Sword, Halbard [sic], Mtd. Lance); skills are Woodcraft,
Horsemanship, Flying, Throwing, and Sailing.

#figure(
    table(
        stroke: none,
        align: center+horizon,
        columns: 14,
        table.header(
            table.hline(),
            table.vline(),
            table.cell(align: center+bottom)[Name],
            table.vline(),
            sym.square.stroked,
            sym.circle.stroked,
            table.vline(),
            rotate(90deg, reflow: true)[Brains],
            rotate(90deg, reflow: true)[Leadership],
            rotate(90deg, reflow: true)[Courage],
            table.vline(),
            rotate(90deg, reflow: true)[Strength],
            rotate(90deg, reflow: true)[Sex],
            rotate(90deg, reflow: true)[Looks],
            table.vline(),
            rotate(90deg, reflow: true)[Health],
            rotate(90deg, reflow: true)[Loyalty],
            rotate(90deg, reflow: true)[Misc],
            table.vline(),
            rotate(90deg, reflow: true)[High Wep.],
            rotate(90deg, reflow: true)[Low Wep.],
            table.hline(),
            table.vline(),
        ),
        [1#super()[st] Ban. Chf],
        [0], [2], [6], [10], [8], [9], [5],
        [10], [5], [6], [5], [14], [3],

        [2#super()[nd] B. Chf],
        [1], [3], [10], [9], [8], [7], [5],
        [7], [5], [11], [9], [14], [2],

        [Galley Cp'n],
        [0], [3], [7], [7], [10], [6], [8],
        [6], [5], [6], [5], [12], [2],

        [Shortfellow],
        [3], [0], [4], [6], [8], [5], [7],
        [5], [8], [7], [5], [14], [2],

        [H.W.Dumbo],
        [2], [2], [6], [8], [5], [8], [4],
        [8], [10], [4], [5], [12], [3],

        ["Diamonds"],
        [2], [3], [13], [9], [5], [8], [5],
        [4], [5], [10], [4], [11], [2],

        [Baron v H.],
        [1], [5], [8], [7], [9], [4], [10],
        [9], [10], [7], [11], [12], [3],

        [Henk(?)],
        [0], [3], [5], [10], [8], [6], [7],
        [9], [10], [8], [12], [12], [2],

        [The Bastard],
        [1], [3], [5], [5], [7], [7], [10],
        [8], [9], [12], [6], [11], [3],

        [Scholaress],
        [4], [4], [12], [5], [10], [4], [11],
        [18], [8], [10], [8], [9], [3],

        [Admin],
        [2], [4], [4], [12], [12], [9], [9],
        [10], [10], [8], [5], [10], [8],

        [The Dunk],
        [2], [2], [4], [5], [7], [5], [7],
        [6], [7], [9], [11], [10], [3],

        [Gester],
        [1], [5], [11], [9], [13], [6], [4],
        [7], [7], [9], [6], [12], [4],

        [Earl's Jester],
        [0], [7], [11], [9], [9], [8], [11],
        [5], [10], [8], [9], [7], [3],

        [Tunny(?)],
        [2], [7], [10], [12], [3], [6], [3],
        [12], [9], [6], [8], [6], [5],

        [Captain],
        [1], [3],
        [8], [6], [5], [7],
        [9], [5], [4], [7], [7],
        [9], [4],

        [Hunter],
        [3], [3],
        [6], [3], [5], [11],
        [3], [5], [9], [7], [6],
        [10], [7],

        [Gump],
        [2], [4],
        [11], [3], [2], [11],
        [9], [8], [8], [6], [12],
        [11], [6],

        [(Unnamed)],
        [2], [4],
        [7], [11], [7], [5],
        [7], [14], [6], [3], [8],
        [7], [2],

        [Gearse],
        [], [],
        [10], [7], [6], [10],
        [9], [7], [5], [2], [6],
        [8], [4],
        table.hline(),
    ),
    caption: [Character Matrices]
)<matrices>

The second page of notes (from "Scholaress" on) includes statistics
listed in the form $N + X = Y$, with $X$ in the range 1–6, possibly
suggesting an increase of skills or attributes by 1d6.

The "square" and "circle" numbers are obscure and their exact purpose
unclear. The "square" numbers range 0–4 which has lead some to
speculate that they may be armor class.  The set of "circle" numbers
is $ #sym.circle.stroked #sym.in { 0, 2, 3, 4, 5, 7 }$ which don't
tell us much; they could maybe be a roll of an "averaging" d6 if it
wasn't for the 7 and 0 values (though the former could be me
misreading a 2 since they're so small); it seems unlikely for them to
be temporary values since they're written very small and in pen, so
HTK, HD, or level are out.  I guess unless new information comes out,
they'll just remain secrets of Blackmoor.

== Chainmail Monsters

@chainmail-monsters is a listing of monsters/troops in _Chainmail,_
alongside their Hit Dice given in _Original Dungeons & Dragons_ and
their "group" in the _First Fantasy Campaign._

#figure(
    table(
        columns: 5,
        align: center+bottom,
        table.header(
            table.cell(rowspan: 2)[Unit/Monster],
            table.cell(rowspan: 2)[Points],
            table.cell(colspan: 2)[OD&D],
            table.cell(rowspan: 2)[FFC\
                Group],
            [*HD*], [*HP (av.)*],
            table.hline()
        ),

        [Peasant], [½],
        table.cell(
            fill: none,
            align: center+horizon,
            rowspan: 8,
        )[1],
        table.cell(
            fill: none,
            align: center+horizon,
            rowspan: 8,
        )[3],
        table.cell(
            fill: none,
            align: center+horizon,
            rowspan: 8,
        )[Ⅲ],
        [Levee], [¾],
        [Light Foot], [1],
        [Heavy Foot], [2],
        [Armored Foot], [2½],
        [Light Horse], [3],
        [Medium Horse], [4],
        [Heavy Horse], [5],

        table.hline(stroke: gray+0.1pt),

        ["Halflings"#footnote()[
            Names changed to protect the innocent.  The Lord of
            the Rings and related properties are copyrighted by
            the Tolkien estate.
        ]<copyright>],
        [—], [1], [3], [Ⅲ],

        [Pixies/Sprites],
        [4], [1], [3], [Ⅲ],

        [Dwarves],
        [2], [1], [3], [Ⅲ],

        [Goblins/Kobolds],
        [1½], [1], [3], [Ⅲ],

        [Hobgoblins],
        [2½], [1½], [5], [Ⅲ],

        [Elves],
        [4], [1+1], [4], [Ⅲ],

        [Orcs],
        [2], [1], [3], [Ⅲ],

        [Heroes],
        [20], [4], [14], [Ⅱ],

        [Superheroes],
        [50], [8], [28], [Ⅱ],

        [Wizards],
        [100], [8+1], [29], [—],

        [Wraiths],
        [10], [4], [14], [Ⅰ],

        [Lycanthropes],
        [20], [4→6], [14–21], [Ⅱ],

        [True Trolls],
        [75],
        [6+3#footnote()[It's dubious that the "troll" in OD&D is the same as the "true troll" of _Chainmail_ or _FFC._]],
        [24], [Ⅰ],

        [Ogres],
        [15], [4+1], [15], [Ⅱ],

        ["Fire Demons"@copyright],
        [75], [10], [35], [Ⅰ],

        [Giants],
        [50], [8→12+2], [28–44], [Ⅰ],

        ["Treants"@copyright],
        [15], [8], [28], [Ⅰ],

        [Dragons],
        [100], [5→12], [17–42], [Ⅰ],

        [Rocs],
        [20], [6], [21], [Ⅱ],

        [Elementals],
        [—], [8→16], [28–56], [Ⅰ],

        [Basilisks/Cockatrices],
        [—], [5], [17], [—],

        [Wights/Ghouls],
        [10], [2/3], [7–9], [Ⅱ],
    ),
    caption: [Chainmail Monsters],
)<chainmail-monsters>

Notes on the "groups" in FFC:

- Group Ⅲ contains ordinary humanoids; those that
  would be called "normal types" in D&D jargon; 1 HD and less.
- Group Ⅱ contains bigger monsters, up to heroic and super-heroic
  creatures; 2–8 HD.
- Group Ⅰ contains the scarier, "boss" monsters, and those with
  more than 8 HD.

= Further Reading & Future Developments

- Character Creation: 2d6/3d6 in order.  Presumably social
  status/background can determine initial skills, see _Adventures in
  Fantasy,_ book 1, pp. 5–6.
- Skill system: See _Adventures in Fantasy,_ book 1, pp. 8–15;
  cf. _First Fantasy Campaign_ pp. 50–52.
    - _AIF_ book 1, page 13: "Prior to his having learned the use of a
      weapon the player will function at 1/3 the normal base in all
      his attacks [...] The normal base for hitting another man is
      40%." 40/3 = 13%. 2d6 #sym.lt.eq 4 = 16.67%.
    - Trained skill (beginner): 6 (41.67% chance)
    - Advancement could come through training (say 1 point a
      month of training, or 1 point per 1000 GP spent)
    - Advancement could also come through experience (increase by 1 if
      snake eyes are rolled)
    - The "plusses" on Megarry's sheets suggest advancement may be by
      1d6 points.
- Magic weapons & armor.  Probably bonuses; see above.
- How do ranged weapons work?  My instinctive guess would be that it's
  a skill check followed by a Hit Dice roll.  Monsters can use
  Chainmail; see @mass-ranged:
    + Use total Hit Dice as "number firing"
    + Target AC 1, 2 = fully armored; 3, 4 = ½ armored; 5 unarmored.
    + Indicated number is the number of dice to roll as damage.
- Calculation of HTK: Linked to HD for monsters and probably to
  statistics for players, though unclear how.
    - Above, Arneson gives a procedure:
        + Roll 1 die, yielding a number from 1–6.
        + Roll that many dice, and sum the results.
        + The final number is 1–36
    - _AIF_ book 1 pg. 8 gives a formula for hit points. A division
      sign is used, but this is likely a mistake, as RAW it would lead
      to a range ⅘–5.  A score 20–100 when using OD&D 3d6 in order can
      be found thusly (rounding up): $ "STR"/2 + "CON"/3 + "DEX"/4
      times 5 $

#figure(
    table(
        column-gutter: (
            2pt,
            0pt,
            2pt,
            0pt,
            2pt,
            0pt,
        ),
        align: center+bottom,
        columns: 7,
        table.header(
            table.cell(rowspan: 2)[Dfr AC; 1d6 →\
                HDs. Firing ↓],

            table.cell(colspan: 2)[AC 5+],

            table.cell(colspan: 2)[AC 3–4],

            table.cell(colspan: 2)[AC 1–2],

            [*1–2*], [*3–6*],
            [*1–3*], [*4–6*],
            [*1–4*], [*5–6*],
        ),
        table.hline(),
        [*1–2*], [0], [1], [0], [0], [0], [0],
        [*3–4*], [1], [2], [0], [1], [0], [0],
        [*5–6*], [2], [3], [2], [2], [0], [1],
        [*7–8*], [3], [4], [2], [3], [0], [1],
        [*9–12*], [4], [5], [3], [3], [1], [2],
        [*13-16*], [4], [5], [3], [3], [2], [3],
        [*17+*], [4], [5], [3], [3], [3], [3],
    ),
    caption: [Mass combat ranged results],
)<mass-ranged>
