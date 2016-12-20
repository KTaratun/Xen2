import Random
from kivy.uix.label import CoreLabel
from kivy.uix.button import Button
from kivy.uix.image import Image
from kivy.uix.popup import Popup
from random import randint
from functools import partial

def InitialDeck(character):
    if character.Class == "Scout":
        character.deck = [1, 7, 7, 7, 13, 2, 8, 8, 8, 14, 3, 9, 9, 9, 15, 4, 4, 10, 10, 16, 16, 5, 5, 11, 11, 17, 17, 6, 12,
                          18]
    elif character.Class == "Technician":
        character.deck = [19, 25, 25, 25, 31, 20, 26, 26, 26, 32, 21, 27, 27, 27, 33, 22, 22, 28, 28, 34, 34, 23, 23, 29, 29,
                          35, 35, 24, 30, 36]
    elif character.Class == "Assault":
        character.deck = [37, 43, 43, 43, 49, 38, 44, 44, 44, 50, 39, 45, 45, 45, 51, 40, 40, 46, 46, 52, 52, 41, 41, 47, 47,
                          53, 53, 42, 48, 54]
    elif character.Class == "Guard":
        character.deck = [55, 61, 61, 61, 67, 56, 62, 62, 62, 68, 57, 63, 63, 63, 69, 58, 58, 64, 64, 70, 70, 59, 59, 65, 65,
                          71, 71, 60, 66, 72]
    elif character.Class == "PSI":
        character.deck = [73, 79, 79, 79, 85, 74, 80, 80, 80, 86, 75, 81, 81, 81, 87, 76, 76, 82, 82, 88, 88, 77, 77, 83, 83,
                          89, 89, 78, 84, 90]
    elif character.Class == "Arbiter":
        character.deck = [91, 97, 97, 97, 103, 92, 98, 98, 98, 104, 93, 99, 99, 99, 105, 94, 94, 100, 100, 106, 106, 95, 95,
                          101, 101, 107, 107, 96, 102, 108]

def Sorting(cards):
    # Sorts cards before saving them to text file
    deck = []
    cards.sort()
    for i in range(0, 30):
        if cards[i][5] == "Defensive":
            deck.append(cards[i])
    for i in range(0, 30):
        if cards[i][5] == "Tactical":
            deck.append(cards[i])
    for i in range(0, 30):
        if cards[i][5] == "Aggressive":
            deck.append(cards[i])
    for i in range(0, 30):
        if cards[i][4] == "Reaction":
            deck.append(cards[i])
    for i in range(0, 30):
        if cards[i][4] == "Half-Round":
            deck.append(cards[i])
    for i in range(0, 30):
        if cards[i][4] == "Full-Round":
            deck.append(cards[i])
    return deck

def Text(type, string):
    # Takes a string and formats it to fit different location of a card
    # type: Which type of string
    # string: The unmodified string date to format based on type
    if (type == "name") or (type == "type"):
        modString = string
        siz = len(modString)
        for b in range(0, 38 - siz):
            modString += " "
        name = CoreLabel(text=modString, color=(0, 0, 0, 1), bold=True)
        name.refresh()
        return name.texture
    elif (type == "text"):
        # modString: The working formatted string
        # remainder: The rest of orignal string before formatting
        # num: Number of characters per line
        modString = []
        remainder = []
        num = 30
        if len(string) > num:
            for p in range(0, num):
                # Starting from the last character of the current line (based on num),
                # check each character until you hit a space, then break off the line
                if string[num - p] == ' ':
                    modString = string[:(num - p)]
                    for i in range(0, p):
                        modString += ' '
                    modString += '\n'
                    # Set remainder to the rest of the original string so we know where to
                    # start the next line
                    remainder = string[(num - p + 1):]
                    if len(string) <= num * 2:
                        modString += remainder
                    break
        else:
            modString = string
            for p in range(0, num - len(string)):
                modString += ' '
            modString += '\n'
        if len(string) > num * 2:
            if len(remainder) == 30:
                modString += remainder
                modString += '\n'
            else:
                for p in range(0, num):
                    if remainder[num - p] == ' ':
                        modString += remainder[:(num - p)]
                        for i in range(0, p):
                            modString += ' '
                        modString += '\n'
                        remainder = remainder[(num - p + 1):]
                        if len(string) < num * 3:
                            modString += remainder
                        break
        else:
            modString += '\n'
        if len(string) > num * 3:
            for p in range(0, num):
                if remainder[num - p] == ' ':
                    modString += remainder[:(num - p)]
                    for i in range(0, p):
                        modString += ' '
                    modString += '\n'
                    remainder = remainder[(num - p + 1):]
                    if len(string) < num * 4:
                        modString += remainder
                    break
        else:
            modString += '\n'

        text = CoreLabel(text=modString, color=(0, 0, 0, 1), bold=True)
        text.refresh()
        return text.texture

def BindCardPos(self, card, sys):
    #For grabbing and moving cards
    if sys.x > 150 and sys.y < 240:
        if card.state == "down" and sys.button == "left":
            card.pos_hint={"x": (sys.x-280)/520, "y": sys.y/200}

            card.children[4].pos=(card.x - 5, card.y - 20)
            card.children[3].pos=(card.children[4].x + 9, card.children[4].y + 229)
            card.children[2].pos=(card.children[4].x + 30, card.children[4].y + 239)
            card.children[1].pos=(card.children[4].x + 30, card.children[4].y + 225)
            card.children[0].pos=(card.children[4].x + 21, card.children[4].y + 49.5)

