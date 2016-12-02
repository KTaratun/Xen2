use xen2;

create table Cards(
    cardId INT NOT NULL auto_increment,
    cardName VARCHAR(50) NULL,
    cardClass VARCHAR(50) NULL, #Instinct, Tech, Force, Vitality, Psyche, Mind
    cardSet VARCHAR(50) NULL, #Board Control, Stamina, Speed, Items, Tech, Weapons, etc.
    cardType VARCHAR(50) NULL, #Combat, Reaction, Half-Round, Full-Round
    cardSubType VARCHAR(50) NULL, #Defensive, Tactical, Aggressive, Movement, Hit, Attack Mod, Rest Mod etc.
    cardText VARCHAR(200) NULL,
    cardSystem VARCHAR(50) NULL, #Base Class Set, Blood
    PRIMARY KEY (cardId)
    )Engine = InnoDB DEFAULT CHARSET = latin1;
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Dash Attack', 'Instinct', 'Board Control', 'Combat', 'Defensive', 'Base Class', 
        'Take a move action after combat regardless of who wins.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Scramble Attack', 'Instinct', 'Board Control', 'Combat', 'Tactical', 'Base Class', 
        'Rearrange all players including yourself within R:2.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Smash Attack', 'Instinct', 'Board Control', 'Combat', 'Aggressive', 'Base Class', 
        'Knock opponent back 3 spaces.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Passage', 'Instinct', 'Board Control', 'Reaction', 'Movement', 'Base Class', 
        'You or player that passes by you moves 3 more or less spaces.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mobility', 'Instinct', 'Board Control', 'Half-Round', 'Movement Mod', 'Base Class', 
        'You can move through enemy spaces, terrain and doors unhindered. Scavenging and other actions are counted as free actions this turn.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Strategize', 'Instinct', 'Board Control', 'Full-Round', 'Standard', 'Base Class', 
        'Take a move action for yourself and all allies.'
    );
    
    
     insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Reactive Attack', 'Instinct', 'Stamina', 'Combat', 'Defensive', 'Base Class', 
        'Return all reactions used to your hand after combat and opponent loses 1 Stamina.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Stamina Attack', 'Instinct', 'Stamina', 'Combat', 'Tactical', 'Base Class', 
        'Opponent loses 2 Stamina and unless you lose priority, return this card to your hand.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Winding Attack', 'Instinct', 'Stamina', 'Combat', 'Aggressive', 'Base Class', 
        'Opponent loses 3 stamina.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Gut Shot', 'Instinct', 'Stamina', 'Reaction', 'Hit', 'Base Class', 
        'Opponent loses 2 additional Stamina.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Cool Down', 'Instinct', 'Stamina', 'Half-Round', 'Movement Mod', 'Base Class', 
        'Gain 1 Stamina for each space moved.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Non-Lethal', 'Instinct', 'Stamina', 'Full-Round', 'Stance', 'Base Class', 
        'All successful actions on opponent deal an additional 1 Stamina damage.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mulligan Attack', 'Instinct', 'Speed', 'Combat', 'Defensive', 'Base Class', 
        'You can reroll your attack.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Nimble Attack', 'Instinct', 'Speed', 'Combat', 'Tactical', 'Base Class', 
        'You can use an action after combat.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Quick Attack', 'Instinct', 'Speed', 'Combat', 'Aggressive', 'Base Class', 
        'Gain a +3 bonus for the attack.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Energy', 'Instinct', 'Speed', 'Reaction', 'Combat', 'Base Class', 
        'Gain an additional +2 bonus for the attack.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Haste', 'Instinct', 'Speed', 'Half-Round', 'Standard', 'Base Class', 
        'You can discard and use a full round card. Put this card on the bottom of your deck afterward.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Preparation', 'Instinct', 'Speed', 'Full-Round', 'Standard', 'Base Class', 
        'Pass your turn and receive a third action and a +2 bonus next turn.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Item Attack', 'Tech', 'Items', 'Combat', 'Defensive', 'Base Class', 
        'You can use an item before combat.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Disarm Attack', 'Tech', 'Items', 'Combat', 'Tactical', 'Base Class', 
        'Opponent drops currently equipped weapon or target item in inventory.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mod Attack', 'Tech', 'Items', 'Combat', 'Aggressive', 'Base Class', 
        'You can add the effects of an item to the attack. Discard item afterward'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Utilize', 'Tech', 'Items', 'Reaction', 'Item Use', 'Base Class', 
        'Item gains +3 effectiveness and you can use it on any ally within range.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Craft', 'Tech', 'Items', 'Half-Round', 'Standard', 'Base Class', 
        'Construct a random item

