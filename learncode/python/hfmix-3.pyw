from Tkinter import *
import pygame.mixer

app = Tk()
app.title("Head First Mix")
app.geometry('250x100+200+100')

sound_file = "50459_M_RED_Nephlimizer.wav"
mixer = pygame.mixer
mixer.init()
track = mixer.Sound(sound_file)


def track_start():
    track.play(loops=-1)


def track_stop():
    track.stop()


def shutdown():
    track.stop()
    app.destroy()

start_button = Button(app, command=track_start, text="Start")
start_button.pack(side=LEFT)

stop_button = Button(app, command=track_stop, text="Stop")
stop_button.pack(side=RIGHT)

app.protocol("WM_DELETE_WINDOW", shutdown)

app.mainloop()
