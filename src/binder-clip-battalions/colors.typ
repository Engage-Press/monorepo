#let color-scheme(
    primary: red,
    secondary: green,
    stripe: white,
    stroke: black,
    first-brigade: blue,
    second-brigade: purple,
    third-brigade: black,
    fourth-brigade: teal,
    name
) = (
    primary: primary,
    secondary: secondary,
    stripe: stripe,
    stroke: stroke,
    first-brigade: first-brigade,
    second-brigade: second-brigade,
    third-brigade: third-brigade,
    fourth-brigade: fourth-brigade,
    name: name
)

#let opfor = color-scheme(
    "Kriegsspiel OPFOR"
)
#let blufor = color-scheme(
    primary: blue,
    secondary: aqua,
    first-brigade: red,
    second-brigade: green,
    third-brigade: orange,
    fourth-brigade: maroon,
    "Kriegsspiel BLUFOR"
)
