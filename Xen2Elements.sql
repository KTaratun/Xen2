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
        'Base Element: Zephyr'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Spark', 1, 'Spark', 'Damage',
        'Base Element: Spark'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Heat', 1, 'Heat', 'Damage',
        'Base Element: Heat'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Mineral', 1, 'Mineral', 'Damage',
        'Base Element: Mineral'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Void', 1, 'Void', 'Damage',
        'Base Element: Void'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Liquid', 1, 'Liquid', 'Damage',
        'Base Element: Liquid'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Static', 2, 'Zephyr+Spark', 'Debuff',
        'All Tech effects are removed and cannot use or be affected by Tech for 1 turn.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Flame', 2, 'Zephyr+Heat', 'Damage',
        'Deals 5 DMG and 5 more next turn.'
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
        'Heals 12 HP and lose 2 HP for 3 turns.'
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
        'Physical attacks deal +4 DMG for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Shock', 2, 'Spark+Mineral', 'Damage',
        'Deals 6 DMG R:1.'
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
        'Heals 6 HP. R:2 gets healed 4.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Cinder', 2, 'Heat+Mineral', 'Healing',
        'Deals 4 DMG, and on the next turn heals 12 HP.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Ash', 2, 'Heat+Void', 'Debuff',
        'Target cannot attack until end of next turn.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Flux', 2, 'Heat+Liquid', 'Special',
        'Target cannot use defensive actions or lose priority for 1 turn.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Gem', 2, 'Mineral+Void', 'Buff',
        'Elementals gain +2 bonus to elements for 2 turns.'
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
        'Deals 8 DMG if an even number was rolled and player behind is hit, or 5 DMG if odd.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Fire', 3, 'Zephyr+Spark+Heat', 'Damage',
        'Deals 4 DMG every turn for 3 turns and any player you come in contact with takes 2 DMG.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Aurora', 3, 'Zephyr+Spark+Mineral', 'Special',
        'R:3 Discard your hand and draw that many cards.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Flash', 3, 'Zephyr+Spark+Void', 'Healing',
        'R:2 Heals 8 HP and may remove a status effect of your choice.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Rain', 3, 'Zephyr+Spark+Liquid', 'Buff',
        'R:1 Do not discard actions used. Effect lasts for 1 turn.'
    );
    
	insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Flare', 3, 'Zephyr+Heat+Mineral', 'Buff',
        'If you take melee DMG, deal 3 DMG to the attacker for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Smoke', 3, 'Zephyr+Heat+Void', 'Debuff',
        'R:4 Players cannot use ranged attacks or draw for 1 turn.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Wind', 3, 'Zephyr+Heat+Liquid', 'Healing',
        'Heals 10 HP and move target 5 spaces.'
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
        'Deal 2 weapon damage.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Ice', 3, 'Zephyr+Void+Liquid', 'Damage',
        'Hits all players in a straight line for 10 DMG.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Ember', 3, 'Spark+Heat+Mineral', 'Debuff',
        'Opponent cannot use Heavy actions for 1 turn.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Voltage', 3, 'Spark+Heat+Void', 'Buff',
        'Target can use one Full-Round Action as a Free Action during next turn.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Plasma', 3, 'Spark+Heat+Liquid', 'Special',
        'Drains 7 HP from the player. Blood types do not have any effect.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Lightning', 3, 'Spark+Mineral+Void', 'Damage',
        'Deals 8 DMG and hits all players touching spaces with each other.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Water', 3, 'Spark+Mineral+Liquid', 'Healing',
        'Heals 4 HP for 4 turns. You give an unused turn of healing to any players that you come in contact with.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Thunder', 3, 'Spark+Void+Liquid', 'Debuff',
        'Random action: 1) melee 2) ranged 3) magic 4) item 5) negotiate 6) run. For 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Metal', 3, 'Heat+Mineral+Void', 'Healing',
        'Gain 1 heavy and 6 light armor or reapairs weapon by 2.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Stone', 3, 'Heat+Mineral+Liquid', 'Damage',
        'Deals 6 DMG, 1 heavy and 6 light armor damage.'
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
        'Player can choose to reroll once on all rolls for 1 turn.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Blaze', 4, 'Zephyr+Spark+Heat+Mineral', 'Damage',
        'Deals 10 DMG +1 for each element sacrificed. Elements must be used before rolls.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Tornado', 4, 'Zephyr+Spark+Heat+Void', 'Debuff',
        'R:2 Gain an extra 1 movement and lose all armor bonuses and DR bonuses for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Squall', 4, 'Zephyr+Spark+Heat+Liquid', 'Buff',
        'All penalties, bonuses and death do not effect you or degrade for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Moon', 4, 'Zephyr+Spark+Mineral+Void', 'Special',
        'Critical range increase to DEF: 1-4 OFF: 17-20 for 2 turns and cannot gain priority.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Boulder', 4, 'Zephyr+Spark+Mineral+Liquid', 'Damage',
        'Gain 1 DR and can only move 1 space for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Geyser', 4, 'Zephyr+Spark+Void+Liquid', 'Healing',
        'R:3 Can distribute 14 HP among all players within range.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Gale', 4, 'Zephyr+Heat+Mineral+Void', 'Healing',
        'R:1 Revives fallen players to 10 HP.'
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
        'Deals DMG = to the number of players hit x3. R:(adjacent with each other R:2).'
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
        'In physical combat, opponent has to choose random cards for their attacks and cannot use Action cards against you for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Magnet', 4, 'Spark+Heat+Mineral+Liquid', 'Healing',
        'Cancel all currently equipped elements from all players and heal 3 HP for each. Keep elements.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Sol', 4, 'Spark+Heat+Void+Liquid', 'Special',
        'R:2 Player cannot use critical and use a d10 +12 for combat rolls for 2 turns.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Glacier', 4, 'Spark+Mineral+Void+Liquid', 'Damage',
        'Deals 12 DMG to all hit, knock target back 1, and creates a destructable wall 3 spaces wide.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Magma', 4, 'Heat+Mineral+Void+Liquid', 'Debuff',
        'Receive a +8 DMG bonus on their next 2 turns and is forced into attacking closest player.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Inferno', 5, 'Zephyr+Spark+Heat+Mineral+Void', 'Damage',
        'Deals 12 DMG R:1 and an additional 2 DMG and R each time its used.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Tempest', 5, 'Zephyr+Spark+Heat+Mineral+Liquid', 'Damage',
        'Deals 10 DMG and additional DMG equal to their Tech R:(players within range of each other).'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Cyclone', 5, 'Zephyr+Spark+Heat+Void+Liquid', 'Damage',
        'Deals 12 DMG to all player in the effective range and you can rearrange them any way. R:4.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Tsunami', 5, 'Zephyr+Spark+Mineral+Void+Liquid', 'Damage',
        'Deals 4 DMG for each element sacrificed R:3. up to 5 elements can be sacrificed at a time.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Blizzard', 5, 'Zephyr+Heat+Mineral+Void+Liquid', 'Damage',
        'Deals 14 DMG and all players are frozen for 1 turn R:2.'
    );
    
    insert into elements
    (elementName, elementLvl, elementCharges, elementType, elementDef
    ) values (
		'Meteor', 5, 'Spark+Heat+Mineral+Void+Liquid', 'Damage',
        'Deals 16 DMG and take 2 parameter DMG to one parameter.'
    );