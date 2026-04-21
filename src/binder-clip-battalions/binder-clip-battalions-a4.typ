#import "@local/LibEngage:1.0.0": meta, shapes, typography, units
#import "colors.typ": opfor, blufor
#import "sheets.typ": a4-army
#import "copy.typ": copy

#show: doc => meta.engageDoc(
    paper-size: "a4",
    author: "Japanoise",
    "Binder Clip Battalions",
    doc
)

#set page(margin: 1.5cm)

#title()

#copy(size: "A4")

#a4-army(opfor)
#a4-army(blufor)
