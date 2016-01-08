from tkinter import *

flipper = IntVar()


def flip_it():
    if flipper.get() == 1:
        print("Cool. I'm all ON, man!")
    else:
        print("Phooey. I'm OFF.")

Checkbutton(app, variable = flipper,
                 command  = flip_it,
                 text     = "Flip it?").pack()
