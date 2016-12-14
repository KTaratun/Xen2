def StatLabelUpdate(screen, stat, lab, character):
    if lab.name == "Ins":
        character.Movement = 3 + stat
        screen.ids.MovVal.text = str(character.Movement)
    elif lab.name == "Tec":
        character.Range = 3 + stat
        screen.ids.RanVal.text = str(character.Range)
    elif lab.name == "For":
        character.Brutality = stat * 2
        screen.ids.DamVal.text = str(character.Brutality)
    elif lab.name == "Vit":
        character.health = 16 + stat * 2
        character.Inventory = 6 + stat * 2
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
    screen.ids.Mov.pos_hint = {"x": .33 + posX, "y": .74 + posY}
    screen.ids.Zep.pos_hint = {"x": .389 + posX, "y": .67 + posY}
    screen.ids.Tec.pos_hint = {"x": .465 + posX, "y": .88 + posY}
    screen.ids.Ran.pos_hint = {"x": .515 + posX, "y": .88 + posY}
    screen.ids.Spa.pos_hint = {"x": .493 + posX, "y": .7455 + posY}
    screen.ids.For.pos_hint = {"x": .65 + posX, "y": .74 + posY}
    screen.ids.Dam.pos_hint = {"x": .69 + posX, "y": .74 + posY}
    screen.ids.Hea.pos_hint = {"x": .5955 + posX, "y": .67 + posY}
    screen.ids.Vit.pos_hint = {"x": .65 + posX, "y": .465 + posY}
    screen.ids.Inv.pos_hint = {"x": .69 + posX, "y": .465 + posY}
    screen.ids.Mine.pos_hint = {"x": .5955 + posX, "y": .512 + posY}
    screen.ids.Psy.pos_hint = {"x": .47 + posX, "y": .325 + posY}
    screen.ids.Mas.pos_hint = {"x": .515 + posX, "y": .325 + posY}
    screen.ids.Voi.pos_hint = {"x": .493 + posX, "y": .43 + posY}
    screen.ids.Mind.pos_hint = {"x": .29 + posX, "y": .465 + posY}
    screen.ids.Int.pos_hint = {"x": .33 + posX, "y": .465 + posY}
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