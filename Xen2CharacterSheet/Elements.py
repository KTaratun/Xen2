import Cards
from kivy.uix.popup import Popup
from kivy.uix.image import Image
from kivy.graphics import Line
from functools import partial

def GenerateCharges(cur, element, num):
    query = "SELECT * FROM elements WHERE elementLvl = "
    query += num + " and elementCharges LIKE "

    types = element[3].split("+")
    arg = "'%"
    for h in range(0, len(types)):
        arg += types[h]
        if h < len(types) - 1:
            arg += "%' and elementCharges LIKE '%"

    arg += "%'"

    query += arg
    cur.execute(query)
    return cur.fetchall()

def Highlight(button, sys):
    if sys.button == "left" and sys.x > button.x and sys.x < button.x + button.size[0] and sys.y > button.y and sys.y < button.y + button.size[1]:
        button.background_color = .8, .8, 1, 1

def ElementButtons(main, buttons, fL, binder, sys):
    if sys.button == "left" and sys.x > binder.x and sys.x < binder.x + binder.size[0] and sys.y > binder.y and sys.y < binder.y + binder.size[1]:
        namBut = binder.name.split("+")
        ButtonColorReset(namBut[0], fL)
        binder.background_color = .8, .8, 1, 1

        query = "SELECT * FROM elements WHERE elementName = %s"
        main.cur.execute(query, binder.text)
        element = main.cur.fetchone()

        num = str(element[2] + 1)

        fetch = GenerateCharges(main.cur, element, num)

        newButtons = list(buttons)
        newButtons.pop()
        indexer = 12

        if num == "3":
            indexer += 4
        elif num == "4":
            indexer += 7
        elif num == "5":
            indexer += 9
        #for i in range(0, int(binder.name)):
        #    indexer += 5 - int(binder.name)

        # Setting next buttons to pass to current buttons
        for j in range(0, len(newButtons)):
            newButtons[j] = fL.children[len(fL.children)-indexer-j]

        # Setting current buttons
        for k in range(0, len(buttons)):
            buttons[k].text = fetch[k][1]
            nam = buttons[k].name.split("+")
            if int(num) < 6:
                for l in range(1, int(nam[2]) + 1):
                    buttons[k].unbind_uid("on_touch_down", l)
                buttons[k].name = nam[0] + "+" + nam[1] + "+" + str(buttons[k].fbind("on_touch_down", partial(ElementPopup, main.cur, fetch[k][1])))
                buttons[k].fbind("on_touch_down", partial(ElementButtons, main, newButtons, fL))
            else:
                for l in range(1, int(nam[2]) + 1):
                    buttons[k].unbind_uid("on_touch_down", l)
                buttons[0].name = nam[0] + "+" + nam[1] + "+" + str(buttons[k].fbind("on_touch_down", partial(ElementPopup, main.cur, fetch[k][1])))
                buttons[0].fbind("on_touch_down", Highlight)

        # Setting symbols for combos
        for sym in range(0, len(buttons)):
            typers = fetch[sym][3].split("+")
            for typ in range(0, len(typers)):
                string = typers[typ] + '.png'
                buttons[sym].children[len(buttons[sym].children) - typ - 1].source = string
                buttons[sym].children[len(buttons[sym].children) - typ - 1].color = (1, 1, 1, 1)

        DrawLine(binder, fL)

        # This can be a lot cleaner
        run = 0
        count = 0
        if num == "2":
            count = 10
        elif num == "3":
            count = 6
        elif num == "4":
            count = 3
        elif num == "5":
            count = 1

        # Nulling out combinations I'm not using anymore
        while run != count:
            nam = fL.children[len(fL.children)-indexer - run].name.split("+")
            for m in range(1, int(nam[2]) + 2):
                fL.children[len(fL.children)-indexer - run].unbind_uid("on_touch_down", m)
            fL.children[len(fL.children)-indexer - run].text = "Null"
            for n in range(0, len(fL.children[len(fL.children)-indexer - run].children)):
                fL.children[len(fL.children)-indexer - run].children[n].color = (0, 0, 0, 0)
            run += 1

def ElementPopup(cur, name, button, sys):
    if sys.button == "right" and sys.x > button.x and sys.x < button.x + button.size[0] and sys.y > button.y and sys.y < button.y + button.size[1]:
        query = "SELECT * FROM elements WHERE elementName = %s"
        cur.execute(query, name)
        fetch = cur.fetchone()

        border = ElementCard(fetch, 1)

        popup = Popup(title='Element Viewer',
                      content=border,
                      size_hint=(None, None), size=(410, 580))
        popup.open()