1: Deal 6 DMG
2 Heal 6 Health
3: +2 bonus
4: -2 penalty
5: Draw 2 cards, discard 1
6: Discard 1 card.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Administer', 'Tech', 'Items', 'Full-Round', 'Standard', 'Base Class', 
        'You can use any number of items and keep them afterward.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Item Tech', 'Tech', 'Tech', 'Combat', 'Defensive', 'Base Class', 
        'Target within range receives a bonus or penalty to the effectiveness of items equal to their Tech for 1 turn.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Range Tech', 'Tech', 'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Target within range receives a bonus or penalty to range equal to half their Tech rounded up for 1 turn.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Weapon Tech', 'Tech', 'Tech', 'Combat', 'Aggressive', 'Base Class', 
        'Target within range receives a bonus or penalty to Aggressive Attacks equal to their Tech for 1 turn.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Optimize', 'Tech', 'Tech', 'Reaction', 'Tech Hit', 'Base Class', 
        'Tech attack within range receives +3 or -3 to effectiveness.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Refactor', 'Tech', 'Tech', 'Half-Round', 'Standard', 'Base Class', 
        'Swap the effect of a Tech effect with another Tech card in your hand by discarding it and/or invert the +-- symbol.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Overclocked', 'Tech', 'Tech', 'Full-Round', 'Stance', 'Base Class', 
        'All Tech effects last an additional turn.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Switch Attack', 'Tech', 'Weapons', 'Combat', 'Defensive', 'Base Class', 
        'You can switch what you are holding before or after the attack.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Targeting Attack', 'Tech', 'Weapons', 'Combat', 'Tactical', 'Base Class', 
        'Choose any attack speed bonus out of all attacks speeds for currently equipped weapon.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Overdrive Attack', 'Tech', 'Weapons', 'Combat', 'Aggressive', 'Base Class', 
        'Double your weapon ability on priority.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Versatility', 'Tech', 'Weapons', 'Reaction', 'Combat', 'Base Class', 
        'You can use ranged weapons at point black and thrown weapons without any penalties.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Proficiency', 'Tech', 'Weapons', 'Half-Round', 'Attack Mod', 'Base Class', 
        'Weapon ability triggers outside of priority.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Maintenance', 'Tech', 'Weapons', 'Full-Round', 'Rest Mod', 'Base Class', 
        'Fully repair and reload all weapons of yours and allies within range with a +1 Durability and Clip.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Priority Attack', 'Force', 'Priority', 'Combat', 'Defensive', 'Base Class', 
        'You gain priority if priority is neutral.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Chain Attack', 'Force', 'Priority', 'Combat', 'Tactical', 'Base Class', 
        'Make another attack action on any adjacent target.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Dynamic Attack', 'Force', 'Priority', 'Combat', 'Aggressive', 'Base Class', 
        'You can discard any attack cards from your hand to receive bonuses

