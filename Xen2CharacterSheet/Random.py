import Gear
from random import randint

def RandomCharacter(lvl, character, cur):
    character.name = RandomName()
    character.lvl = lvl
    l = lvl.split(".")
    stats = RandomStats(int(l[0]))
    RandomBloodType(character)

    character.Instinct = stats[0]
    character.Tech = stats[1]
    character.Force = stats[2]
    character.Vitality = stats[3]
    character.Psyche = stats[4]
    character.Mind = stats[5]
    character.Movement = 3 + stats[0]
    character.Range = 3 + stats[1]
    character.Brutality = stats[2] * 2
    character.health = stats[3] * 2 + 16
    character.Inventory = stats[3] * 2 + 6
    if stats[4] == 0:
        character.ElTotal = 2
    else:
        character.ElTotal = stats[4] * 4
    character.Mastery = 1 + stats[4]
    character.Intellect = 3 + stats[5]

    RandomInventory(cur, character)
    ele = RandomElements(character)

    character.Zephyr = ele[0]
    character.Spark = ele[1]
    character.Heat = ele[2]
    character.Mineral = ele[3]
    character.Void = ele[4]
    character.Liquid = ele[5]

    character.deck = RandomDeck(cur)

def RandomName():
    size = randint(3, 8)
    con = "bbbcccdffgghhjjjkkklllmmmnnnppqrssstttvwxyz"
    vow = "aeiou"
    name = ""

    for i in range(0, size):
        if i % 2 == 0:
            name += con[randint(0, len(con) - 1)]
        elif i % 2 == 1:
            name += vow[randint(0, len(vow) - 1)]

    return name

def RandomStats(lvl):
    stats = [0, 0, 0, 0, 0, 0]
    for i in range(0, lvl):
        stats[randint(0, 5)] += 1
    return stats

