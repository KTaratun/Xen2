import Gear
import Cards
from kivy.uix.button import Button

def StatLabelUpdate(screen, stat, lab, character):
    if lab.name == "Ins":
        character.Movement = 3 + stat
        screen.ids.MovVal.text = str(character.Movement)
    elif lab.name == "Tec":
        character.Range = 3 + stat
        print(screen.ids.RanVal.text)
        screen.ids.RanVal.text = str(character.Range)
    elif lab.name == "For":
        character.Brutality = stat
        screen.ids.DamVal.text = str(character.Brutality)
    elif lab.name == "Vit":
        character.health = 8 + stat
        character.Inventory = 6 + stat * 2
        screen.ids.HPVal.text = str(character.health)
        screen.ids.InvVal.text = str(character.Inventory)
    elif lab.name == "Psy":
        character.Mastery = stat + 1
        character.ElTotal = stat * 4
        screen.ids.MasVal.text = str(character.Mastery)
    elif lab.name == "Min":
        character.Intellect = 3 + stat
        screen.ids.IntVal.text = str(character.Intellect)

def CharStats(screen):
    #repositions the stats portion of the character sheet
    posX = -.24
    posY = -.03

    screen.ids.cS.pos_hint = {"center_x": .5 + posX, "center_y": .65 + posY}
    screen.ids.Ins.pos_hint = {"x": .29 + posX, "y": .74 + posY}
    screen.ids.MovVal.pos_hint = {"x": .33 + posX, "y": .74 + posY}
    screen.ids.Zep.pos_hint = {"x": .389 + posX, "y": .67 + posY}
    screen.ids.Tec.pos_hint = {"x": .465 + posX, "y": .88 + posY}
    screen.ids.RanVal.pos_hint = {"x": .515 + posX, "y": .88 + posY}
    screen.ids.Spa.pos_hint = {"x": .493 + posX, "y": .7455 + posY}
    screen.ids.For.pos_hint = {"x": .65 + posX, "y": .74 + posY}
    screen.ids.DamVal.pos_hint = {"x": .69 + posX, "y": .74 + posY}
    screen.ids.Hea.pos_hint = {"x": .5955 + posX, "y": .67 + posY}
    screen.ids.Vit.pos_hint = {"x": .65 + posX, "y": .465 + posY}
    screen.ids.InvVal.pos_hint = {"x": .69 + posX, "y": .465 + posY}
    screen.ids.Mine.pos_hint = {"x": .5955 + posX, "y": .512 + posY}
    screen.ids.Psy.pos_hint = {"x": .47 + posX, "y": .325 + posY}
    screen.ids.MasVal.pos_hint = {"x": .515 + posX, "y": .325 + posY}
    screen.ids.Voi.pos_hint = {"x": .493 + posX, "y": .43 + posY}
    screen.ids.Mind.pos_hint = {"x": .29 + posX, "y": .465 + posY}
    screen.ids.IntVal.pos_hint = {"x": .33 + posX, "y": .465 + posY}
    screen.ids.Liq.pos_hint = {"x": .389 + posX, "y": .512 + posY}
    screen.ids.insInfo.pos_hint = {"x": .279 + posX, "y": .79 + posY}
    screen.ids.tecInfo.pos_hint = {"x": .458 + posX, "y": .93 + posY}
    screen.ids.forInfo.pos_hint = {"x": .638 + posX, "y": .79 + posY}
    screen.ids.vitInfo.pos_hint = {"x": .638 + posX, "y": .513 + posY}
    screen.ids.psyInfo.pos_hint = {"x": .458 + posX, "y": .372 + posY}
    screen.ids.minInfo.pos_hint = {"x": .279 + posX, "y": .513 + posY}

def BloodStuff(screen, character):
        if character.bTStats[0] == 2:
            screen.ids.zepBlood.text = "+"
        else:
            screen.ids.zepBlood.text = "--"
        if character.bTStats[1] == 2:
            screen.ids.spaBlood.text = "+"
        else:
            screen.ids.spaBlood.text = "--"
        if character.bTStats[2] == 2:
            screen.ids.heaBlood.text = "+"
        else:
            screen.ids.heaBlood.text = "--"
        if character.bTStats[3] == 2:
            screen.ids.minBlood.text = "+"
        else:
            screen.ids.minBlood.text = "--"
        if character.bTStats[4] == 2:
            screen.ids.psyBlood.text = "+"
        else:
            screen.ids.psyBlood.text = "--"
        if character.bTStats[5] == 2:
            screen.ids.liqBlood.text = "+"
        else:
            screen.ids.liqBlood.text = "--"