Defensive: 2 Stamina DMG
Tactical: +2 Bonus
Aggressive: Gain +4 DMG.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Combat Expertise', 'Force', 'Priority', 'Reaction', 'Hit', 'Base Class', 
        'Your critical range is 19-20.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Initiative', 'Force', 'Priority', 'Half-Round', 'Attack Mod', 'Base Class', 
        'Your attack''s effect works regardless of who wins.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Overpower', 'Force', 'Priority', 'Full-Round', 'Standard', 'Base Class', 
        'Perform a Strength check against adjacent opponent and if successful, discard an attack card and hit them with an attack.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Steady Attack', 'Force', 'Damage', 'Combat', 'Defensive', 'Base Class', 
        'Deal 3 damage before the attack as long as you didn''t lose priority.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Bleed Attack', 'Force', 'Damage', 'Combat', 'Tactical', 'Base Class', 
        'Deal 2 DMG over 4 turns (Counts as status effect).'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Devastating Attack', 'Force', 'Damage', 'Combat', 'Aggressive', 'Base Class', 
        'Deal + 6 DMG for the attack.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Exert', 'Force', 'Damage', 'Reaction', 'Combat', 'Base Class', 
        'Deal an additional +5 DMG on hit.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Onslaught', 'Force', 'Damage', 'Half-Round', 'Attack Mod', 'Base Class', 
        'Double the DMG of whoever wins.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Fury', 'Force', 'Damage', 'Full-Round', 'Stance', 'Base Class', 
        'Gain +2 Damage on all hits.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Break Attack', 'Force', 'Disable', 'Combat', 'Defensive', 'Base Class', 
        'Deal 1 damage to an attack speed of your choice on opponent''s weapon.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Scarring Attack', 'Force', 'Disable', 'Combat', 'Tactical', 'Base Class', 
        'Opponent cannot be healed for 2 turns.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Sunder Attack', 'Force', 'Disable', 'Combat', 'Aggressive', 'Base Class', 
        'Deal 6 Defensive Armor and 1 Aggressive Armor DMG and DR cannot be applied.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Crush', 'Force', 'Disable', 'Reaction', 'Opponent Defense', 'Base Class', 
        'Cancel all effects of any defensive cards used by opponent and discard them.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Cripple', 'Force', 'Disable', 'Half-Round', 'Attack Mod', 'Base Class', 
        'Depending on which attack speed was hit on, opponent loses a different sub-parameter:

