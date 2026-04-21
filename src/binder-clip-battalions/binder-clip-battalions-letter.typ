#import "@local/LibEngage:1.0.0": meta, shapes, typography, units
#import "colors.typ": opfor, blufor
#import "sheets.typ": letter-army
#import "copy.typ": copy

#show: doc => meta.engageDoc(
    author: "Japanoise",
    "Binder Clip Battalions",
    doc
)

#set page(margin: 1.5cm)

#title()

#copy(size: "US Letter")

#letter-army(opfor)

#letter-army(blufor)