def ElementCard(fetch, size):
    name = Cards.Text("name", fetch[1])
    type = Cards.Text("type", fetch[3])
    text = Cards.Text("text", fetch[5])

    # don't ask...
    if size != 1:
        posX = size * 1.65
        posX3 = size * 1.7
        posY1 = size * 1.295
        posY2 = size * 1.322
        posY3 = size * 17
        posXE = size * 1.79
        posYE = size * 1.25
    else:
        posX = 1
        posX3 = 1
        posY1 = 1
        posY2 = 1
        posY3 = 1
        posXE = 1
        posYE = 1
    border = Image(source="ElementCard.png", size_hint=(1 * size, 1 * size), allow_stretch=True)
    border.add_widget(Image(source=str(fetch[3]+".png"), size=(45 * size, 45 * size), pos=(228 * posXE, 465 * posYE), allow_stretch=True))
    border.add_widget(Image(texture=name, pos=(278 * posX, 392 * posY1), size=(220 * size, 220 * size), allow_stretch=True))
    border.add_widget(Image(texture=type, pos=(278 * posX, 363 * posY2), size=(220 * size, 220 * size), allow_stretch=True))
    border.add_widget(Image(texture=text, pos=(255 * posX3, 8 * posY3), size=(290 * size, 290 * size), allow_stretch=True))

    return border

def DrawLine(button, fL):
    nam = button.name.split("+")
    if nam[0] == "one":
        fL.canvas.remove_group("one")
        fL.canvas.remove_group("two")
        fL.canvas.remove_group("three")
        fL.canvas.remove_group("four")
        fL.canvas.remove_group("five")
        main = Line(group="one", points=((179, 485) + (620, 485)))
        one = Line(group="one", points=((179, 485) + (179, 470)))
        two = Line(group="one", points=((289, 485) + (289, 470)))
        three = Line(group="one",  points=((399, 485) + (399, 470)))
        four = Line(group="one", points=((509, 485) + (509, 470)))
        five = Line(group="one", points=((619, 485) + (619, 470)))

        if nam[1] == "1":
            con = Line(group="one", points=((124, 485) + (124, 505)))
            con2 = Line(group="one", points=((124, 485) + (179, 485)))
            fL.canvas.add(con2)
        elif nam[1] == "2":
            con = Line(group="one", points=((234, 485) + (234, 505)))
        elif nam[1] == "3":
            con = Line(group="one", points=((344, 485) + (344, 505)))
        elif nam[1] == "4":
            con = Line(group="one", points=((454, 485) + (454, 505)))
        elif nam[1] == "5":
            con = Line(group="one", points=((564, 485) + (564, 505)))
        elif nam[1] == "6":
            con = Line(group="one", points=((619, 485) + (674, 485)))
            con2 = Line(group="one", points=((674, 485) + (674, 505)))
            fL.canvas.add(con2)

        fL.canvas.add(one)
        fL.canvas.add(two)
        fL.canvas.add(three)
        fL.canvas.add(four)
        fL.canvas.add(five)

    elif nam[0] == "two":
        fL.canvas.remove_group("two")
        fL.canvas.remove_group("three")
        fL.canvas.remove_group("four")
        fL.canvas.remove_group("five")
        main = Line(group="two", points=((234, 402) + (564, 402)))
        one = Line(group="two", points=((234, 402) + (234, 387)))
        two = Line(group="two", points=((344, 402) + (344, 387)))
        three = Line(group="two", points=((454, 402) + (454, 387)))
        four = Line(group="two", points=((564, 402) + (564, 387)))

        if nam[1] == "1":
            con = Line(group="two", points=((179, 402) + (179, 422)))
            con2 = Line(group="two", points=((179, 402) + (234, 402)))
            fL.canvas.add(con2)
        elif nam[1] == "2":
            con = Line(group="two", points=((289, 402) + (289, 422)))
        elif nam[1] == "3":
            con = Line(group="two", points=((399, 402) + (399, 422)))
        elif nam[1] == "4":
            con = Line(group="two", points=((509, 402) + (509, 422)))
        elif nam[1] == "5":
            con = Line(group="two", points=((619, 402) + (619, 422)))
            con2 = Line(group="two", points=((619, 402) + (564, 402)))
            fL.canvas.add(con2)

        fL.canvas.add(one)
        fL.canvas.add(two)
        fL.canvas.add(three)
        fL.canvas.add(four)

    elif nam[0] == "three":
        fL.canvas.remove_group("three")
        fL.canvas.remove_group("four")
        fL.canvas.remove_group("five")
        main = Line(group="three", points=((289, 319) + (509, 319)))
        one = Line(group="three", points=((289, 319) + (289, 304)))
        two = Line(group="three", points=((399, 319) + (399, 304)))
        three = Line(group="three", points=((509, 319) + (509, 304)))

        if nam[1] == "1":
            con = Line(group="three", points=((234, 319) + (234, 339)))
            con2 = Line(group="three", points=((234, 319) + (289, 319)))
            fL.canvas.add(con2)
        elif nam[1] == "2":
            con = Line(group="three", points=((344, 319) + (344, 339)))
        elif nam[1] == "3":
            con = Line(group="three", points=((454, 319) + (454, 339)))
        elif nam[1] == "4":
            con = Line(group="three", points=((564, 319) + (564, 339)))
            con2 = Line(group="three", points=((564, 319) + (509, 319)))
            fL.canvas.add(con2)

        fL.canvas.add(one)
        fL.canvas.add(two)
        fL.canvas.add(three)

    elif nam[0] == "four":
        fL.canvas.remove_group("four")
        fL.canvas.remove_group("five")
        main = Line(group="four", points=((344, 236) + (454, 236)))
        one = Line(group="four", points=((344, 236) + (344, 221)))
        two = Line(group="four", points=((454, 236) + (454, 221)))

        if nam[1] == "1":
            con = Line(group="four", points=((289, 236) + (289, 256)))
            con2 = Line(group="four", points=((289, 236) + (344, 236)))
            fL.canvas.add(con2)
        elif nam[1] == "2":
            con = Line(group="four", points=((399, 236) + (399, 256)))
        elif nam[1] == "3":
            con = Line(group="four", points=((509, 236) + (509, 256)))
            con2 = Line(group="four", points=((509, 236) + (454, 236)))
            fL.canvas.add(con2)

        fL.canvas.add(one)
        fL.canvas.add(two)

    elif nam[0] == "five":
        fL.canvas.remove_group("five")
        one = Line(group="five", points=((399, 153) + (399, 138)))

        if nam[1] == "1":
            con = Line(group="five", points=((344, 153) + (344, 176)))
            con2 = Line(group="five", points=((344, 153) + (399, 153)))
            fL.canvas.add(con2)
        elif nam[1] == "2":
            con = Line(group="five", points=((454, 153) + (454, 173)))
            con2 = Line(group="five", points=((399, 153) + (454, 153)))
            fL.canvas.add(con2)

        fL.canvas.add(one)

    if nam[0] != "five":
        fL.canvas.add(main)
    fL.canvas.add(con)