Defensive: -1 Movement
Tactical: -1 Range
Aggressive: -2 Damage.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Grapple', 'Force', 'Disable', 'Full-Round', 'Standard', 'Base Class', 
        'If you pass a Force Check, step into opponent''s space. Both parties can perform Force Check to deal their Force as DMG to each other on their turn or break free. You can move with target on your turn.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Immobilize Attack', 'Vitality', 'Neutralize', 'Combat', 'Defensive', 'Base Class', 
        'Opponent can''t move for 1 turn.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Ward Attack', 'Vitality', 'Neutralize', 'Combat', 'Tactical', 'Base Class', 
        'Cancels opponent''s attack action and weapon abilities for 1 turn.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Parry Attack', 'Vitality', 'Neutralize', 'Combat', 'Aggressive', 'Base Class', 
        'If you lose priority, cancel the attack and opponent can''t attack for 1 turn.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Cancel', 'Vitality', 'Neutralize', 'Reaction', 'Opponent Defense', 'Base Class', 
        'Cancel any action or full round card being played and target can''t use any of those types for 1 turn.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Null', 'Vitality', 'Neutralize', 'Half-Round', 'Attack Mod', 'Base Class', 
        'Reactions cannot be played by opponent.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Purification', 'Vitality', 'Neutralize', 'Full-Round', 'Standard', 'Base Class', 
        'Remove all status effects on you and/or any adjacent allies or opponents.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Vigilant Attack', 'Vitality', 'Defense', 'Combat', 'Defensive', 'Base Class', 
        'Gain +6 DR for the attack.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Armored Attack', 'Vitality', 'Defense', 'Combat', 'Tactical', 'Base Class', 
        'Your armor doesn''t take damage this turn unless you lose priority.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		' Attack', 'Vitality', 'Defense', 'Combat', 'Aggressive', 'Base Class', 
        '.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Defense', 'Vitality', 'Defense', 'Reaction', 'Combat', 'Base Class', 
        'Gain an additional +5 DR.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Wall', 'Vitality', 'Defense', 'Half-Round', 'Standard', 'Base Class', 
        'Opponents can''t move through your adjacent spaces and Critical Range is 1-4 until next turn'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Fortified', 'Vitality', 'Defense', 'Full-Round', 'Stance', 'Base Class', 
        'Gain 1 light armor every time you use a Combat card.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Curative Attack', 'Vitality', 'Health', 'Combat', 'Defensive', 'Base Class', 
        'Gain 3 Health regardless of who wins. If you were to be downed from this attack, stay prevent it and gain 3 Health.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Healing Attack', 'Vitality', 'Health', 'Combat', 'Tactical', 'Base Class', 
        'Heal health equal to half of DMG dealt if overroll is greater than 5.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Counter Attack', 'Vitality', 'Health', 'Combat', 'Aggressive', 'Base Class', 
        'If you were to take health DMG this combat, deal an equal amount to opponent.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Aid', 'Vitality', 'Health', 'Reaction', 'Heal', 'Base Class', 
        'Double the amount of health restored to you and/or adjacent ally.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Remedy', 'Vitality', 'Health', 'Half-Round', 'Standard', 'Base Class', 
        'Remove a status effect from you or adjacent ally.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Restore', 'Vitality', 'Health', 'Full-Round', 'Standard', 'Base Class', 
        'Revive downed target with +10 Health.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Accumulation Psi', 'Psyche', 'Creation', 'Combat', 'Defensive', 'Base Class', 
        'Add 3 elements to your Reserves.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Charge Psi', 'Psyche', 'Creation', 'Combat', 'Tactical', 'Base Class', 
        'You can add 2 Charges after the attack.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Enhanced Psi', 'Psyche', 'Creation', 'Combat', 'Aggressive', 'Base Class', 
        'Sacrifice 1 element and add an effect to your attack:

