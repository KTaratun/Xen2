import Cards
import Screens
from random import randint
from random import shuffle
from functools import partial
from kivy.uix.image import Image
from kivy.uix.label import Label
from kivy.uix.popup import Popup
from kivy.uix.button import Button
from kivy.uix.floatlayout import FloatLayout

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
    character.inv[index] = Gear(fetch[1], fetch[2], fetch[3], randint(fetch[4], fetch[5]), fetch[4], fetch[5], fetch[7])

def CellInit(main, screen, character):
    cells = [screen.ids.cellOne, screen.ids.cellTwo, screen.ids.cellThree, screen.ids.cellFour,
             screen.ids.cellFive, screen.ids.cellSix, screen.ids.cellSeven, screen.ids.cellEight,
             screen.ids.cellNine, screen.ids.cellTen, screen.ids.cellEleven, screen.ids.cellTwelve]

    for i in range(0, 12):
        if character.inv[i] != 0:
            print(character.inv[i].name)
            cells[i].text = str(character.inv[i].name)
            for j in range(1, int(cells[i].name) + 1):
                cells[i].unbind_uid('on_release', j)
            cells[i].name = str(cells[i].fbind('on_release', partial(CellPopup, character.inv[i], screen, character, main)))
        else:
            for j in range(1, int(cells[i].name) + 1):
                cells[i].unbind_uid('on_release', j)
            cells[i].name = str(cells[i].fbind('on_release', partial(AddGearPopup, i, character, main, screen)))

    character.lightArmor = 0
    character.heavyArmor = 0
    for i in range(0, 12):
        if character.inv[i] != 0 and character.inv[i].name == "Light Armor":
            character.lightArmor += int(character.inv[i].quality)
        elif character.inv[i] != 0 and character.inv[i].name == "Heavy Armor":
            character.heavyArmor += 1

        screen.ids.lArmVal.text = str(character.lightArmor)
        screen.ids.hArmVal.text = str(character.heavyArmor)
#def CellPopup(gear, button):
#    name = Cards.Text("name", gear.name)
#    type = Cards.Text("type", gear.type + " - Size " + str(gear.size))
#    text = Cards.Text("text", gear.definition)
#
#    if gear.type == "Melee" or gear.type == "Ranged":
#        border = Image(source="WeaponCard.png", size=(800, 800), allow_stretch=True)
#        border.add_widget(Label(text=str(gear.attack[0]), pos=(250, 17), font_size=20, color=(0, 0, 0, 1)))
#        border.add_widget(Label(text=str(gear.attack[1]), pos=(324, 17), font_size=20, color=(0, 0, 0, 1)))
#        border.add_widget(Label(text=str(gear.attack[2]), pos=(397, 17), font_size=20, color=(0, 0, 0, 1)))
#        border.add_widget(Label(text=gear.damage, pos=(482, 17), font_size=20, color=(0, 0, 0, 1)))
#    else:
#        border = Image(source="GearCard.png", size=(800, 800), allow_stretch=True)
#        border.add_widget(Label(text=str(gear.quality), pos=(487, 17), font_size=20, color=(0, 0, 0, 1)))
#
#    border.add_widget(Image(texture=name, pos=(275, 392), size=(220, 220), allow_stretch=True))
#    border.add_widget(Image(texture=type, pos=(275, 363), size=(220, 220), allow_stretch=True))
#    border.add_widget(Image(texture=text, pos=(255, 8), size=(290, 290), allow_stretch=True))
#
#    popup = Popup(title='Card Viewer',
#                  content=border,
#                  size_hint=(None, None), size=(410, 580))
#    popup.open()

