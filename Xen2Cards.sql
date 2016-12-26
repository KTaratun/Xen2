use xen2;

create table Cards(
    cardId INT NOT NULL auto_increment,
    cardName VARCHAR(50) NULL,
    CardRarity VARCHAR(50) NULL, #Instinct, Tech, Force, Vitality, Psyche, Mind
	cardSet VARCHAR(50) NULL, #Board Control, Stamina, Speed, Items, Tech, Weapons, etc.
    cardType VARCHAR(50) NULL, #Combat, Reaction, Half-Round, Full-Round
    cardSubType VARCHAR(50) NULL, #Defensive, Tactical, Aggressive, Movement, Hit, Attack Mod, Rest Mod etc.
    cardText VARCHAR(200) NULL,
    cardSystem VARCHAR(50) NULL, #Base Class Set, Blood
    PRIMARY KEY (cardId)
    )Engine = InnoDB DEFAULT CHARSET = latin1;
    
	insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Dash', 'Common',  'Instinct', 'Combat', 'Defensive', 'Base Class', 
        'Take a move action after combat.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Dash', 'Uncommon',  'Instinct', 'Combat', 'Defensive', 'Base Class', 
        'Take a move action after combat regardless of who wins.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Dash', 'Rare',  'Instinct', 'Combat', 'Defensive', 'Base Class', 
        'Take a move action after combat regardless of who wins with a +1 to movement.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Quickness', 'Common',  'Instinct', 'Combat', 'Defensive', 'Base Class', 
        'Gain a +3 bonus.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Quickness', 'Uncommon',  'Instinct', 'Combat', 'Defensive', 'Base Class', 
        'Gain a +4 bonus.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Quickness', 'Rare',  'Instinct', 'Combat', 'Defensive', 'Base Class', 
        'Gain a +5 bonus.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Scramble', 'Common',  'Instinct', 'Combat', 'Defensive', 'Base Class', 
        'Rearrange all players including yourself within R:2.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Scramble', 'Uncommon',  'Instinct', 'Combat', 'Defensive', 'Base Class', 
        'Rearrange all players including yourself within R:3.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Scramble', 'Rare',  'Instinct', 'Combat', 'Defensive', 'Base Class', 
        'Rearrange all players including yourself within R:4.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mulligan Attack', 'Common',  'Instinct', 'Combat', 'Attack', 'Base Class', 
        'You can reroll with a -1 penalty.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mulligan Attack', 'Uncommon',  'Instinct', 'Combat', 'Attack', 'Base Class', 
        'You can reroll.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mulligan Attack', 'Rare',  'Instinct', 'Combat', 'Attack', 'Base Class', 
        'You can reroll with a +1 bonus.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Smash Attack', 'Common',  'Instinct', 'Combat', 'Attack', 'Base Class', 
        'Knock opponent back 3 spaces.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Smash Attack', 'Uncommon',  'Instinct', 'Combat', 'Attack', 'Base Class', 
        'Knock opponent back 4 spaces.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Smash Attack', 'Rare',  'Instinct', 'Combat', 'Attack', 'Base Class', 
        'Knock opponent back 5 spaces.'
    );
    
	insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Rush Attack', 'Common',  'Instinct', 'Combat', 'Attack', 'Base Class', 
        'If you are outside of range, you can move 2 spaces towards player.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Rush Attack', 'Uncommon',  'Instinct', 'Combat', 'Attack', 'Base Class', 
        'If you are outside of range, you can move 3 spaces towards player.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Rush Attack', 'Rare',  'Instinct', 'Combat', 'Attack', 'Base Class', 
        'If you are outside of range, you can move 4 spaces towards player.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Passage', 'Common',  'Instinct', 'Reaction', 'Movement', 'Base Class', 
        'You or player that passes by you moves 2 more spaces.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Passage', 'Uncommon',  'Instinct', 'Reaction', 'Movement', 'Base Class', 
        'You or player that passes by you moves 3 more spaces.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Passage', 'Rare',  'Instinct', 'Reaction', 'Movement', 'Base Class', 
        'You or player that passes by you moves 4 more spaces.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Energy', 'Common',  'Instinct', 'Reaction', 'Combat', 'Base Class', 
        'Gain a +1 bonus.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Energy', 'Uncommon',  'Instinct', 'Reaction', 'Combat', 'Base Class', 
        'Gain a +2 bonus.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Energy', 'Rare',  'Instinct', 'Reaction', 'Combat', 'Base Class', 
        'Gain a +3 bonus.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Stealth', 'Common',  'Instinct', 'Reaction', 'Combat', 'Base Class', 
        'You are removed from combat and receive a -2 to movement on next turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Stealth', 'Uncommon',  'Instinct', 'Reaction', 'Combat', 'Base Class', 
        'You are removed from combat and receive a -1 to movement on next turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Stealth', 'Rare',  'Instinct', 'Reaction', 'Combat', 'Base Class', 
        'You are removed from combat.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Initiative', 'Common',  'Instinct', 'Reaction', 'Fail', 'Base Class', 
        'Your combat card''s action triggers on fail.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Initiative', 'Uncommon',  'Instinct', 'Reaction', 'Fail', 'Base Class', 
        'Target card you are using triggers on fail and can''t be prevented.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Initiative', 'Rare',  'Instinct', 'Reaction', 'Fail', 'Base Class', 
        'Target card within eyesight triggers even on fail and can''t be prevented.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mobility', 'Common',  'Instinct', 'Reaction', 'Movement', 'Base Class', 
        'You can move through enemy spaces unhindered. Scavenging is counted as free actions this turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mobility', 'Uncommon',  'Instinct', 'Reaction', 'Movement', 'Base Class', 
        '+1 move and you can move through enemy spaces unhindered. Scavenging is counted as free actions this turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mobility', 'Rare',  'Instinct', 'Reaction', 'Movement', 'Base Class', 
        '+2 move and you can move through enemy spaces unhindered. Scavenging is counted as free actions this turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Lift', 'Common', 'Instinct', 'Reaction', 'Movement', 'Base Class', 
        'Take a move action with another person.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Lift', 'Uncommon', 'Instinct', 'Reaction', 'Movement', 'Base Class', 
        '+1 move and/or take a move action with another person.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Lift', 'Rare', 'Instinct', 'Reaction', 'Movement', 'Base Class', 
        '+2 move and/or take a move action with another person.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Strength Tech', 'Common',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Target receives a penalty to strength equal to their Tech or yours for 2 turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Strength Tech', 'Uncommon',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Target receives a penalty to strength equal to their Tech or yours for 3 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Strength Tech', 'Rare',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Target receives a penalty to strength equal to their Tech or yours for 4 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Defense Tech', 'Common',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Target receives a penalty to DR equal to their Tech or yours for 2 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Defense Tech', 'Uncommon',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Target receives a penalty to DR equal to their Tech or yours for 3 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Defense Tech', 'Rare',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Target receives a penalty to DR equal to their Tech or yours for 4 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Speed Tech', 'Common',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Target receives a penalty to combat equal to their Tech or yours for 2 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Speed Tech', 'Uncommon',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Target receives a penalty to combat equal to their Tech or yours for 3 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Speed Tech', 'Rare',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Target receives a penalty to combat equal to their Tech or yours for 4 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mind Tech', 'Common',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Target receives a penalty to hand size equal to their Tech or yours for 2 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mind Tech', 'Uncommon',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Target receives a penalty to hand size equal to their Tech or yours for 3 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mind Tech', 'Rare',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Target receives a penalty to hand size equal to their Tech or yours for 4 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mug', 'Common',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Steal a random item from opponent if adjacent.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mug', 'Uncommon',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Steal target item from opponent if adjacent.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mug', 'Rare',  'Tech', 'Combat', 'Tactical', 'Base Class', 
        'Steal target item from opponent regardless of who wins if adjacent.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Sidearm Attack', 'Common',  'Tech', 'Combat', 'Attack', 'Base Class', 
        'You can make a ranged attack without using ammo with a -1 DMG penalty.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Sidearm Attack', 'Uncommon',  'Tech', 'Combat', 'Attack', 'Base Class', 
        'You can make a ranged attack without using ammo.'
    );
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Sidearm Attack', 'Rare',  'Tech', 'Combat', 'Attack', 'Base Class', 
        'You can make a ranged attack without using ammo with a +1 DMG bonus.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Utilize', 'Common',  'Tech', 'Reaction', 'Item Use/Ranged Attack', 'Base Class', 
        'Gain +2 effectiveness and if item, you can use it on any ally within range.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Utilize', 'Uncommon',  'Tech', 'Reaction', 'Item Use/Ranged Attack', 'Base Class', 
        'Gain +3 effectiveness and if item, you can use it on any ally within range.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Utilize', 'Rare',  'Tech', 'Reaction', 'Item Use/Ranged Attack', 'Base Class', 
        'Gain +4 effectiveness and if item, you can use it on any ally within range.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Refactor', 'Common',  'Tech', 'Reaction', 'Tech Usage', 'Base Class', 
        'Tech effects last one turn more or less.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Refactor', 'Uncommon',  'Tech', 'Reaction', 'Tech Usage', 'Base Class', 
        'Tech effects last one turn more or less and are + or - 1 more in effectiveness.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Refactor', 'Rare',  'Tech', 'Reaction', 'Tech Usage', 'Base Class', 
        'Tech effects last one turn more or less and are + or - 2 more in effectiveness.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Resupply', 'Common',  'Tech', 'Action', 'Standard', 'Base Class', 
        'Get 1 ammo.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Resupply', 'Uncommon',  'Tech', 'Action', 'Standard', 'Base Class', 
        'Get 1 ammo and grenade.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Resupply', 'Rare',  'Tech', 'Action', 'Standard', 'Base Class', 
        'Get 2 ammo and grenade.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Overclock', 'Common',  'Tech', 'Action', 'Standard', 'Base Class', 
        'You or player within range receives a bonus to range equal to their Tech or yours for 1 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Overclock', 'Uncommon',  'Tech', 'Action', 'Standard', 'Base Class', 
        'You or player within range receives a bonus to range equal to their Tech or yours for 2 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Overclock', 'Rare',  'Tech', 'Action', 'Standard', 'Base Class', 
        'You or player within range receives a bonus to range equal to their Tech or yours for 3 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Piracy', 'Common',  'Tech', 'Reaction', 'Tech Usage', 'Base Class', 
        'Redirect Tech buff or penalty to target player within range.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Piracy', 'Uncommon',  'Tech', 'Reaction', 'Tech Usage', 'Base Class', 
        'Redirect Tech buff or penalty to target player within range with a + or - 1 more to effectiveness.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Piracy', 'Rare',  'Tech', 'Reaction', 'Tech Usage', 'Base Class', 
        'Redirect Tech buff or penalty to target player within range with a + or - 2 more to effectiveness.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Fragmentation', 'Common',  'Tech', 'Reaction', 'Tech Usage', 'Base Class', 
        'Add +1 to radius.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Fragmentation', 'Uncommon',  'Tech', 'Reaction', 'Tech Usage', 'Base Class', 
        'Add +2 to radius.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Fragmentation', 'Rare',  'Tech', 'Reaction', 'Tech Usage', 'Base Class', 
        'Add +3 to radius.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Chain Attack', 'Common',  'Force', 'Combat', 'Attack', 'Base Class', 
        'Make another attack action on any adjacent target.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Chain Attack', 'Uncommon',  'Force', 'Combat', 'Attack', 'Base Class', 
        'Make another attack action on any adjacent target with a +1 combat bonus.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Chain Attack', 'Rare',  'Force', 'Combat', 'Attack', 'Base Class', 
        'Make another attack action on any adjacent target with a +2 combat bonus.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Steady Attack', 'Common',  'Force', 'Combat', 'Attack', 'Base Class', 
        'instead of adding your roll to damage, add 4.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Steady Attack', 'Uncommon',  'Force', 'Combat', 'Attack', 'Base Class', 
        'instead of adding your roll to damage, add 5.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Steady Attack', 'Rare',  'Force', 'Combat', 'Attack', 'Base Class', 
        'instead of adding your roll to damage, add 6.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Power Attack', 'Common',  'Force', 'Combat', 'Attack', 'Base Class', 
        'Deal +1 more damage.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Power Attack', 'Uncommon',  'Force', 'Combat', 'Attack', 'Base Class', 
        'Deal +2 more damage.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Power Attack', 'Rare',  'Force', 'Combat', 'Attack', 'Base Class', 
        'Deal +3 more damage.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Parameter Attack', 'Common', 'Force', 'Combat', 'Attack', 'Base Class', 
        'Deal 1 Damage parameter damage.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Parameter Attack', 'Uncommon', 'Force', 'Combat', 'Attack', 'Base Class', 
        'Deal 1 Damage or range parameter damage.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Parameter Attack', 'Rare', 'Force', 'Combat', 'Attack', 'Base Class', 
        'deal 1 damage, range or movement parameter damage.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Scarring Attack', 'Common', 'Force', 'Combat', 'Attack', 'Base Class', 
        'Opponent cannot be healed for 2 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Scarring Attack', 'Uncommon', 'Force', 'Combat', 'Attack', 'Base Class', 
        'Opponent cannot be healed for 3 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Scarring Attack', 'Rare', 'Force', 'Combat', 'Attack', 'Base Class', 
        'Opponent cannot be healed for 4 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Counter Attack', 'Common', 'Force', 'Combat', 'Attack', 'Base Class', 
        'Opponent takes 2 damage if they deal an odd number of damage.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Counter Attack', 'Uncommon', 'Force', 'Combat', 'Attack', 'Base Class', 
        'Opponent takes 3 damage if they deal an odd number of damage.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Counter Attack', 'Rare', 'Force', 'Combat', 'Attack', 'Base Class', 
        'Opponent takes 4 damage if they deal an odd number of damage.'
    );
    
	insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Exert', 'Common', 'Force', 'Reaction', 'Hit', 'Base Class', 
        'Deal +1 DMG.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Exert', 'Uncommon', 'Force', 'Reaction', 'Hit', 'Base Class', 
        'Deal +2 DMG.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Exert', 'Rare', 'Force', 'Reaction', 'Hit', 'Base Class', 
        'Deal +3 DMG.'
    );
    
	insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Crush', 'Common',  'Force', 'Reaction', 'Opponent Defense', 'Base Class', 
        'Opponent''s defense card is discarded. They may play another one in its place.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Crush', 'Uncommon',  'Force', 'Reaction', 'Opponent Defense', 'Base Class', 
        'Opponent''s defense card is discarded.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Crush', 'Rare',  'Force', 'Reaction', 'Opponent Defense', 'Base Class', 
        'Opponent''s defense card is discarded and you can play an additional attack card'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Intimidate', 'Common',  'Force', 'Reaction', 'Negotiation', 'Base Class', 
        'Before roll, cancel negotiation towards you and you can''t be negotiated with for 1 turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Intimidate', 'Uncommon',  'Force', 'Reaction', 'Negotiation', 'Base Class', 
        'Before roll, cancel negotiation towards you and you can''t be negotiated with for 2 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Intimidate', 'Rare',  'Force', 'Reaction', 'Negotiation', 'Base Class', 
        'Before roll, cancel negotiation towards you and you can''t be negotiated with for 3 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Critical', 'Common',  'Force', 'Reaction', 'Combat', 'Base Class', 
        'You crit on 19-20.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Critical', 'Uncommon',  'Force', 'Reaction', 'Combat', 'Base Class', 
        'You crit on 18-20.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Critical', 'Rare',  'Force', 'Reaction', 'Combat', 'Base Class', 
        'You crit on 17-20.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Rage', 'Common',  'Force', 'Reaction', 'Combat', 'Base Class', 
        'If successful and dealt and odd amount of damage, gain 1 damage for the rest of the game'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Rage', 'Uncommon',  'Force', 'Reaction', 'Combat', 'Base Class', 
        'If successful, gain 1 damage for the rest of the game.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Rage', 'Rare',  'Force', 'Reaction', 'Combat', 'Base Class', 
        'If successful, gain 1 damage for the rest of the game. If the number was odd, gain an additional 1'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Sweep', 'Common',  'Force', 'Action', 'Standard', 'Base Class', 
        'Deal 2 damage to all adjacent players if they fail an instinct check against your force.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Sweep', 'Uncommon',  'Force', 'Action', 'Standard', 'Base Class', 
        'Deal 3 damage to all adjacent players if they fail an instinct check against your force.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Sweep', 'Rare',  'Force', 'Action', 'Standard', 'Base Class', 
        'Deal 4 damage to all adjacent players if they fail an instinct check against your force.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Disrupt', 'Common',  'Vitality', 'Combat', 'Defensive', 'Base Class', 
        'Reactions cannot be played by opponent.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Disrupt', 'Uncommon',  'Vitality', 'Combat', 'Defensive', 'Base Class', 
        'Reactions cannot be played by opponent and opponents attack card doesn''t trigger.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Disrupt', 'Rare',  'Vitality', 'Combat', 'Defensive', 'Base Class', 
        'Reactions cannot be played by opponent, opponents combat card doesn''t trigger and opponent can''t hit criticals.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Vigilance', 'Common',  'Vitality', 'Combat', 'Defensive', 'Base Class', 
        'Gain +3 DR.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Vigilance', 'Uncommon',  'Vitality', 'Combat', 'Defensive', 'Base Class', 
        'Gain +4 DR.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Vigilance', 'Rare',  'Vitality', 'Combat', 'Defensive', 'Base Class', 
        'Gain +5 DR.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Cure', 'Common',  'Vitality', 'Combat', 'Defensive', 'Base Class', 
        'Gain 1 Health regardless of who wins. If you were to die from this attack, stay alive with 1 Health.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Cure', 'Uncommon',  'Vitality', 'Combat', 'Defensive', 'Base Class', 
        'Gain 1 Health regardless of who wins. If you were to die from this attack, stay alive with 3 Health.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Cure', 'Rare',  'Vitality', 'Combat', 'Defensive', 'Base Class', 
        'Gain 1 Health regardless of who wins. If you were to die from this attack, stay alive with 5 Health.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Paralyzing Attack', 'Common',  'Vitality', 'Combat', 'Attack', 'Base Class', 
        'Opponent can''t attack for 1 turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Paralyzing Attack', 'Uncommon',  'Vitality', 'Combat', 'Attack', 'Base Class', 
        'Opponent can''t attack for 1 turn or opponent can''t move for 1 turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Paralyzing Attack', 'Rare',  'Vitality', 'Combat', 'Attack', 'Base Class', 
        'Opponent can''t attack and move for 1 turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Ward Attack', 'Common',  'Vitality', 'Combat', 'Attack', 'Base Class', 
        'Opponent can''t use elements or tech for 1 turn and cancel current charge and Tech effects.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Ward Attack', 'Uncommon',  'Vitality', 'Combat', 'Attack', 'Base Class', 
        'Opponent can''t use elements or tech for 2 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Ward', 'Rare',  'Vitality', 'Combat', 'Attack', 'Base Class', 
        'Opponent cannot play combat cards for 2 turns and cancel current charge and Tech effects.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Healing Attack', 'Common',  'Vitality', 'Combat', 'Attack', 'Base Class', 
        'Heal health equal to half of damage dealt rounded down.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Healing Attack', 'Uncommon',  'Vitality', 'Combat', 'Attack', 'Base Class', 
        'Heal health equal to half of damage dealt rounded up + 1.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Healing Attack', 'Rare',  'Vitality', 'Combat', 'Attack', 'Base Class', 
        'Heal health equal to damage dealt.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Deny', 'Common',  'Vitality', 'Reaction', 'Action/Reaction Card Use', 'Base Class', 
        'Cancel any reaction card being played by target within eyesight.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Deny', 'Uncommon',  'Vitality', 'Reaction', 'Action/Reaction Card Use', 'Base Class', 
        'Cancel any action or reaction card being played by target within eyesight.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Deny', 'Rare',  'Vitality', 'Reaction', 'Action/Reaction Card Use', 'Base Class', 
        'Cancel all action or reaction cards being played by target within eyesight.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Protect', 'Common',  'Vitality', 'Reaction', 'Hit', 'Base Class', 
        'Gain +1 DR and can take damage for adjacent player.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Protect', 'Uncommon',  'Vitality', 'Reaction', 'Hit', 'Base Class', 
        'Gain +2 DR and can take damage for adjacent player.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Protect', 'Rare',  'Vitality', 'Reaction', 'Hit', 'Base Class', 
        'Gain +3 DR and can take damage for adjacent player.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Aid', 'Common',  'Vitality', 'Reaction', 'Heal', 'Base Class', 
        'Double amount of health restored to you and/or adjacent ally.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Aid', 'Uncommon',  'Vitality', 'Reaction', 'Heal', 'Base Class', 
        'Double amount of health restored to you and/or adjacent ally or prevent opponent/s from healing.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Aid', 'Rare',  'Vitality', 'Reaction', 'Heal', 'Base Class', 
        'Double amount of health restored to you and/or ally within eyesight or prevent opponent/s from healing.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Shell', 'Common',  'Vitality', 'Action', 'Standard', 'Base Class', 
        'Gain 1 DR for 2 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Shell', 'Uncommon',  'Vitality', 'Action', 'Standard', 'Base Class', 
        'Gain 1 DR for 3 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Shell', 'Rare',  'Vitality', 'Action', 'Standard', 'Base Class', 
        'Gain 1 DR for 4 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Purification', 'Common',  'Vitality', 'Action', 'Standard', 'Base Class', 
        'Remove a status effect from yourself or adjacent player.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Purification', 'Uncommon',  'Vitality', 'Action', 'Standard', 'Base Class', 
        'Remove all status effects from you or adjacent player.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Purification', 'Rare',  'Vitality', 'Action', 'Standard', 'Base Class', 
        'Remove all negative or positive status effects from you or adjacent player.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Wall', 'Common',  'Vitality', 'Action', 'Standard', 'Base Class', 
        'Place a 1x1 destructible wall in an adjacent space.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Wall', 'Uncommon',  'Vitality', 'Action', 'Standard', 'Base Class', 
        'Place a 2x1 destructible wall in an adjacent space.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Wall', 'Rare',  'Vitality', 'Action', 'Standard', 'Base Class', 
        'Place a 3x1 destructible wall in an adjacent space.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Charge Psi', 'Common',  'Psyche', 'Combat', 'Defensive', 'Base Class', 
        'You can add a charge after the combat.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Charge Psi', 'Uncommon',  'Psyche', 'Combat', 'Defensive', 'Base Class', 
        'You can add a charge after the combat regardless of who wins.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Charge Psi', 'Rare',  'Psyche', 'Combat', 'Defensive', 'Base Class', 
        'You can add a charge after the combat regardless of who wins to yourself or player within eyesight.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Borrowed Psi', 'Common',  'Psyche', 'Combat', 'Tactical', 'Base Class', 
        'Steal one of opponents masteries for 2 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Borrowed Psi', 'Uncommon',  'Psyche', 'Combat', 'Tactical', 'Base Class', 
        'Steal one of opponents masteries for 3 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Borrowed Psi', 'Rare',  'Psyche', 'Combat', 'Tactical', 'Base Class', 
        'Steal one of opponents masteries for 4 turns.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Syphon Psi', 'Common',  'Psyche', 'Combat', 'Tactical', 'Base Class', 
        'Steal 2 element from opponents reserves.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Syphon Psi', 'Uncommon',  'Psyche', 'Combat', 'Tactical', 'Base Class', 
        'Steal 3 elements from opponents reserves.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Syphon Psi', 'Rare',  'Psyche', 'Combat', 'Tactical', 'Base Class', 
        'Steal 4 elements from opponents reserves.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Consolidation Attack', 'Common',  'Psyche', 'Combat', 'Attack', 'Base Class', 
        'You can remove an element from your compound for a +1 bonus.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Consolidation Attack', 'Uncommon',  'Psyche', 'Combat', 'Attack', 'Base Class', 
        'You can remove an element from your compound for a +2 bonus.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Consolidation Attack', 'Rare',  'Psyche', 'Combat', 'Attack', 'Base Class', 
        'You can remove an element from your compound for a +3 bonus.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Fusion Attack', 'Common',  'Psyche', 'Combat', 'Attack', 'Base Class', 
        'You can add another element to the compound with a -2 penalty after the reveal.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Fusion Attack', 'Uncommon',  'Psyche', 'Combat', 'Attack', 'Base Class', 
        'You can add another element to the compound with a -1 penalty  after the reveal.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Fusion Attack', 'Rare',  'Psyche', 'Combat', 'Attack', 'Base Class', 
        'You can add another element to the compound after the reveal.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Dispersion Attack', 'Common',  'Psyche', 'Combat', 'Attack', 'Base Class', 
        'The element attack''s AOE increases by 2'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Dispersion Attack', 'Uncommon',  'Psyche', 'Combat', 'Attack', 'Base Class', 
        'The element attack''s AOE increases by 2 and receive a +1 effectiveness.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Dispersion Attack', 'Rare',  'Psyche', 'Combat', 'Attack', 'Base Class', 
        'The element attack''s AOE increases by 2 and receive a +2 effectiveness.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Boost', 'Common',  'Psyche', 'Reaction', 'Charge', 'Base Class', 
        'Add an additional charge to you or adjcent ally.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Boost', 'Uncommon',  'Psyche', 'Reaction', 'Charge', 'Base Class', 
        'Add an additional charge to you or adjcent ally or prevent one from being added by opponent.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Boost', 'Rare',  'Psyche', 'Reaction', 'Charge', 'Base Class', 
        'Add an additional charge to you or adjcent ally or prevent and remove one from being added by opponent.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Concentration', 'Common',  'Psyche', 'Reaction', 'Element Hit', 'Base Class', 
        'Receive a +1 or -1 effectiveness to an elemental hit.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Concentration', 'Uncommon',  'Psyche', 'Reaction', 'Element Hit', 'Base Class', 
        'Receive a +2 or -2 effectiveness to an elemental hit.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Concentration', 'Rare',  'Psyche', 'Reaction', 'Element Hit', 'Base Class', 
        'Receive a +3 or -3 effectiveness to an elemental hit.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Catch', 'Common',  'Psyche', 'Reaction', 'Element Combat', 'Base Class', 
        'Keep current compound after attack regardless.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Catch', 'Uncommon',  'Psyche', 'Reaction', 'Element Combat', 'Base Class', 
        'Keep current compound after attack regardless of who wins.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Catch', 'Rare',  'Psyche', 'Reaction', 'Element Combat', 'Base Class', 
        'Keep current compound after attack regardless of who wins and can pass it to an ally within sight.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Cancel', 'Common',  'Psyche', 'Reaction', 'Element Hit', 'Base Class', 
        'Sacrifice a number of elements equal to target charge that is hitting you and cancel it.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Cancel', 'Uncommon',  'Psyche', 'Reaction', 'Element Hit', 'Base Class', 
        'Sacrifice a number of elements equal to target charge that is hitting within sight and cancel it.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Cancel', 'Rare',  'Psyche', 'Reaction', 'Element Hit', 'Base Class', 
        'Sacrifice a number of elements equal to target charge -1 within sight and cancel it.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Psi Copy', 'Common',  'Psyche', 'Action', 'Standard', 'Base Class', 
        'You can add an element to your charge based on element from target player within sight.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Psi Copy', 'Uncommon',  'Psyche', 'Action', 'Standard', 'Base Class', 
        'You can copy any player''s charge within sight and replace any charge you currently had with it.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Psi Copy', 'Rare',  'Psyche', 'Action', 'Standard', 'Base Class', 
        'You can copy any player''s charge within sight and add to yours.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Psi Scan', 'Common',  'Psyche', 'Action', 'Standard', 'Base Class', 
        'You can look at an opponents charged element within sight and receive a +1 bonus in element combat until end of turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Psi Scan', 'Uncommon',  'Psyche', 'Action', 'Standard', 'Base Class', 
        'You can look at an opponents charged element within sight and receive a +2 bonus in element combat until end of turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Psi Scan', 'Rare',  'Psyche', 'Action', 'Standard', 'Base Class', 
        'You can look at an opponents charged element within sight and receive a +3 bonus in element combat until end of turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Preparation', 'Common',  'Mind', 'Combat', 'Defensive', 'Base Class', 
        'Draw 1 card.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Preparation', 'Uncommon',  'Mind', 'Combat', 'Defensive', 'Base Class', 
        'Draw 2 cards.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Preparation', 'Rare',  'Mind', 'Combat', 'Defensive', 'Base Class', 
        'Draw 3 cards.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Convincing', 'Common',  'Mind', 'Combat', 'Defensive', 'Base Class', 
        'Gain 1 Mind regardless of who wins.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Convincing', 'Uncommon',  'Mind', 'Combat', 'Defensive', 'Base Class', 
        'Gain 1 Mind regardless of who wins and an additional 1 more Mind if roll was odd.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Convincing', 'Rare',  'Mind', 'Combat', 'Defensive', 'Base Class', 
        'Gain 2 Mind regardless of who wins.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Imitate', 'Common',  'Mind', 'Combat', 'Tactical', 'Base Class', 
        'Look at target opponent''s hand and choose a card. They discard it and you can use it on your next turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Imitate', 'Uncommon',  'Mind', 'Combat', 'Tactical', 'Base Class', 
        '+1 bonus and look at target opponent''s hand and choose a card. They discard it and you can use it on your next turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Imitate', 'Rare',  'Mind', 'Combat', 'Tactical', 'Base Class', 
        '+2 bonus and look at target opponents hand and choose a card. They discard it and you can use it on your next turn.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Redirect', 'Common',  'Mind', 'Combat', 'Tactical', 'Base Class', 
        'Deal opponents attack to themselves.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Redirect', 'Uncommon',  'Mind', 'Combat', 'Tactical', 'Base Class', 
        'Deal opponents attack to themselves or adjacent target.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Redirect', 'Rare',  'Mind', 'Combat', 'Tactical', 'Base Class', 
        'Deal opponents attack to themselves or target within range.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Break Attack', 'Common',  'Mind', 'Combat', 'Attack', 'Base Class', 
        'Opponent loses 1 Mind and an additional 1 more Mind if damage dealt was odd.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Break Attack', 'Uncommon',  'Mind', 'Combat', 'Attack', 'Base Class', 
        'Opponent loses 2 Mind.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Break Attack', 'Rare',  'Mind', 'Combat', 'Attack', 'Base Class', 
        'Opponent loses 2 Mind and an additional 1 more Mind if damage dealt was odd.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Disorienting Attack', 'Common',  'Mind', 'Combat', 'Attack', 'Base Class', 
        'Opponent discards a card.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Disorienting Attack', 'Uncommon',  'Mind', 'Combat', 'Attack', 'Base Class', 
        'Opponent discards a card at random.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Disorienting Attack', 'Rare',  'Mind', 'Combat', 'Attack', 'Base Class', 
        'Opponent discards 2 cards.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mind Games', 'Common',  'Mind', 'Reaction', 'Draw/Discard', 'Base Class', 
        'Prevent target from drawing or discarding a card within eyesight.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mind Games', 'Uncommon',  'Mind', 'Reaction', 'Draw/Discard', 'Base Class', 
        'Make target draw or discard a card within eyesight.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Mind Games', 'Rare',  'Mind', 'Reaction', 'Draw/Discard', 'Base Class', 
        'Make target draw or discard a random card within eyesight.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Logic', 'Common',  'Mind', 'Reaction', 'Negotiation', 'Base Class', 
        'Add a +1 bonus or -1 penalty to any player within sight before rolls.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Logic', 'Uncommon',  'Mind', 'Reaction', 'Negotiation', 'Base Class', 
        'Add a +2 bonus or -2 penalty to any player within sight before rolls.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Logic', 'Rare',  'Mind', 'Reaction', 'Negotiation', 'Base Class', 
        'Add a +3 bonus or -3 penalty to any player within sight before rolls.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Reversal', 'Common',  'Mind', 'Reaction', 'Reaction used', 'Base Class', 
        'Gain the effects of a reaction card used by opponent as well.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Reversal', 'Uncommon',  'Mind', 'Reaction', 'Reaction used', 'Base Class', 
        'Gain the effects of a reaction card used by opponent instead with a -1 effectiveness.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Reversal', 'Rare',  'Mind', 'Reaction', 'Reaction used', 'Base Class', 
        'Gain the effects of a reaction card used by opponent instead.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Analyze', 'Common',  'Mind', 'Action', 'Standard', 'Base Class', 
        'Search your deck for 1 card.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Analyze', 'Uncommon',  'Mind', 'Action', 'Standard', 'Base Class', 
        'Search your deck for 2 cards and then discard 1 from hand.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Analyze', 'Rare',  'Mind', 'Action', 'Standard', 'Base Class', 
        'Search your deck for 2 cards.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Cycle', 'Common',  'Mind', 'Action', 'Standard', 'Base Class', 
        'Draw 2 cards.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Cycle', 'Uncommon',  'Mind', 'Action', 'Standard', 'Base Class', 
        'Draw 3 cards and discard 1.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Cycle', 'Rare',  'Mind', 'Action', 'Standard', 'Base Class', 
        'Draw 3 cards.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Persuasion', 'Common', 'Mind', 'Action', 'Standard', 'Base Class', 
        'Make a negotiation against all opponents within sight.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Persuasion', 'Uncommon', 'Mind', 'Action', 'Standard', 'Base Class', 
        'Make a negotiation against all opponents within sight with no penalty for failure.'
    );
    
    insert into cards
    (cardName, CardRarity, cardSet, cardType, cardSubType, cardSystem, cardText
    ) values (
		'Persuasion', 'Rare', 'Mind', 'Action', 'Standard', 'Base Class', 
        'Make a negotiation against all opponents within sight with no penalty for failure and gain 1 Mind on success.'
    );