def ButtonColorReset(num, fL):
    if num == "one":
        for i in range(0, 20):
            fL.children[26 - i].background_color = 1, 1, 1, 1
    elif num == "two":
        for i in range(0, 14):
            fL.children[20 - i].background_color = 1, 1, 1, 1
    elif num == "three":
        for i in range(0, 9):
            fL.children[15 - i].background_color = 1, 1, 1, 1
    elif num == "four":
        for i in range(0, 5):
            fL.children[11 - i].background_color = 1, 1, 1, 1
    elif num == "five":
        for i in range(0, 2):
            fL.children[9 - i].background_color = 1, 1, 1, 1

def ResetCharge(images, fL, main, sys):
    for i in range(0, 6):
        images[i].color = (1, 1, 1, .3)
        main.activeElements[i] = 0
    if len(fL.children) > 7:
        fL.remove_widget(fL.children[0])

def ChargeUpdate(main, index, images, fL, character, sys):
    if index != -1:
        if images[index].color == [1, 1, 1, 0.3]:
            images[index].color = (1, 1, 1, 1)
            main.activeElements[index] = 1
        else:
            images[index].color = (1, 1, 1, .3)
            main.activeElements[index] = 0

    active = []
    count = 0
    for i in range(0, 6):
        if images[i].color == [1, 1, 1, 1]:
            name = images[i].source[:len(images[i].source)-4]
            active.append(name)
            count += 1

    if len(active) > 0:
        string = ""
        for i in range(0, len(active)):
            string += active[i]
            if i != len(active) - 1:
                string += "+"

        query = "SELECT * FROM elements WHERE elementLvl = "
        query += str(count) + " and elementCharges = '"
        query += string +"'"
        main.cur.execute(query)
        fetch = main.cur.fetchone()

        card = ElementCard(fetch, .7)
        card.pos_hint = {"center_x": .5, "y": .16}

        #replace the old image if there is one
        if len(fL.children) > 8:
            fL.remove_widget(fL.children[0])

        fL.add_widget(card)