def FetchDeck(main):
    #Used to grab entire deck from database based on the text file saved out
    cards = []
    for i in range(0, 30):
        query = "SELECT * FROM cards WHERE cardId = %s"
        main.cur.execute(query, (str(main.character.deck[i])))
        cards.append(main.cur.fetchone())
    return cards

def LoadCard(main, screen, data, card, pos, mult):
    #Used to grab data of specified card from currently loaded deck
    if screen.name == "character":
        card.bind(on_touch_move=partial(BindCardPos, main))
    card.bind(on_touch_down=partial(CardSelect, main, screen))
    card.name = str(data[0])
    card.add_widget(Image(pos=pos, size=(182 * mult,280 * mult)))
    card.add_widget(Image(x=pos[0] + 9 * mult, y=pos[1] + 229 * mult, size=(20 * mult,20 * mult)))
    card.add_widget(Image(x=pos[0] + 30 * mult, y=pos[1] + 239 * mult, size=((card.size[0] * 1.2) * mult, (card.size[1] * .16) * mult)))
    card.add_widget(Image(x=pos[0] + 30 * mult, y=pos[1] + 225 * mult, size=((card.size[0] * 1.2) * mult, (card.size[1] * .16) * mult)))
    card.add_widget(Image(x=pos[0] + 21 * mult, y=pos[1] + 49.5 * mult, size=((card.size[0] * 1.42) * mult, (card.size[1] * .545) * mult)))

    card.children[2].texture = Text(type="name", string=data[1])
    card.children[1].texture = Text(type="type", string=data[4] + '-' + data[5])
    card.children[0].texture = Text(type="text", string=data[6])

    if data[5] == "Defensive":
        card.children[4].source = "LightCard.png"
    elif data[5] == "Tactical":
        card.children[4].source = "MediumCard.png"
    elif data[5] == "Aggressive":
        card.children[4].source = "HeavyCard.png"
    else:
        card.children[4].source = "ActionCard.png"

    if data[2] == "Instinct":
        card.children[3].source = "Zephyr.png"
    elif data[2] == "Tech":
        card.children[3].source = "Spark.png"
    elif data[2] == "Force":
        card.children[3].source = "Heat.png"
    elif data[2] == "Vitality":
        card.children[3].source = "Mineral.png"
    elif data[2] == "Psyche":
        card.children[3].source = "Void.png"
    elif data[2] == "Mind":
        card.children[3].source = "Liquid.png"

def CardSelect(main, screen, card, sys):
    #Used for reordering cards in hand and highlighting selected card
    if sys.x > card.x and sys.x < card.x + card.size[0] and sys.y > card.y and sys.y < card.y + card.size[1]:
        if sys.button == "left" and screen.name != "cards":
            if sys.is_double_tap and screen.name == "character":
                BringCardToFront(main.ids.character.ids.fL, card)

            if sys.x > 420:
                if main.newSelected.pos != [0,1]:
                    main.newSelected.children[4].color = (1, 1, 1, 1)
                    main.newSelected.children[3].color = (1, 1, 1, 1)

                card.children[4].color = (1, .7, .7, 1)
                card.children[3].color = (1, .7, .7, 1)
                main.newSelected = card
            else:
                if main.selected.pos != [0,1]: #Doing a weird check because I don't know how else to check if not initialized
                    main.selected.children[4].color = (1, 1, 1, 1)
                    main.selected.children[3].color = (1, 1, 1, 1)

                card.children[4].color = (.7, .7, 1, 1)
                card.children[3].color = (.7, .7, 1, 1)
                main.selected = card
            if screen.name =="character":
                screen.ids.discard.disabled = False
        elif sys.button == "right":
            CloseUp(card)

def BringCardToFront(fL, card):
    fL.remove_widget(card)
    fL.add_widget(card)

def CloseUp(card):
    border = Image(source=card.children[4].source, size=(800, 800), allow_stretch=True)
    border.add_widget(Image(source=card.children[3].source, size=(45, 45), pos=(228, 465), allow_stretch=True))
    border.add_widget(Image(texture=card.children[2].texture, pos=(275, 392), size=(220, 220), allow_stretch=True))
    border.add_widget(Image(texture=card.children[1].texture, pos=(275, 363), size=(220, 220), allow_stretch=True))
    border.add_widget(Image(texture=card.children[0].texture, pos=(255, 8), size=(290, 290), allow_stretch=True))
    popup = Popup(title='Card Viewer',
                  content=border,
                  size_hint=(None, None), size=(410, 580))
    popup.open()

def NewCards(main, quality):
    main.cur.execute("SELECT COUNT(*) FROM cards")
    num = main.cur.fetchone()

    for i in range(0, quality):
        ran = randint(1, int(num[0]))
        main.boostInd.append(ran)
        query = "SELECT * FROM cards WHERE cardId = %s"
        main.cur.execute(query, (str(ran)))
        main.booster.append(main.cur.fetchone())
        main.boosterCards.append(0)

    NewCardPlacement(main)

def NewCardPlacement(main):
    mlt = 1.2
    for i in range(0, len(main.booster)):
        pos = (430 + i * 35, 224 - i * 50)
        xMlt = 1.184 + .097 * i
        yMlt =  8.22 - 1.63 * i
        print(xMlt)
        print(yMlt)
        card = Button(name=str(30 + i), pos_hint={"x": xMlt, "y": yMlt}, size_hint=(.47 * mlt, 8 * mlt))
        LoadCard(main, main.ids.booster, main.booster[i], card, pos, mlt)
        main.boosterCards[i] = (card)
        main.ids.booster.ids.fL.add_widget(card)