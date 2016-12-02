from random import randint
from random import shuffle

def AtkRando(atk):
    ligMedHea = [0, 0, 0]
    for i in range(0, 2):
        var = randint(1, atk - 2 + i)
        atk -= var
        ligMedHea[i] += var
    ligMedHea[2] = atk
    shuffle(ligMedHea)
    return ligMedHea

def DmgRando(dmg):
    min = randint(0, dmg)
    max = (dmg * 2) - min
    string = str(min) + "-" + str(max)
    return string

def AbilityRando(type):
    if type == "Melee":
        ability = randint(0, 5)
        if ability == 0:
            name = "Mace"
        elif ability == 1:
            name = "Sword"
        elif ability == 2:
            name = "Polearm"
        elif ability == 3:
            name = "Claw"
        elif ability == 4:
            name = "Fist"
        elif ability == 5:
            name = "Shield"
    elif type == "Ranged":
        ability = randint(0, 2)
        if ability == 0:
            name = "Semi-Auto"
        elif ability == 1:
            name = "Full-Auto"
        elif ability == 2:
            name = "Shotgun"
    return name

def WeaponRandomizer(size, type):
    name = AbilityRando(type)
    num = 8 + size * 2
    var = randint(3, num / 2)
    atk = AtkRando(var)
    dmg = DmgRando(num - var)
    return Weapon(name=name, type=type, size=size, attack=atk, damage=dmg)

class Gear:
    def __init__(self, name, type, size, quality, definition):
        self.name = name
        self.type = type
        self.size = size
        self.quality = quality
        self.definition = definition

class Weapon(Gear):
    def __init__(self, name, type, size, attack, damage):
        self.name = name
        self.type = type
        self.size = size
        self.attack = attack
        self.damage = damage

    type = "Melee"
    definition = "A melee weapon of questionable ability."

#class Ranged(Weapon):
#    def __init__(self, name, size, attack, damage, clip):
#        self.name = name                #str
#        self.size = size                #int
#        self.attack = attack            #array of 3 ints
#        self.damage = damage            #range between 2 ints
#        self.clip = clip                #int
#
#    type = "Ranged"
#    definition = "A gun, hopefully it still works."