def NameSave(screen, nam, character, button):
    character.name = nam.text
    screen.ids.nameVal.text = nam.text

    if len(nam.text) > 0:
        screen.ids.fin.disabled = False
    else:
        screen.ids.fin.disabled = True

def ResetAll(main, notUsed):
    ResetStats(main, main.character, notUsed)
    ResetDeck(main, main.character, notUsed)

def ResetStats(self, character, notUsed):
    self.CharScreenUpdate(self.ids.character, character)

    self.ids.character.ids.HPVal.color=(0, 0, 0, 1)
    character.tempHealth = character.health
    self.ids.character.ids.Ins.color = (0, 0, 0, 1)
    character.tempTech = character.Tech
    self.ids.character.ids.Tec.color = (0, 0, 0, 1)
    character.tempForce = character.Force
    self.ids.character.ids.For.color = (0, 0, 0, 1)
    character.tempVitality = character.Vitality
    self.ids.character.ids.Vit.color = (0, 0, 0, 1)
    character.tempPsyche = character.Psyche
    self.ids.character.ids.Psy.color = (0, 0, 0, 1)
    character.tempMind = character.Mind
    self.ids.character.ids.Mind.color = (0, 0, 0, 1)
    character.tempMovement = character.Movement
    self.ids.character.ids.MovVal.color = (0, 0, 0, 1)
    character.tempRange = character.Range
    self.ids.character.ids.RanVal.color = (0, 0, 0, 1)
    character.tempBrutality = character.Brutality
    self.ids.character.ids.DamVal.color = (0, 0, 0, 1)
    character.tempInventory = character.Inventory
    self.ids.character.ids.InvVal.color = (0, 0, 0, 1)
    character.tempMastery = character.Mastery
    self.ids.character.ids.MasVal.color = (0, 0, 0, 1)
    character.tempIntellect = character.Intellect
    self.ids.character.ids.IntVal.color = (0, 0, 0, 1)
    character.tempZephyr = character.Zephyr
    self.ids.character.ids.Zep.color = (0, 0, 0, 1)
    character.tempSpark = character.Spark
    self.ids.character.ids.Spa.color = (0, 0, 0, 1)
    character.tempHeat = character.Heat
    self.ids.character.ids.Hea.color = (0, 0, 0, 1)
    character.tempMineral = character.Mineral
    self.ids.character.ids.Mine.color = (0, 0, 0, 1)
    character.tempVoid = character.Void
    self.ids.character.ids.Voi.color = (0, 0, 0, 1)
    character.tempLiquid = character.Liquid
    self.ids.character.ids.Liq.color = (0, 0, 0, 1)

    Gear.CellInit(self, self.ids.character, character)

def ResetDeck(self, character, notUsed):
    self.cardId = 0
    for i in range(0, len(character.hand)):
        self.Discard(character.hand[0], character)
    character.cardsLeft.clear()
    character.discard.clear()
    self.selected = Button(pos=(0, 1))
    self.ids.character.ids.undo.disabled = True
    self.ids.character.ids.discard.disabled = True
    self.ids.character.ids.draw.disabled = False
    self.ids.character.ids.drawMax.disabled = False
    self.character.cardsLeft = Cards.FetchDeck(self)

def DeleteChar(main, button):
    main.path.close()
    main.path = open(main.delete, "w")
    main.path.close()
    main.CharSelectUpdate()
    main.ids.charSelect.ids.delete.disabled = True
    main.ids.charSelect.ids.next.disabled = True

    main.ids.charSelect.ids.one.color = (1, 1, 1, 1)
    main.ids.charSelect.ids.two.color = (1, 1, 1, 1)
    main.ids.charSelect.ids.three.color = (1, 1, 1, 1)
    main.ids.charSelect.ids.four.color = (1, 1, 1, 1)
    main.ids.charSelect.ids.five.color = (1, 1, 1, 1)
    main.ids.charSelect.ids.six.color = (1, 1, 1, 1)

def CalcInv(character, label):
    size = 0
    for i in range(0, len(character.inv)):
        if (character.inv[i] != 0):
            size += int(character.inv[i].size)

    label.text = str(size)

    if size > character.Inventory:
        label.color = (1, 0, 0, 1)
    else:
        label.color = (1, 1, 1, 1)

