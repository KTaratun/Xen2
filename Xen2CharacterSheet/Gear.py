from random import randint
from random import shuffle
from functools import partial
from kivy.uix.image import Image
from kivy.uix.label import Label
from kivy.uix.popup import Popup
import Cards

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

def GetGear(cur, query, index, character):
    cur.execute(query)
    fetch = cur.fetchone()
    character.inv[index] = Gear(fetch[1], fetch[2], fetch[3], randint(fetch[4], fetch[5]), fetch[7])

def CellInit(screen, num, character):
    if num > 0:
        screen.ids.cellOne.text = str(character.inv[0].name)
        for i in range(1, int(screen.ids.cellOne.name) + 1):
            screen.ids.cellOne.unbind_uid('on_release', i)
        screen.ids.cellOne.name = str(screen.ids.cellOne.fbind('on_release', partial(CellPopup, character.inv[0])))
    else:
        screen.ids.cellOne.text = "EMPTY"
        for i in range(1, int(screen.ids.cellOne.name) + 1):
            screen.ids.cellOne.unbind_uid('on_release', i)
    if num > 1:
        screen.ids.cellTwo.text = str(character.inv[1].name)
        for i in range(1, int(screen.ids.cellTwo.name) + 1):
            screen.ids.cellTwo.unbind_uid('on_release', i)
        screen.ids.cellTwo.name = str(screen.ids.cellTwo.fbind('on_release', partial(CellPopup, character.inv[1])))
    else:
        screen.ids.cellTwo.text = "EMPTY"
        for i in range(1, int(screen.ids.cellTwo.name) + 1):
            screen.ids.cellTwo.unbind_uid('on_release', i)
    if num > 2:
        screen.ids.cellThree.text = str(character.inv[2].name)
        for i in range(1, int(screen.ids.cellThree.name) + 1):
            screen.ids.cellThree.unbind_uid('on_release', i)
        screen.ids.cellThree.name = str(screen.ids.cellThree.fbind('on_release', partial(CellPopup, character.inv[2])))
    else:
        screen.ids.cellThree.text = "EMPTY"
        for i in range(1, int(screen.ids.cellThree.name) + 1):
            screen.ids.cellThree.unbind_uid('on_release', i)
    if num > 3:
        screen.ids.cellFour.text = str(character.inv[3].name)
        for i in range(1, int(screen.ids.cellFour.name) + 1):
            screen.ids.cellFour.unbind_uid('on_release', i)
        screen.ids.cellFour.name = str(screen.ids.cellFour.fbind('on_release', partial(CellPopup, character.inv[3])))
    else:
        screen.ids.cellFour.text = "EMPTY"
        for i in range(1, int(screen.ids.cellFour.name) + 1):
            screen.ids.cellFour.unbind_uid('on_release', i)
    if num > 4:
        screen.ids.cellFive.text = str(character.inv[4].name)
        for i in range(1, int(screen.ids.cellFive.name) + 1):
            screen.ids.cellFive.unbind_uid('on_release', i)
        screen.ids.cellFive.name = str(screen.ids.cellFive.fbind('on_release', partial(CellPopup, character.inv[4])))
    else:
        screen.ids.cellFive.text = "EMPTY"
        for i in range(1, int(screen.ids.cellFive.name) + 1):
            screen.ids.cellFive.unbind_uid('on_release', i)
    if num > 5:
        screen.ids.cellSix.text = str(character.inv[5].name)
        for i in range(1, int(screen.ids.cellSix.name) + 1):
            screen.ids.cellSix.unbind_uid('on_release', i)
        screen.ids.cellSix.name = str(screen.ids.cellSix.fbind('on_release', partial(CellPopup, character.inv[5])))
    else:
        screen.ids.cellSix.text = "EMPTY"
        for i in range(1, int(screen.ids.cellSix.name) + 1):
            screen.ids.cellSix.unbind_uid('on_release', i)
    if num > 6:
        screen.ids.cellSeven.text = str(character.inv[6].name)
        for i in range(1, int(screen.ids.cellSeven.name) + 1):
            screen.ids.cellSeven.unbind_uid('on_release', i)
        screen.ids.cellSeven.name = str(screen.ids.cellSeven.fbind('on_release', partial(CellPopup, character.inv[6])))
    else:
        screen.ids.cellSeven.text = "EMPTY"
        for i in range(1, int(screen.ids.cellSeven.name) + 1):
            screen.ids.cellSeven.unbind_uid('on_release', i)
    if num > 7:
        screen.ids.cellEight.text = str(character.inv[7].name)
        for i in range(1, int(screen.ids.cellEight.name) + 1):
            screen.ids.cellEight.unbind_uid('on_release', i)
        screen.ids.cellEight.name = str(screen.ids.cellEight.fbind('on_release', partial(CellPopup, character.inv[7])))
    else:
        screen.ids.cellEight.text = "EMPTY"
        for i in range(1, int(screen.ids.cellEight.name) + 1):
            screen.ids.cellEight.unbind_uid('on_release', i)
    if num > 8:
        screen.ids.cellNine.text = str(character.inv[8].name)
        for i in range(1, int(screen.ids.cellNine.name) + 1):
            screen.ids.cellNine.unbind_uid('on_release', i)
        screen.ids.cellNine.name = str(screen.ids.cellNine.fbind('on_release', partial(CellPopup, character.inv[8])))
    else:
        screen.ids.cellNine.text = "EMPTY"
        for i in range(1, int(screen.ids.cellNine.name) + 1):
            screen.ids.cellNine.unbind_uid('on_release', i)
    if num > 9:
        screen.ids.cellTen.text = str(character.inv[9].name)
        for i in range(1, int(screen.ids.cellTen.name) + 1):
            screen.ids.cellTen.unbind_uid('on_release', i)
        screen.ids.cellTen.name = str(screen.ids.cellTen.fbind('on_release', partial(CellPopup, character.inv[9])))
    else:
        screen.ids.cellTen.text = "EMPTY"
        for i in range(1, int(screen.ids.cellTen.name) + 1):
            screen.ids.cellTen.unbind_uid('on_release', i)
    if num > 10:
        screen.ids.cellEleven.text = str(character.inv[10].name)
        for i in range(1, int(screen.ids.cellEleven.name) + 1):
            screen.ids.cellEleven.unbind_uid('on_release', i)
        screen.ids.cellEleven.name = str(screen.ids.cellEleven.fbind('on_release', partial(CellPopup, character.inv[10])))
    else:
        screen.ids.cellEleven.text = "EMPTY"
        for i in range(1, int(screen.ids.cellEleven.name) + 1):
            screen.ids.cellEleven.unbind_uid('on_release', i)
    if num > 11:
        screen.ids.cellTwelve.text = str(character.inv[11].name)
        for i in range(1, int(screen.ids.cellTwelve.name) + 1):
            screen.ids.cellTwelve.unbind_uid('on_release', i)
        screen.ids.cellTwelve.name = str(screen.ids.cellTwelve.fbind('on_release', partial(CellPopup, character.inv[11])))
    else:
        screen.ids.cellTwelve.text = "EMPTY"
        for i in range(1, int(screen.ids.cellTwelve.name) + 1):
            screen.ids.cellTwelve.unbind_uid('on_release', i)

    character.lightArmor = 0
    character.heavyArmor = 0
    for i in range(0, num - 1):
        if character.inv[i].name == "Light Armor":
            character.lightArmor += 3
        elif character.inv[i].name == "Heavy Armor":
            character.heavyArmor += 1

