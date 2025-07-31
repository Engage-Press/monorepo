#let version = "v1.0"
#let versionDate = "2025-07-31"

#let rules = [
    #let body-font = "Alegreya"
    #let heading-font = "Alegreya Sans"

    #set text(font: body-font, number-type: "lining", 10pt)
    #show heading: set text(font: heading-font)

    #let defaultColors = (white, white, silver, silver)
    #let fourRowColors = (white, white, silver, white)

    #let repeatingStripesFill(tcolors, y) = {
        tcolors.at(calc.rem(y, tcolors.len()))
    }

    #set table(
        gutter: auto,
        inset: (x: 3pt, y: 3.7pt),
        fill: (_, y) => repeatingStripesFill(defaultColors, y),
        stroke: (x, y) => (
            x: 1pt,
            top: if y <= 1 { 1pt } else { 0pt },
            bottom: 1pt
        ),
    )
    #set table.hline(stroke: 1pt)

    = The Omniversal Rules — #version — #versionDate

    + The umpire's word is law. Her job is to keep the game moving, to
      interpret and reuse the rules as she sees fit, and to provide sound
      judgement in cases where the written rules do not contain a
      precalculated judgement.
    + Fights are resolved in blocks ("turns") of 15 minutes.  Each unit
      in combat (in either melee or weapon range) rolls one die on
      @combat. Points of *disruption*, *morale hits*, or *casualty hits*
      are applied to units in combat as described by @combat.
    + Movement is managed in blocks of 2 minutes, using the rates on @movespeed.
    + Ground/map scale is 1cm = 100 paces; 20cm is about a mile (2000 paces).
      This represents 1:7500 or 1:8000 scale.
    + Pieces: *Meeples* represent infantry half-battalions or battalions;
      *tiddlywinks* represent cavalry squadrons; *cannons* represent
      artillery batteries.
    + For the influence of single figures, @vips & the rules below should
      be used instead of the tables overleaf.

    == Rules for Commanders, VIPs, and Duels

    Commanders can boost morale by fighting alongside a unit, or by
    leading them directly.  They can also help routed units reorganize.
    Doing so is dangerous, however, and may lead to the commander being
    wounded or even killed.

    #figure(
        caption: "Effect of and on a single figure",
        table(
            fill: (_, y) => if(y == 4 or y == 5) { silver } else { white },
            align: center+horizon,
            columns: 5,
            table.header(
                table.cell(rowspan: 2)[*1d6\
                roll*],

                table.cell(rowspan: 2)[*Commander's impact\
                on friendly unit*],

                table.cell(colspan: 3)[*Saving roll vs danger level*],

                [*Low danger*],
                [*Medium danger*],
                [*High danger*],

                table.hline(),
            ),

            [1], [No impact], [Minor wound], [Killed], [Killed],
            [2], [No impact], [Minor wound], [Major wound], [Killed],
            [3], [-1 disruption], [—], [Minor wound], [Major wound],
            [4], [-1 disruption OR extra roll], [—], [—], [Minor wound],
            [5], [-1 disruption OR extra roll], [—], [—], [—],
            [5], [-2 disruption OR 2 extra rolls], [—], [—], [—],

        )
    )<vips>

    / Low danger: Worst case minor wound. For example, in a unit attacked
      by archers.
    / Medium danger: Some danger of death or serious wounds. For example,
      leading from the rear of a melee.
    / High danger: Deadly conditions. For example, fighting in the
      frontlines.
    / Minor wound: Out of action for 15 minutes; limited vision.
    / Major wound: 1–5 men pull the VIP to safety.  They may only command
      units they are physically with, and may not duel.
    / Killed: Surrounding units take a morale hit & cannot reorganize if
      routed.  The exact effect is proportional to the VIP's rank and
      relative importance; e.g. if a general dies the impact will be on
      the whole army, whereas a lieutenant will only affect close units.
    / Duels: Each figure rolls 1d6, ±1 or 2 for bonuses/maluses. The high
      roll wins; either re-roll ties or treat a tie as an inconclusive
      result.  The loser is in *high danger*; the winner is in *medium danger*
      if their roll was only 1 higher than the loser, *low danger* otherwise.

    == Credits & Bibliography

    #columns(2)[
        Rules compiled by the princess Japanoise.  Special thanks to the
        International Kriegsspiel Society (IKS).  Rules text copyright
        2025 Japanoise, licensed under the terms of the Creative Commons
        Attribution Sharealike 4.0 license.

        - *KRIEGSSPIEL: Instructions for the Representation of Military
          Manoeuvres with the Kriegsspiel Apparatus* by Baron von
          Reisswitz, Bill Leeson translation
        - *The Tactical Wargame* by General von Verdy du Vernois,
          J.R. MacDonnell translation
        - *Little Wars* by H.G. Wells
        - *Peltast and Pila* by Tony Bath
        - *Valley Forge* by Dave Wesely
        - *Weapons & Equipment of the Napoleonic Wars* by Philip J. Haythornthwaite
        - *Southern California Kriegsspiel Rules* by Marshall Neal
        - *Napoleonic Ottovski System* by Ottovski
        - *Ancient Greeks for Geeks* by Wolftin
        - *Bellum Regulae* by ItzBEANS

        *The Olivia Hill Rule:* If you're a fascist, you're not
        welcome to play this game. It's against the rules. If you're
        reading this and thinking, "You just call everyone you
        disagree with a fascist," then you're probably a fascist, or
        incapable of drawing inferences from context and acknowledging
        a dangerous political climate that causes the oppressed to be
        hyperbolic. Don't play this game.  Heal yourself.  Grow.
        Learn.  Watch some Mr. Rogers' Neighborhood or something.
    ]

    #pagebreak()

    #grid(
        align: left+horizon,
        column-gutter: 1em,
        columns: 2,
        [
            #figure(
                caption: "Effect of 15 minutes of fighting",
                table(
                    align: (
                        left+horizon, center+horizon, center+horizon, center+horizon,
                        center+horizon, center+horizon, center+horizon,
                        center+horizon, center+horizon
                    ),
                    columns: 9,
                    column-gutter: (0pt, 0pt, 0pt, 1pt, 0pt, 1pt, 0pt),
                    table.header(
                        table.cell(rowspan: 2)[*Unit Type*],
                        table.cell(colspan: 8)[*1d6 + bonuses - maluses*],
                        [*\< 1*],
                        [*1*], [*2*], [*3*], [*4*], [*5*], [*6*],
                        [*> 6*],
                        table.hline()
                    ),
                    [Irregulars],
                    [D], [D],  [D],   [DC],  [DCM], [CM],  [2CM],  [2CM],

                    [Regulars],
                    [D], [D],  [DC],  [DCM], [CM],  [CM],  [2CM],  [2CM],

                    [Elites],
                    [D], [DC], [DCM], [DCM], [CM],  [2CM], [2C2M], [2C2M],

                    [Ranged Irr.],
                    [D], [D],  [D],   [D],   [DE],  [DE],  [DE],   [DEM],

                    [Ranged],
                    [D], [D],  [D],   [DE],  [DE],  [DE],  [DEM],  [DECM],

                    [Light cavalry],
                    [D], [D],  [D],   [DM],  [DM],  [DM],  [DCM],  [DCM],

                    [Heavy cavalry],
                    [D], [D],  [DM],  [DM],  [DM],  [DM],  [DC2M], [DC2M],

                    [Artillery],
                    [D], [D],  [DC],  [DM],  [DC],  [DM],  [DCM],  [D2CM],
                )
            )<combat>
        ],
        [
            / D: _This_ unit takes 1 pt of disruption.
            / C: _Enemy_ unit takes 1 casualty hit.
            / 2C: _Enemy_ unit takes 2 casualty hits.
            / M: _Enemy_ unit takes 1 morale hit.
            / 2M: _Enemy_ unit takes 2 morale hits.
            / E: _Enemy_ unit takes 1 pt of disruption.

            #figure(
                caption: "Unit morale point limits",
                table(
                    columns: 2,
                    fill: (_, y) => repeatingStripesFill(fourRowColors, y),
                    [*Unit Class*],
                    [*Routs after \_\_\_ morale hits*],
                    [Irregulars], [1],
                    [Regulars], [2],
                    [Elites], [3],
                )
            )
        ]
    )

    #grid(
        align: left+horizon,
        columns: (1em, 2fr, 1em, 3fr),
        row-gutter: 1em,
        column-gutter: 1em,

        grid.cell(colspan: 2)[*General Bonuses*],

        grid.cell(colspan: 2)[*General Maluses*],

        [+1:\
            +1:\
            +1:],

        [Defending with terrain advantage\
            Has reserve (doesn't stack)\
            Cavalry charging \@ 0 disruption],

        [-1:\
            -1:],

        [Outnumbered at least 2:1\
            Weak weapon vs heavy armor],

        [+2:\
            +2:\
            +2:],

        [Flank attack\
            Defending with fortification\
            Cavalry charging irregulars/fodder],

        [-2:\
            -2:],

        [Cavalry trapped in melee\
            Cavalry charging prepared regulars' front.],

        [+3:], [Defending stone wall/castle],

        [-4:], [Cavalry charging square, pikes, front of phalanx, etc.],

        [+4:], [Rear attack],
    )

    #figure(
        caption: "Artillery — ammo, range, & effects",
        table(
            align: center+horizon,
            fill: (_, y) => repeatingStripesFill(fourRowColors, y),
            columns: 5,
            table.header(
                [*Ammo*],
                [*6\# range*],
                [*12\# range*],
                [*Good effect (+1)*],
                [*Bad effect (-1 or -2)*],
            ),

            [Canister],
            [100–800],
            [100–1000],
            [Even ground, no up/down slope > 10#sym.degree],
            [Swamps/marshy/broken/undulating ground],

            [Elevation],
            [900–1200],
            [1100–1500],
            [Bat. has clear view 200pcs bfr/aftr tgt],
            [Swampy/marshy/20#sym.degree slope/no clear view],

            [Random/\
                Ricochet],
            [1300–1800],
            [1600–2000],
            [As canister],
            [As canister],

        )
    )

    #grid(
        columns: 3,
        column-gutter: 1.5em,
        row-gutter: 8pt,
        [
            *Artillery Bonuses (+1)*

            - Flanking the target
            - Has 2 lines in range
            - Target in column of 2+ batteries/squadrons/battalions

            *Disruption*

            Tiredness, loose formation, minor losses.  At 3 disruption,
            cannot fight.  Recover 1pt per 15 mins rest.
        ],
        [
            *Terrain*

            _Light woods, rough terrain_ — 10–30% move penalty.

            _Heavy woods & steep hills_ — infantry only, 50% speed or less,
            1–2 points disruption.

            Specialist skirmishers in skirmish order do not take move
            penalties.
        ],
        grid.cell(rowspan: 2)[
            *Casualties*

            Casualty hits are about 5% of unit's initial strength.
            Unit routs \@ 20–30% (4–6 hits).

            For campaign purposes: ⅙ of losses killed; ½ badly wounded; ⅓
            "walking" wounded.

            #figure(
                caption: "Small arms ranges",
                table(
                    columns: 2,
                    table.header(
                        [*Weapon*],
                        [*Range (Paces)*]
                    ),

                    [Slings etc.], [200],
                    [Bows], [300],
                    [Longbow], [350],
                    [F.l. pistol], [50],
                    [F.l. carbine], [100],
                    [Musket], [200],
                    [F.l. rifle], [250],
                    [Modern Rifle], [1300],
                    [Modern Sniper], [1800],
                )
            ),

        ],

        grid.cell(
            colspan: 2,
            [
                #figure(
                    caption: "Movement speed in paces per 2 minutes",
                    table(
                        columns: (auto, 1fr, 1fr, 1fr, 1fr),
                        table.header(
                            [*Unit*],
                            [*March*], [*Deploy*], [*Charge*], [*Retreat*],
                        ),

                        [Infantry],
                        [200], [200], [250], [300],

                        [Skirmishers],
                        [250], [300], [250], [300],

                        [Foot artillery],
                        [200], [200], [—], [300],

                        [Horse artillery],
                        [600], [700], [700], [700],

                        [Light cavalry],
                        [400], [900], [900], [900],

                        [Heavy cavalry],
                        [300], [600], [800], [800],

                        [Elephantry],
                        [250], [250], [—], [400],

                        [Messengers, mounted officers],
                        table.cell(colspan: 4)[Special: 900 for first 2000 paces, 700 after.],
                    ),
                )<movespeed>
            ]
        )
    )
]
