use xen2;

create table Elements(
    elementId INT NOT NULL auto_increment,
    elementName VARCHAR(50) NULL,
    elementLvl INT, #Number of charges in element
    elementCharges VARCHAR(50) NULL, #Zephyr, Heat, Spark,Mineral etc
    elementType VARCHAR(50) NULL, #Healing, damage, buff etc
    elementDef VARCHAR(200) NULL, #Combat, Reaction, Half-Round, Full-Round
    PRIMARY KEY (elementId)
    )Engine = InnoDB DEFAULT CHARSET = latin1;
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Zephyr', 1, 'Zephyr', 'Damage',
        'Deal 3 damage + bloodtype bonus/penalty'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Spark', 1, 'Spark', 'Damage',
        'Deal 3 damage + bloodtype bonus/penalty'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Heat', 1, 'Heat', 'Damage',
        'Deal 3 damage + bloodtype bonus/penalty'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Mineral', 1, 'Mineral', 'Damage',
        'Deal 3 damage + bloodtype bonus/penalty'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Void', 1, 'Void', 'Damage',
        'Deal 3 damage + bloodtype bonus/penalty'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Liquid', 1, 'Liquid', 'Damage',
        'Deal 3 damage + bloodtype bonus/penalty'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Static', 2, 'Zephyr+Spark', 'Debuff',
        'Target receive -2 tech/range for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Flame', 2, 'Zephyr+Heat', 'Damage',
        'Deals 2 DMG and 3 more next turn.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Warp', 2, 'Zephyr+Mineral', 'Special',
        'You and target trade a random status effect and position.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Frost', 2, 'Zephyr+Void', 'Healing',
        'Heals 6 HP and lose 1 HP for 3 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Mist', 2, 'Zephyr+Liquid', 'Buff',
        'Draw a card and receive a +2 bonus for 1 turn.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Torch', 2, 'Spark+Heat', 'Buff',
        'Physical attacks deal +2 DMG for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Shock', 2, 'Spark+Mineral', 'Damage',
        'Deals 4 DMG R:2.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Twilight', 2, 'Spark+Void', 'Special',
        'All blood bonus/penalties are doubled for 3 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Jolt', 2, 'Spark+Liquid', 'Healing',
        'Heals 3 HP. R:2 gets healed 1.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Cinder', 2, 'Heat+Mineral', 'Healing',
        'Deals 2 DMG, and on the next turn heals 6 HP.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Ash', 2, 'Heat+Void', 'Debuff',
        'Deals 2 damage and target removes 2 elements from their reserve.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Flux', 2, 'Heat+Liquid', 'Special',
        'Target can''t use defensive actions and critical range increases by 1.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Gem', 2, 'Mineral+Void', 'Buff',
        'Gain +2 DR for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Sand', 2, 'Mineral+Liquid', 'Debuff',
        'Discard a card and receive a -2 penalty for 1 turn.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Icicle', 2, 'Void+Liquid', 'Damage',
        'Deals 5 DMG if an even number was rolled and player behind is hit, or 2 DMG if odd.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Fire', 3, 'Zephyr+Spark+Heat', 'Damage',
        'Deals 1 DMG and an additional 2 DMG for 3 turns. Any player you come in contact with takes 1 DMG.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Aurora', 3, 'Zephyr+Spark+Mineral', 'Special',
        'Both players discard their hand and draw 1.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Flash', 3, 'Zephyr+Spark+Void', 'Healing',
        'R:2 Heals 5 HP and may remove a status effect of your choice.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Rain', 3, 'Zephyr+Spark+Liquid', 'Buff',
        'R:1 Do not discard cards used for 2 turns.'
    );
    
	insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Flare', 3, 'Zephyr+Heat+Mineral', 'Buff',
        'If you take melee DMG, deal 2 DMG to the attacker for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Smoke', 3, 'Zephyr+Heat+Void', 'Debuff',
        'R:3 Players lose 2 movement and range for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Wind', 3, 'Zephyr+Heat+Liquid', 'Healing',
        'Heals 5 HP and move target 5 spaces.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Gravity', 3, 'Zephyr+Mineral+Void', 'Special',
        'Player''s health is now set to half of their starting health.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Rust', 3, 'Zephyr+Mineral+Liquid', 'Debuff',
        'Destroy a random item from players inventory.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Ice', 3, 'Zephyr+Void+Liquid', 'Damage',
        'Hits all players in a straight line for 6 DMG.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Ember', 3, 'Spark+Heat+Mineral', 'Debuff',
        'Take 1 damage for each item held.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Voltage', 3, 'Spark+Heat+Void', 'Buff',
        'Take an immediate turn.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Plasma', 3, 'Spark+Heat+Liquid', 'Special',
        'Drains 4 HP from the player. Blood types do not have any effect.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Lightning', 3, 'Spark+Mineral+Void', 'Damage',
        'R:4. Deals 6.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Water', 3, 'Spark+Mineral+Liquid', 'Healing',
        'Heals 2 HP for 2 turns. You give an unused turn of healing to any players that you come in contact with.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Thunder', 3, 'Spark+Void+Liquid', 'Debuff',
        'Random action: 1) melee 2) ranged 3) magic 4) item 5) negotiate 6) run. For 1 turn.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Metal', 3, 'Heat+Mineral+Void', 'Healing',
        'Gain 6 health. You can gain above max'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Stone', 3, 'Heat+Mineral+Liquid', 'Damage',
        'Deals 6 damage and is unaffected by DR.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Acid', 3, 'Heat+Void+Liquid', 'Special',
        'Deals 1 parameter damage of your choice.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Crystal', 3, 'Mineral+Void+Liquid', 'Buff',
        'Player can choose to reroll once on all rolls for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Blaze', 4, 'Zephyr+Spark+Heat+Mineral', 'Damage',
        'Deals 8 damage. Caster plus each adjacent player takes 2 damage.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Tornado', 4, 'Zephyr+Spark+Heat+Void', 'Debuff',
        'R:6 Rearrange all players and they lose their DR bonuses.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Squall', 4, 'Zephyr+Spark+Heat+Liquid', 'Buff',
        'All penalties, bonuses and death do not effect you or degrade for 3 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Moon', 4, 'Zephyr+Spark+Mineral+Void', 'Special',
        'R:7. Redistribute all status effects on players within range.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Boulder', 4, 'Zephyr+Spark+Mineral+Liquid', 'Debuff',
        'Gain 1 DR and can only move 1 space for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Geyser', 4, 'Zephyr+Spark+Void+Liquid', 'Healing',
        'R:5 Can distribute 8 HP among all players within range.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Gale', 4, 'Zephyr+Heat+Mineral+Void', 'Healing',
        'R:1 Revives fallen players to 5 HP.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Ether', 4, 'Zephyr+Heat+Minerl+Liquid', 'Special',
        'Inverts players elements and blood type and have unlimted use of elements for 3 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Storm', 4, 'Zephyr+Heat+Void+Liquid', 'Damage',
        'Deals 2 DMG plus an additional 2 for each player hit. R:6.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Torrent', 4, 'Zephyr+Mineral+Void+Liquid', 'Buff',
        'The next elements bounce off of player for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Alloy', 4, 'Spark+Heat+Mineral+Void', 'Buff',
        'If you roll under 6 in combat, remove all damage for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Magnet', 4, 'Spark+Heat+Mineral+Liquid', 'Healing',
        'Cancel all currently equipped elements from all players and heal 1 HP for each.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Sol', 4, 'Spark+Heat+Void+Liquid', 'Special',
        'Player cannot use critical and use a d10 +12 for combat rolls for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Glacier', 4, 'Spark+Mineral+Void+Liquid', 'Damage',
        'Deals 7 DMG, knocks target back 1, and creates a destructable wall 3 spaces wide.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Magma', 4, 'Heat+Mineral+Void+Liquid', 'Debuff',
        'Receive a +4 DMG bonus on their next 2 turns and is forced into attacking closest player.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Inferno', 5, 'Zephyr+Spark+Heat+Mineral+Void', 'Damage',
        'Deals 8 DMG R:3 and an additional 1 DMG and R each time its used.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Tempest', 5, 'Zephyr+Spark+Heat+Mineral+Liquid', 'Damage',
        'Deals 4 DMG and additional DMG equal to their Tech R:(players within range of each other).'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Cyclone', 5, 'Zephyr+Spark+Heat+Void+Liquid', 'Damage',
        'Deals 7 DMG to all player in the effective range and you can rearrange them any way. R:6.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Tsunami', 5, 'Zephyr+Spark+Mineral+Void+Liquid', 'Damage',
        'Deals 2 DMG and additional 2 for each element sacrificed R:3. up to 5 elements can be sacrificed at a time.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Blizzard', 5, 'Zephyr+Heat+Mineral+Void+Liquid', 'Damage',
        'Deals 7 DMG and all players are frozen for 1 turn R:3.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Meteor', 5, 'Spark+Heat+Mineral+Void+Liquid', 'Damage',
        'Deals 8 DMG and take 2 parameter DMG to one parameter.'
    );