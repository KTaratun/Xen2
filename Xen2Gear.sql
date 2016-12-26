use xen2;

create table Gear(
    gearId INT NOT NULL auto_increment,
    gearName VARCHAR(50) NULL,
    gearType VARCHAR(50) NULL, #Weapon, Armor, Healing, Damage, Buff, Debuff, Other etc
    gearSize INT, #Board Control, Stamina, Speed, Items, Tech, Weapons, etc.
    gearQualityMin INT,
    gearQualityMax INT,
    gearFindRate INT, #1=Very Rare, 2=Rare, 3=Uncommon, 4=Common, 5=Very Common
    gearDef VARCHAR(100) NULL, #Combat, Reaction, Half-Round, Full-Round
    PRIMARY KEY (gearId)
    )Engine = InnoDB DEFAULT CHARSET = latin1;
    
    insert into gear
    (gearName, gearType, gearSize, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'First Aid', 'Healing', 1, 2, 4, 5,
        'Heals health equal to its quality to one adjacent target.'
    );
    
    insert into gear
    (gearName, gearType, gearSize, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Refresher', 'Healing', 1, 0, 0, 4,
        'Gain 5 Stamina.'
    );
    
    insert into gear
    (gearName, gearType, gearSize, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Purifier', 'Healing', 1, 0, 0, 4,
        'Removes one status effect.'
    );
    
    insert into gear
    (gearName, gearType, gearSize, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Grenade', 'Damage', 1, 4, 7, 4,
        'R:1, deals damage to all within the blast radius that fails an Instinct check.'
    );
    
    insert into gear
    (gearName, gearType, gearSize, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Ammo', 'Other', 1, 1, 3, 5,
        'Ammo. Up to 3 per stack.'
    );
    
    insert into gear
    (gearName, gearType, gearSize, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Element', 'Other', 1, 1, 3, 5,
        'Receive up to 3 elements of any type equal to its quality.'
    );
    
    insert into gear
    (gearName, gearType, gearSize, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Currency', 'Other', 1, 1, 20, 3,
        'Money. Up to 20 per stack.'
    );
    
    insert into gear
    (gearName, gearType, gearSize, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'EXP', 'Other', 1, 1, 1, 1,
        'Gain 1 EXP.'
    );
    
    insert into gear
    (gearName, gearType, gearSize, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Skill Pack', 'Other', 1, 2, 5, 3,
        'Receive up to 5 cards equal to its quality.'
    );
    
	insert into gear
    (gearName, gearType, gearSize, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Key', 'Other', 1, 0, 0, 0,
        'Mission item.'
    );