def RandomBloodType(character):
    b = (randint(0, 19))

    if b == 0:
        character.bTStats[0] = -2
        character.bTStats[1] = 2
        character.bTStats[2] = -2
        character.bTStats[3] = 2
        character.bTStats[4] = -2
        character.bTStats[5] = 2
        character.bloodType = "A7+"
    elif b == 10:
        character.bTStats[0] = 2
        character.bTStats[1] = -2
        character.bTStats[2] = 2
        character.bTStats[3] = -2
        character.bTStats[4] = 2
        character.bTStats[5] = -2
        character.bloodType = "A7-"
    elif b == 1:
        character.bTStats[0] = 2
        character.bTStats[1] = -2
        character.bTStats[2] = -2
        character.bTStats[3] = -2
        character.bTStats[4] = 2
        character.bTStats[5] = 2
        character.bloodType = "B6+"
    elif b == 11:
        character.bTStats[0] = -2
        character.bTStats[1] = 2
        character.bTStats[2] = 2
        character.bTStats[3] = 2
        character.bTStats[4] = -2
        character.bTStats[5] = -2
        character.bloodType = "B6-"
    elif b == 2:
        character.bTStats[0] = 2
        character.bTStats[1] = -2
        character.bTStats[2] = -2
        character.bTStats[3] = 2
        character.bTStats[4] = 2
        character.bTStats[5] = -2
        character.bloodType = "C1+"
    elif b == 12:
        character.bTStats[0] = -2
        character.bTStats[1] = 2
        character.bTStats[2] = 2
        character.bTStats[3] = -2
        character.bTStats[4] = -2
        character.bTStats[5] = 2
        character.bloodType = "C1-"
    elif b == 3:
        character.bTStats[0] = 2
        character.bTStats[1] = -2
        character.bTStats[2] = 2
        character.bTStats[3] = 2
        character.bTStats[4] = -2
        character.bTStats[5] = -2
        character.bloodType = "D9+"
    elif b == 13:
        character.bTStats[0] = -2
        character.bTStats[1] = 2
        character.bTStats[2] = -2
        character.bTStats[3] = -2
        character.bTStats[4] = 2
        character.bTStats[5] = 2
        character.bloodType = "D9-"
    elif b == 4:
        character.bTStats[0] = 2
        character.bTStats[1] = -2
        character.bTStats[2] = -2
        character.bTStats[3] = 2
        character.bTStats[4] = -2
        character.bTStats[5] = 2
        character.bloodType = "E2+"
    elif b == 14:
        character.bTStats[0] = -2
        character.bTStats[1] = 2
        character.bTStats[2] = 2
        character.bTStats[3] = -2
        character.bTStats[4] = 2
        character.bTStats[5] = -2
        character.bloodType = "E2-"
    elif b == 5:
        character.bTStats[0] = 2
        character.bTStats[1] = 2
        character.bTStats[2] = 2
        character.bTStats[3] = -2
        character.bTStats[4] = -2
        character.bTStats[5] = -2
        character.bloodType = "F4+"
    elif b == 15:
        character.bTStats[0] = -2
        character.bTStats[1] = -2
        character.bTStats[2] = -2
        character.bTStats[3] = 2
        character.bTStats[4] = 2
        character.bTStats[5] = 2
        character.bloodType = "F4-"
    elif b == 6:
        character.bTStats[0] = 2
        character.bTStats[1] = 2
        character.bTStats[2] = -2
        character.bTStats[3] = -2
        character.bTStats[4] = 2
        character.bTStats[5] = -2
        character.bloodType = "G8+"
    elif b == 16:
        character.bTStats[0] = -2
        character.bTStats[1] = -2
        character.bTStats[2] = 2
        character.bTStats[3] = 2
        character.bTStats[4] = -2
        character.bTStats[5] = 2
        character.bloodType = "G8-"
    elif b == 7:
        character.bTStats[0] = 2
        character.bTStats[1] = 2
        character.bTStats[2] = -2
        character.bTStats[3] = 2
        character.bTStats[4] = -2
        character.bTStats[5] = -2
        character.bloodType = "H5+"
    elif b == 17:
        character.bTStats[0] = -2
        character.bTStats[1] = -2
        character.bTStats[2] = 2
        character.bTStats[3] = -2
        character.bTStats[4] = 2
        character.bTStats[5] = 2
        character.bloodType = "H5-"
    elif b == 8:
        character.bTStats[0] = 2
        character.bTStats[1] = 2
        character.bTStats[2] = -2
        character.bTStats[3] = -2
        character.bTStats[4] = -2
        character.bTStats[5] = 2
        character.bloodType = "I3+"
    elif b == 18:
        character.bTStats[0] = -2
        character.bTStats[1] = -2
        character.bTStats[2] = 2
        character.bTStats[3] = 2
        character.bTStats[4] = 2
        character.bTStats[5] = -2
        character.bloodType = "I3-"
    elif b == 9:
        character.bTStats[0] = 2
        character.bTStats[1] = -2
        character.bTStats[2] = 2
        character.bTStats[3] = -2
        character.bTStats[4] = -2
        character.bTStats[5] = 2
        character.bloodType = "O0+"
    elif b == 19:
        character.bTStats[0] = -2
        character.bTStats[1] = 2
        character.bTStats[2] = -2
        character.bTStats[3] = 2
        character.bTStats[4] = 2
        character.bTStats[5] = -2
        character.bloodType = "O0-"

def RandomInventory(cur, character):
    i = 0
    size = 0
    while size < character.Inventory:
        if i == 12:
            break
        Gear.RandomItem(cur, i, character)
        size = 0
        for j in range(0, 1 + i):
            size += character.inv[j].size
        i += 1

def RandomElements(character):
    elements = []
    for i in range(0, character.Mastery):
        elements.append(0)

    mas = []
    while len(mas) != len(elements):
        new = randint(0, 5)
        if len(mas) == 0:
            mas.append(new)
        else:
            for j in range(0, len(mas)):
                if mas[j] == new:
                    break
                if j + 1 == len(mas):
                    mas.append(new)

    for i in range(0, character.ElTotal):
        elements[randint(0, character.Mastery - 1)] += 1

    final = [0, 0, 0, 0, 0, 0]

    for i in range(0, character.Mastery):
        final[mas[i]] = elements[i]

    return final

def RandomDeck(cur):
    cur.execute("SELECT COUNT(*) FROM cards")
    num = cur.fetchone()
    deck = []

    for i in range(0, 5):
        deck.append(randint(0, num[0] / 6 - 1) * 6 + 1)
    for i in range(0, 5):
        deck.append(randint(0, num[0] / 6 - 1) * 6 + 2)
    for i in range(0, 5):
        deck.append(randint(0, num[0] / 6 - 1) * 6 + 3)
    for i in range(0, 6):
        deck.append(randint(0, num[0] / 6 - 1) * 6 + 4)
    for i in range(0, 6):
        deck.append(randint(0, num[0] / 6 - 1) * 6 + 5)
    for i in range(0, 3):
        deck.append(randint(0, num[0] / 6 - 1) * 6 + 6)

    return deck