def CellPopup(gear, screen, character, main, button):
    fL = FloatLayout()
    name = Cards.Text("name", gear.name)
    type = Cards.Text("type", gear.type + " - Size " + str(gear.size))
    text = Cards.Text("text", gear.definition)

    if gear.type == "Melee" or gear.type == "Ranged":
        border = Image(source="WeaponCard.png", size_hint=(.85, .85), pos_hint={"center_x": .5, "y": .13}, allow_stretch=True)
        border.add_widget(Label(text=gear.damage, pos=(460, 78), font_size=16, color=(0, 0, 0, 1)))
    else:
        border = Image(source="GearCard.png", size_hint=(.85, .85), pos_hint={"center_x": .5, "y": .13}, allow_stretch=True)

    border.add_widget(Image(texture=name, pos=(295, 388), size=(220, 220), allow_stretch=True))
    border.add_widget(Image(texture=type, pos=(295, 363), size=(220, 220), allow_stretch=True))
    border.add_widget(Image(texture=text, pos=(278, 80), size=(250, 250), allow_stretch=True))

    b4 = Button(size_hint=(.4, .1), pos_hint={"center_x": .27, "y": .012}, text="Discard")
    fL.add_widget(border)
    fL.add_widget(b4)

    popup = Popup(title='Card Viewer',
                  content=fL,
                  size_hint=(None, None), size=(410, 580))

    if gear.type == "Melee" or gear.type == "Ranged":
        b2 = Button(name="0", text=str(gear.attack[0]), size_hint=(.05, .02), color=(0, 0, 0, 1), pos_hint={"center_x": .28, "y": .195}, background_color=(0, 0, 0, 0))
        b3 = Button(name="1", text=str(gear.attack[1]), size_hint=(.05, .02), color=(0, 0, 0, 1), pos_hint={"center_x": .44, "y": .195}, background_color=(0, 0, 0, 0))
        b1 = Button(name="2", text=str(gear.attack[2]), size_hint=(.05, .02), color=(0, 0, 0, 1), pos_hint={"center_x": .6, "y": .195}, background_color=(0, 0, 0, 0))
        b5 = Button(size_hint=(.4, .1), pos_hint={"center_x": .73, "y": .012}, text="Equip")
        fL.add_widget(b2)
        fL.add_widget(b3)
        fL.add_widget(b1)
        fL.add_widget(b5)
        lgt = gear.attack[0]
        med = gear.attack[1]
        hvy = gear.attack[2]
        b2.bind(on_release=partial(main.ChangeVal, lgt, gear.attack))
        b3.bind(on_release=partial(main.ChangeVal, med, gear.attack))
        b1.bind(on_release=partial(main.ChangeVal, hvy, gear.attack))
        b5.bind(on_release=partial(EquipPopup, gear, character, screen, button))
    else:
        b2 = Button(name="item", text=str(gear.quality), size_hint=(.05, .02), color=(0, 0, 0, 1), pos_hint={"center_x": .81, "y": .195}, background_color=(0, 0, 0, 0))
        b5 = Button(size_hint=(.4, .1), pos_hint={"center_x": .73, "y": .012}, text="Use")
        fL.add_widget(b2)
        fL.add_widget(b5)
        qlt = gear.quality
        b2.bind(on_release=partial(main.ChangeVal, qlt, gear))
        b5.bind(on_release=partial(UsePopup, gear, screen, popup, character, main))
    b4.bind(on_release=partial(DiscardPopup, gear, screen, popup, character, main))
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
        character.inv[index] = Gear(fetch[1], fetch[2], fetch[3], randint(fetch[4], fetch[5]), fetch[4], fetch[5], fetch[7])

def DiscardGear(gear, screen, prevPop, character, main, notUsed):
    cells = [screen.ids.cellOne, screen.ids.cellTwo, screen.ids.cellThree, screen.ids.cellFour,
             screen.ids.cellFive, screen.ids.cellSix, screen.ids.cellSeven, screen.ids.cellEight,
             screen.ids.cellNine, screen.ids.cellTen, screen.ids.cellEleven, screen.ids.cellTwelve]

    index = character.inv.index(gear)
    character.inv[index] = 0
    print(character.inv[index])
    for i in range(1, int(cells[index].name) + 1):
        cells[index].unbind_uid('on_release', i)
    cells[index].text = "EMPTY"
    CellInit(main, screen, character)
    Screens.CalcInv(character, screen.ids.invVal)
    prevPop.dismiss()

def DiscardPopup(gear, screen, prevPopup, character, main, notUsed):
    b = FloatLayout()
    l = Label(font_size=25, pos_hint={"center_x": .5, "y": .25}, text="Are you sure you want to discard")
    b1 = Button(size_hint=(.3, .3), pos_hint={"center_x": .5, "y": .13}, text="Discard")
    b.add_widget(l)
    b.add_widget(b1)

    popup = Popup(title='Discard Gear',
                  content=b,
                  size_hint=(None, None), size=(410, 200))

    b1.bind(on_press=partial(DiscardGear, gear, screen, prevPopup, character, main))
    b1.bind(on_release=popup.dismiss)
    popup.open()

def AddGearPopup(index, character, main, screen, notUsed):
    b = FloatLayout()
    l = Label(font_size=25, pos_hint={"center_x": .5, "y": .25}, text="Add random gear?")
    b1 = Button(size_hint=(.3, .3), pos_hint={"center_x": .5, "y": .13}, text="Add")
    b.add_widget(l)
    b.add_widget(b1)

    popup = Popup(title='Add Gear',
                  content=b,
                  size_hint=(None, None), size=(410, 200))

    b1.bind(on_press=partial(AddGear, index, character, main, screen))
    b1.bind(on_release=popup.dismiss)
    popup.open()

def AddGear(index, character, main, screen, notUsed):
    RandomItem(main.cur, index, character)
    Screens.CalcInv(character, screen.ids.invVal)
    CellInit(main, screen, character)