def CellPopup(gear, button):
    name = Cards.Text("name", gear.name)
    type = Cards.Text("type", gear.type + " - Size " + str(gear.size))
    text = Cards.Text("text", gear.definition)

    if gear.type == "Melee" or gear.type == "Ranged":
        border = Image(source="WeaponCard.png", size=(800, 800), allow_stretch=True)
        border.add_widget(Label(text=str(gear.attack[0]), pos=(250, 17), font_size=20, color=(0, 0, 0, 1)))
        border.add_widget(Label(text=str(gear.attack[1]), pos=(324, 17), font_size=20, color=(0, 0, 0, 1)))
        border.add_widget(Label(text=str(gear.attack[2]), pos=(397, 17), font_size=20, color=(0, 0, 0, 1)))
        border.add_widget(Label(text=gear.damage, pos=(482, 17), font_size=20, color=(0, 0, 0, 1)))
    else:
        border = Image(source="GearCard.png", size=(800, 800), allow_stretch=True)
        border.add_widget(Label(text=str(gear.quality), pos=(487, 17), font_size=20, color=(0, 0, 0, 1)))

    border.add_widget(Image(texture=name, pos=(275, 392), size=(220, 220), allow_stretch=True))
    border.add_widget(Image(texture=type, pos=(275, 363), size=(220, 220), allow_stretch=True))
    border.add_widget(Image(texture=text, pos=(255, 8), size=(290, 290), allow_stretch=True))

    popup = Popup(title='Card Viewer',
                  content=border,
                  size_hint=(None, None), size=(410, 580))
    popup.open()

def RandomItem(cur, index, character):
    cur.execute("SELECT * FROM gear")
    num = cur.fetchall()
    findRate = []
    for i in range(0, len(num)):
        for j in range(0, num[i][6]):
            findRate.append(num[i][0])
    var = findRate[randint(0, len(findRate) - 1)]
    query = "SELECT * FROM gear WHERE gearId = %s"
    cur.execute(query, var)
    fetch = cur.fetchone()
    if (fetch[2] == "Melee" or fetch[2] == "Ranged"):
        ran = randint(fetch[4], fetch[5])
        typ = randint(0, 1)
        if typ == 0:
            nam = "Melee"
        else:
            nam = "Ranged"
        character.inv[index] = WeaponRandomizer(ran, nam)
    else:
        character.inv[index] = Gear(fetch[1], fetch[2], fetch[3], randint(fetch[4], fetch[5]), fetch[7])

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