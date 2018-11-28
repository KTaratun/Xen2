use xen2;

create table Gear(
    gearId INT NOT NULL auto_increment,
    gearName VARCHAR(50) NULL,
    gearType VARCHAR(50) NULL, #Weapon, Armor, Healing, Damage, Buff, Debuff, Other etc
    gearQualityMin INT,
    gearQualityMax INT,
    gearFindRate INT, #1=Very Rare, 2=Rare, 3=Uncommon, 4=Common, 5=Very Common
    gearDef VARCHAR(100) NULL, #Combat, Reaction, Half-Round, Full-Round
    PRIMARY KEY (gearId)
    )Engine = InnoDB DEFAULT CHARSET = latin1;
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Floppy', 'Junk', 0, 0, 5,
        'Literally garbage.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'BTB Magazine', 'Junk', 0, 1, 10,
        'Quality reading material.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Zip Drive', 'Junk', 0, 1, 10,
        'More memory than a floppy.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Death Sticks', 'Junk', 1, 1, 10,
        'Smoking these will increase Mind for 1 turn. Not really though.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Gameboy', 'Junk', 1, 1, 10,
        'Looks like there is a cartridge still in it.'
    );

    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'CD Rom', 'Junk', 0, 2, 10,
        'A compact disc used as a read-only optical memory device computer system.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Pills', 'Junk', 0, 2, 10,
        'Label reads: "Discount drugs. May or may not help with illness."'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'DVD', 'Junk', 1, 2, 8,
        'Digital versatile disc.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'CP Ring', 'Junk', 1, 2, 8,
        'Ring of famous green haired environmentalist.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Blu-ray', 'Junk', 2, 2, 6,
        'Ultra high-definition.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'BH Disc', 'Junk', 4, 4, 2,
        'A poorly made game that is still, and always will be relavant.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'First Aid', 'Healing', 2, 4, 10,
        'Heals health equal to its quality to one adjacent target.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Refresher', 'Healing', 0, 0, 2,
        'Reset your deck.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Purifier', 'Healing', 0, 0, 5,
        'Removes one status effect.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Grenade', 'Damage', 3, 6, 6,
        'R:1, deals damage to all within the blast radius that fails an Instinct check.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Ammo', 'Other', 1, 3, 10,
        'Ammo. Up to 3 per stack.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Element', 'Other', 1, 3, 10,
        'Receive up to 3 elements of any type equal to its quality.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Lighter', 'Other', 1, 1, 2,
        'Deal 1 damage to adjacent target.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Taser', 'Other', 1, 1, 2,
        'Player skips next move phase.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Scope', 'Other', 1, 1, 1,
        'Holding onto this gives +1 to range.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Jacket', 'Other', 1, 1, 1,
        'Gain +1 DR while holding this.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Shoes', 'Other', 1, 1, 1,
        'Gain +1 move while holding this.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'EXP', 'Other', 1, 1, 1,
        'Gain 1 EXP.'
    );
    
    insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Skill Pack', 'Other', 2, 5, 5,
        'Receive up to 5 cards equal to its quality.'
    );
    
	insert into gear
    (gearName, gearType, gearQualityMin, gearQualityMax, gearFindRate, gearDef
    ) values (
		'Key', 'Other', 0, 0, 0,
        'Mission item.'
    );