def UsePopup(gear, screen, prevPopup, character, main, notUsed):
    b = FloatLayout()
    l = Label(font_size=25, pos_hint={"center_x": .5, "y": .25}, text="Use " + gear.name + "?")
    b1 = Button(size_hint=(.3, .3), pos_hint={"center_x": .5, "y": .13}, text="Use")
    b.add_widget(l)
    b.add_widget(b1)

    popup = Popup(title='Use Item',
                  content=b,
                  size_hint=(None, None), size=(410, 200))

    b1.bind(on_press=partial(UseItem, gear, screen, prevPopup, character, main))
    b1.bind(on_release=popup.dismiss)
    popup.open()

def UseItem(gear, screen, prevPopup, character, main, button):
    if gear.name == "First Aid":
        character.tempHealth += gear.quality
        if character.tempHealth >= character.health:
            character.tempHealth = character.health
            screen.ids.healVal.color = (0, 0, 0, 1)
        else:
            screen.ids.healVal.color = (1, 0, 0, 1)
        screen.ids.healVal.text = str(character.tempHealth)
    elif gear.name == "EXP":
        sp = character.lvl.split(".")
        num = int(sp[1])
        num += gear.quality
        character.lvl = sp[0] + "." + str(num)
        screen.ids.lvlVal.text = character.lvl
        if num > 9:
            screen.ids.lvlVal.color = (0, .25, 1, 1)
    elif gear.name == "Skill Pack":
        GetCards(gear.quality, main)
        Cards.NewCards(main, gear.quality)

    DiscardGear(gear, screen, prevPopup, character, main, button)

def EquipPopup(gear, character, screen, prevButton, button):
    b = FloatLayout()
    l = Label(font_size=25, pos_hint={"center_x": .5, "y": .35}, text="Which Hand?")
    b1 = Button(size_hint=(.3, .25), pos_hint={"center_x": .5, "y": .08}, text="Equip")
    b2 = Button(name="Right", text="RIGHT", size_hint=(.4, .25), pos_hint={"center_x": .75, "y": .42})
    b3 = Button(name="Left", text="LEFT", size_hint=(.4, .25), pos_hint={"center_x": .25, "y": .42})
    if character.Right.name != 0:
        b2.text = character.Right.name
    if character.Left.name != 0:
        b3.text = character.Left.name
    b2.bind(on_release=partial(EquipSelect, b3))
    b3.bind(on_release=partial(EquipSelect, b2))
    b.add_widget(l)
    b.add_widget(b1)
    b.add_widget(b2)
    b.add_widget(b3)

    popup = Popup(title='Equip',
                  content=b,
                  size_hint=(None, None), size=(410, 250))

    b1.bind(on_press=partial(EquipConfirm, b3, gear, character, screen, prevButton))
    b1.bind(on_release=popup.dismiss)
    popup.open()

def EquipSelect(deselected, selected):
    if selected.name == "Left":
        selected.color = (0, 1, 0, 1)
    else:
        selected.color = (1, 0, 1, 1)
    deselected.color = (1, 1, 1, 1)

def EquipConfirm(left, gear, character, screen, prevButton, button):
    cells = [screen.ids.cellOne, screen.ids.cellTwo, screen.ids.cellThree, screen.ids.cellFour,
             screen.ids.cellFive, screen.ids.cellSix, screen.ids.cellSeven, screen.ids.cellEight,
             screen.ids.cellNine, screen.ids.cellTen, screen.ids.cellEleven, screen.ids.cellTwelve]

    hand = ""
    if left.color == [0, 1, 0, 1]:
        character.Left = gear
        hand = "left"
        if character.Right == character.Left:
            character.Right = Gear(0, 0, 0, 0, 0, 0, 0)
    else:
        character.Right = gear
        hand = "right"
        if character.Left == character.Right:
            character.Left = Gear(0, 0, 0, 0, 0, 0, 0)

    for i in range(0, len(character.inv)):
        if hand == "left":
            if cells[i].color == [0, 1, 0, 1]:
                cells[i].color = (1, 1, 1, 1)
        else:
            if cells[i].color == [1, 0, 1, 1]:
                cells[i].color = (1, 1, 1, 1)

    if hand == "left":
        prevButton.color = (0, 1, 0, 1)
    else:
        prevButton.color = (1, 0, 1, 1)

def GetCards(quality, main):
    main.num = 0
    main.deckStuff(main.ids.booster, False)
    main.nextscreen("character", "booster")

class Gear:
    def __init__(self, name, type, size, quality, min, max, definition):
        self.name = name
        self.type = type
        self.size = size
        self.quality = quality
        self.min = min
        self.max = max
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