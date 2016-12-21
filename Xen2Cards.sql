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
        'You can move through enemy spaces, terrain and doors unhindered. Scavenging is counted as free actions this turn.'
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
        'Return all reactions used to your hand after combat and gain 2 stamina.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Stamina Attack', 'Instinct', 'Stamina', 'Combat', 'Tactical', 'Base Class', 
        'Opponent loses 1 Stamina and unless you lose priority, return this card to your hand.'
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
		'Cool Down', 'Instinct', 'Stamina', 'Half-Round', 'Standard', 'Base Class', 
        'Gain 4 Stamina.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Non-Lethal', 'Instinct', 'Stamina', 'Full-Round', 'Stance', 'Base Class', 
        'All successful actions on opponent deal an additional 1  stamina DMG and heal 1 stamina.'
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
        'You can use a full round card. Put this card on the bottom of your deck afterward.'
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
		'Mod Attack', 'Tech', 'Items', 'Combat', 'Defensive', 'Base Class', 
        'You can use an item before combat without discarding it.'
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
		'Targeting Attack', 'Tech', 'Items', 'Combat', 'Aggressive', 'Base Class', 
        'You can add the effects of an item to the attack. Discard item afterward'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Utilize', 'Tech', 'Items', 'Reaction', 'Item Use', 'Base Class', 
        'Item gains +1 effectiveness and you can use it on any ally within range.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Craft', 'Tech', 'Items', 'Half-Round', 'Standard', 'Base Class', 
        'Construct a random item. 1: Deal 2 DMG. 2: Heal 2 Health. 3: +2 Bonus. 4: -2 Penalty. 5: Draw 2. 6: Discard 2.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Administer', 'Tech', 'Items', 'Full-Round', 'Standard', 'Base Class', 
        'You can use an item from your inventory and any other players within range.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Item Tech', 'Tech', 'Tech', 'Combat', 'Defensive', 'Base Class', 
        'Target within range receives a bonus or penalty to the effectiveness of items equal to their Tech for 2 turns.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Range Tech', 'Tech', 'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Target within range receives a bonus or penalty to range equal to half their Tech rounded up for 2 turns.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Weapon Tech', 'Tech', 'Tech', 'Combat', 'Aggressive', 'Base Class', 
        'Target within range receives a bonus or penalty to Aggressive Attacks equal to their Tech for 2 turns.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Optimize', 'Tech', 'Tech', 'Reaction', 'Tech Hit', 'Base Class', 
        'Tech attack within range receives +2 or -2 to effectiveness.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Refactor', 'Tech', 'Tech', 'Half-Round', 'Standard', 'Base Class', 
        'Swap the effect of a Tech effect with another Tech card in your hand and/or invert the +-- symbol.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Overclocked', 'Tech', 'Tech', 'Full-Round', 'Stance', 'Base Class', 
        'All positive Tech effects last an additional turn and all negative Tech effects last one turn less.'
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
		'Balanced Attack', 'Tech', 'Weapons', 'Combat', 'Tactical', 'Base Class', 
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
        'All weapon penalties from point blank range, thrown and dual wielding are nullified for the attack.'
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
        'Discard any cards to receive bonuses. Light: 3 Stamina DMG. Medium: +3 Bonus. Heavy: Gain +3 DMG.'
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
        'Deal 1 damage before the attack as long as you didn''t lose priority.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Bleed Attack', 'Force', 'Damage', 'Combat', 'Tactical', 'Base Class', 
        'Deal 1 DMG over 4 turns (Counts as status effect).'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Devastating Attack', 'Force', 'Damage', 'Combat', 'Aggressive', 'Base Class', 
        'Deal + 3 DMG for the attack.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Exert', 'Force', 'Damage', 'Reaction', 'Combat', 'Base Class', 
        'Deal an additional +2 DMG on hit.'
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
		'Lethal', 'Force', 'Damage', 'Full-Round', 'Stance', 'Base Class', 
        'Gain +1 Damage on all hits and gain an additional 1 for each combat card discarded.'
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
        'Deal 3 light Armor and 1 heavy Armor DMG and DR cannot be applied.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Crush', 'Force', 'Disable', 'Reaction', 'Opponent Defense', 'Base Class', 
        'If opponent used a combat card in defense, they discard it before checking for priority.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Cripple', 'Force', 'Disable', 'Half-Round', 'Attack Mod', 'Base Class', 
        'Opponent receives penalty depending on which speed they were hit on. Light: -1 Move. Medium: -1 Range. Heavy: -1 DMG.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Grapple', 'Force', 'Disable', 'Full-Round', 'Standard', 'Base Class', 
        'If you pass a Strength check, step into opponent''s space. You can move with the opponent until they break free.'
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
        'Cancel any action or full round card being played by adjacent target and they can''t use any for 1 turn.'
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
        'Remove all status effects and stances from all players.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Bolster Attack', 'Vitality', 'Defense', 'Combat', 'Tactical', 'Base Class', 
        'Gain 1 heavy armor.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Vigilant Attack', 'Vitality', 'Defense', 'Combat', 'Defensive', 'Base Class', 
        'Gain +4 DR for the attack and opponent loses 4 DR.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Armored Attack', 'Vitality', 'Defense', 'Combat', 'Aggressive', 'Base Class', 
        'Your armor doesn''t take damage this turn and deal DMG to your opponent equal to DMG absorbed.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Defense', 'Vitality', 'Defense', 'Reaction', 'Hit', 'Base Class', 
        'Gain an additional +4 DR.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Wall', 'Vitality', 'Defense', 'Half-Round', 'Standard', 'Base Class', 
        'Opponents can''t move through your adjacent spaces and Critical Range is 1-5 until next turn'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Fortified', 'Vitality', 'Defense', 'Full-Round', 'Stance', 'Base Class', 
        'Gain 1 light armor every time you leave combat without taking health DMG.'
    );
    
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Curative Attack', 'Vitality', 'Health', 'Combat', 'Defensive', 'Base Class', 
        'Gain 1 Health regardless of who wins. If you were to be downed from this attack, stay prevent it and gain 1 Health.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Healing Attack', 'Vitality', 'Health', 'Combat', 'Tactical', 'Base Class', 
        'Heal health equal to half of DMG dealt.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Bypass Attack', 'Vitality', 'Health', 'Combat', 'Aggressive', 'Base Class', 
        'Deal DMG to opponents health.'
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
        'Revive downed target with +2 Health.'
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
        'You can equip up to a level 2 charge after the attack.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Enhanced Psi', 'Psyche', 'Creation', 'Combat', 'Aggressive', 'Base Class', 
        'For each. ZEP: +2 Stamina DMG. SPA: -1 RNG 1 turn. HEA: +2 DMG. MIN: +2 Health. VOI: +1 Bonus. LIQ: Discard 1 Card.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Boost', 'Psyche', 'Creation', 'Reaction', 'Charge', 'Base Class', 
        'Add an additional Charge to you or adjacent ally.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Juggle', 'Psyche', 'Creation', 'Half-Round', 'Charge Mod', 'Base Class', 
        'Ready another independent charge that is not dependant on a hand.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Super Charge', 'Psyche', 'Creation', 'Full-Round', 'Standard', 'Base Class', 
        'Create any spell that you have access to without charging it.'
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
        'You can look at an opponents Charge within sight and receive a +2 bonus in Element combat until end of turn.'
    );

	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Psionic', 'Psyche', 'Mastery', 'Full-Round', 'Stance', 'Base Class', 
        'Receive a +2 bonus to all element attacks.'
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
        'Change the element being added to your or adjacent targets charge to any element.'
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
		'Inversion', 'Mind', 'Card Draw', 'Reaction', 'Draw/Discard', 'Base Class', 
        'If a player were to draw a card, they discard 1 instead. The same is true for discard.'
    ); 
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Scan', 'Mind', 'Card Draw', 'Half-Round', 'Standard', 'Base Class', 
        'Look at target opponents hand within sight and discard a card from it. That player then draws a card.'
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
        'Gain 1 Mind regardless of who wins.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Persuasive Attack', 'Mind', 'Negotiations', 'Combat', 'Tactical', 'Base Class', 
        'Make a negotiation against all opponents with no penalty for failure.'
    );
    
	insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Pressuring Attack', 'Mind', 'Negotiations', 'Combat', 'Aggressive', 'Base Class', 
        'Opponent loses 2 Mind.'
    );
    
    insert into cards
    (cardName, cardClass, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Logic', 'Mind', 'Negotiations', 'Reaction', 'Negotiation', 'Base Class', 
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
		'Diplomatic', 'Mind', 'Negotiations', 'Full-Round', 'Stance', 'Base Class', 
        'You can reroll all negotiations with a -2 penalty.'
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