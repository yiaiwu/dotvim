class Animal:
    def __init__(self):
        """docstring for __init__"""
        self.age = 0
        self.live()

    def live(self):
        print "i'm alive!"

class Human(Animal):
    def talk(self):
        """docstring for talk"""
        print 'hello!'

    def feed(self, other):
        """docstring for feed"""
        print 'feeding', other

THEME = 'earth'

def start():
    """docstring for start"""
    a = Human()
    b = Animal()
    a.feed(b)