ZEP: 2 Stamina DMG
SPA: +- 2 Tech mods
HEA: Deal 4 DMG
MIN: Gain 3 Health
VOI: +2 Bonus
LIQ: Draw 1 Card.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Boost', 'Psyche', 'Creation', 'Reaction', 'Charge', 'Base Class', 
        'Add an additional Charge to you or an ally.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Juggle', 'Psyche', 'Creation', 'Half-Round', 'Standard', 'Base Class', 
        'Ready another independent charge that is not dependant on a hand.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Super Charge', 'Psyche', 'Creation', 'Full-Round', 'Standard', 'Base Class', 
        'Create any spell without Charging.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Focused Psi', 'Psyche', 'Mastery', 'Combat', 'Defensive', 'Base Class', 
        'For every 2 Elements sacrificed, you can reroll attack.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Catch Psi', 'Psyche', 'Mastery', 'Combat', 'Tactical', 'Base Class', 
        'Keep current Charge after attack regardless of who wins.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Controlled Psi', 'Psyche', 'Mastery', 'Combat', 'Aggressive', 'Base Class', 
        'Sacrifice x Elements and gain a bonus to the attack equal to the number of Elements sacrificed before rolls.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Concentration', 'Psyche', 'Mastery', 'Reaction', 'Element Hit', 'Base Class', 
        'Receive a +2 or -2 effectiveness to an Elemental hit.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Psi Scan', 'Psyche', 'Mastery', 'Half-Round', 'Standard', 'Base Class', 
        'You can look at an opponents Charge within sight and receive a +1 bonus in Element combat until end of turn.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Bestow', 'Psyche', 'Mastery', 'Full-Round', 'Standard', 'Base Class', 
        'You and allies receive a +4 bonus to element combat for 1 turn.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Syphon Psi', 'Psyche', 'Alteration', 'Combat', 'Defensive', 'Base Class', 
        'Opponent removes 2 Elements of your choice from their Reserves and add 1 of those to yours.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Steal Psi', 'Psyche', 'Alteration', 'Combat', 'Tactical', 'Base Class', 
        'Steal one of opponents Masteries for 3 turns.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Swap Psi', 'Psyche', 'Alteration', 'Combat', 'Aggressive', 'Base Class', 
        'You can swap out an Element from your Reserves with one in the current attack before rolls and after reveal.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Prism', 'Psyche', 'Alteration', 'Reaction', 'Charge', 'Base Class', 
        'Change the Element being added to your or adjacent targets charge to any element even if they don''t have any in their reserves or the mastery for it.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Alter', 'Psyche', 'Alteration', 'Half-Round', 'Standard', 'Base Class', 
        'You can swap out any Elements within your Charge or adjacent allies.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Recycle', 'Psyche', 'Alteration', 'Full-Round', 'Rest Mod', 'Base Class', 
        'You can swap any of your and all allies Elements for any other Element within your and all allies Reserves.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Readying Attack', 'Mind', 'Card Draw', 'Combat', 'Defensive', 'Base Class', 
        'Draw 2 cards.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mimic Attack', 'Mind', 'Card Draw', 'Combat', 'Tactical', 'Base Class', 
        'Opponent reveals their hand and choose a card. You can use the chosen card on your next turn.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Disorienting Attack', 'Mind', 'Card Draw', 'Combat', 'Aggressive', 'Base Class', 
        'Opponent discards a card at random.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Cycle', 'Mind', 'Card Draw', 'Reaction', 'Anytime', 'Base Class', 
        'Discard 1 card then draw 3.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Scan', 'Mind', 'Card Draw', 'Half-Round', 'Standard', 'Base Class', 
        'View the Stats, Inventory and Hands of all players within sight and get a +1 bonus until end of turn.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Analyze', 'Mind', 'Card Draw', 'Full-Round', 'Standard', 'Base Class', 
        'Search your Deck for 1 attack card and 1 non-attack card.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Convincing Attack', 'Mind', 'Negotiations', 'Combat', 'Defensive', 'Base Class', 
        'Draw 2 cards.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Diplomatic Attack', 'Mind', 'Negotiations', 'Combat', 'Tactical', 'Base Class', 
        'You can negotiate after the attack and can reroll on a fail.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Pressuring Attack', 'Mind', 'Negotiations', 'Combat', 'Aggressive', 'Base Class', 
        'Opponent loses 1 Mind regardless of who wins.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Persuasive', 'Mind', 'Negotiations', 'Reaction', 'Negotiation', 'Base Class', 
        'Add a +2 bonus or -2 penalty to a negotiation of any player within sight.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Sellout', 'Mind', 'Negotiations', 'Half-Round', 'Standard', 'Base Class', 
        'Gain 2 Mind and target ally loses 1.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Negotiations', 'Mind', 'Negotiations', 'Full-Round', 'Standard', 'Base Class', 
        'Make a negotiation against all opponents within sight with a +1 bonus and no penalty for failure.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Trick Attack', 'Mind', 'Manipulation', 'Combat', 'Defensive', 'Base Class', 
        'You can make a move action for opponent.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Controlling Attack', 'Mind', 'Manipulation', 'Combat', 'Tactical', 'Base Class', 
        'Opponent can''t use the same attack speed on next attack.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Redirect Attack', 'Mind', 'Manipulation', 'Combat', 'Aggressive', 'Base Class', 
        'Instead of hitting, deal opponents attack to themselves or adjacent target.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Reversal', 'Mind', 'Manipulation', 'Reaction', 'Reaction Used', 'Base Class', 
        'Gain the effects of a reaction card used by opponent instead.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Feint', 'Mind', 'Manipulation', 'Half-Round', 'Standard', 'Base Class', 
        'Choose two cards for the attack and after reveal, choose one and put the other back in your hand.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Order', 'Mind', 'Manipulation', 'Full-Round', 'Standard', 'Base Class', 
        'Take a turn for an ally.'
    );