def LevelUp(character, screen, main, notUsed):
    sp = character.lvl.split(".")
    exp = int(sp[1]) - 10
    lvl = int(sp[0]) + 1
    character.lvl = str(lvl) + "." + str(exp)
    screen.ids.lvlVal.text = character.lvl
    if exp < 10:
        screen.ids.lvlVal.color = (1, 1, 1, 1)

    main.colors = [screen.ids.Ins.color, screen.ids.Tec.color, screen.ids.For.color,
                   screen.ids.Vit.color, screen.ids.Psy.color, screen.ids.Mind.color]

    screen.ids.Ins.color = (0, 1, 0, 1)
    screen.ids.Tec.color = (0, 1, 0, 1)
    screen.ids.For.color = (0, 1, 0, 1)
    screen.ids.Vit.color = (0, 1, 0, 1)
    screen.ids.Psy.color = (0, 1, 0, 1)
    screen.ids.Mind.color = (0, 1, 0, 1)

def LvlUpdate(orig, temp, button, main):
    orig += 1
    temp += 1
    main.ids.character.ids.Ins.color = main.colors[0]
    main.ids.character.ids.Tec.color = main.colors[1]
    main.ids.character.ids.For.color = main.colors[2]
    main.ids.character.ids.Vit.color = main.colors[3]
    main.ids.character.ids.Psy.color = main.colors[4]
    main.ids.character.ids.Mind.color = main.colors[5]

    if button.name == "Ins":
        main.character.Instinct = str(orig)
        StatLabelUpdate(main.ids.character, orig, main.ids.character.ids.Ins, main.character)
    elif button.name == "Tec":
        main.character.Tech = str(orig)
        StatLabelUpdate(main.ids.character, orig, main.ids.character.ids.Tec, main.character)
    elif button.name == "For":
        main.character.Force = str(orig)
        StatLabelUpdate(main.ids.character, orig, main.ids.character.ids.For, main.character)
    elif button.name == "Vit":
        main.character.Vitality = str(orig)
        StatLabelUpdate(main.ids.character, orig, main.ids.character.ids.Vit, main.character)
    elif button.name == "Psy":
        main.character.Psyche = str(orig)
        StatLabelUpdate(main.ids.character, orig, main.ids.character.ids.Psy, main.character)
    elif button.name == "Mind":
        main.character.Mind = str(orig)
        StatLabelUpdate(main.ids.character, orig, main.ids.character.ids.Mind, main.character)

    if temp > orig:
        button.color = (0, .25, 1, 1)
    elif temp < orig:
        button.color = (1, 0, 0, 1)
    else:
        button.color = (0, 0, 0, 1)
    button.text = str(temp)
    return temp

def WeaponPlusMinus(orig, temp, button):
    if button.last_touch.button == "left":
        if len(button.name) == 1 and temp[int(button.name)] < orig[int(button.name) + 3]:
            temp[int(button.name)] += 1
            if temp[int(button.name)] > int(orig[int(button.name) + 3]):
                button.color = (0, .25, 1, 1)
            elif temp[int(button.name)] < int(orig[int(button.name) + 3]):
                button.color = (1, 0, 0, 1)
            else:
                button.color = (0, 0, 0, 1)
            button.text = str(temp[int(button.name)])
            return
        elif button.name == "item" and temp.quality < temp.max:
            temp.quality += 1
            if temp.quality > int(orig):
                button.color = (0, .25, 1, 1)
            elif temp.quality < int(orig):
                button.color = (1, 0, 0, 1)
            else:
                button.color = (0, 0, 0, 1)
            button.text = str(temp.quality)
            return
    elif button.last_touch.button == "right":
        if len(button.name) == 1 and temp[int(button.name)] > 0:
            temp[int(button.name)] -= 1
            if temp[int(button.name)] > int(orig[int(button.name) + 3]):
                button.color = (0, .25, 1, 1)
            elif temp[int(button.name)] < int(orig[int(button.name) + 3]):
                button.color = (1, 0, 0, 1)
            else:
                button.color = (0, 0, 0, 1)
            button.text = str(temp[int(button.name)])
            return
        elif button.name == "item" and temp.quality > temp.min:
            temp.quality -= 1
            if temp.quality > int(orig):
                button.color = (0, .25, 1, 1)
            elif temp.quality < int(orig):
                button.color = (1, 0, 0, 1)
            else:
                button.color = (0, 0, 0, 1)
            button.text = str(temp.quality)
            return