local T, C, L, _ = unpack(select(2, ...))
if C.combattext.enable ~= true then return end

----------------------------------------------------------------------------------------
--	The best way to add or delete spell is to go at www.wowhead.com, search for a spell.
--	Example: Blizzard -> http://www.wowhead.com/spell=42208
--	Take the number ID at the end of the URL, and add it to the list
----------------------------------------------------------------------------------------
-- General filter outgoing healing
if C.combattext.healing then
	T.healfilter = {}
	T.healfilter[143924] = true		-- Leech
end

-- General merge outgoing damage
if C.combattext.merge_aoe_spam then
	T.merge = {}
	T.aoespam = {}
	T.aoespam[6603] = 3				-- Auto Attack
	T.aoespam[187626] = 1			-- Maalus (Legedary Ring)
	T.aoespam[187625] = 1			-- Nithramus (Legedary Ring)
	T.aoespam[187624] = 1			-- Thorasus (Legedary Ring)
	T.aoespam[184075] = 3			-- Doom Nova (Prophecy of Fear)
	T.aoespam[183950] = 3			-- Darklight Ray (Unblinking Gaze of Sethe)
	T.aoespam[184256] = 3			-- Fel Burn (Empty Drinking Horn)
	T.aoespam[184248] = 3			-- Fel Cleave (Discordant Chorus)
	T.aoespam[195222] = 4			-- Stormlash
	T.aoespam[195256] = 4			-- Stormlash
	T.aoespam[205729] = 3			-- Greater Blessing of Might
	T.aoespam[222197] = 0			-- Volatile Ichor (Unstable Horrorslime Trinket)
	T.aoespam[214350] = 3			-- Nightmare Essence (Oakheart's Gnarled Root Trinket)
	T.aoespam[230261] = 0			-- Flame Wreath (Aran's Relaxing Ruby Trinket)
end

-- Class config
if T.class == "DEATHKNIGHT" then
	if C.combattext.merge_aoe_spam then
		T.aoespam[55095] = 3		-- Frost Fever
		T.aoespam[55078] = 3		-- Blood Plague
		T.aoespam[50842] = 0		-- Blood Boil
		T.aoespam[49184] = 0		-- Howling Blast
		T.aoespam[52212] = 3		-- Death and Decay
		T.aoespam[50401] = 3		-- Razorice
		T.aoespam[91776] = 3		-- Claw (Ghoul)
		T.aoespam[49020] = 0		-- Obliterate
		T.aoespam[49143] = 0		-- Frost Strike
		T.aoespam[49998] = 0		-- Death Strike
		T.aoespam[156000] = 3		-- Defile
		T.aoespam[155166] = 3		-- Mark of Sindragosa
		T.aoespam[55090] = 0		-- Scourge Strike
		T.merge[66198] = 49020		-- Obliterate Off-Hand
		T.merge[66196] = 49143		-- Frost Strike Off-Hand
		T.merge[66188] = 49998		-- Death Strike Off-Hand
		T.merge[70890] = 55090		-- Scourge Strike (Shadow damage)
	end
	if C.combattext.healing then
		T.healfilter[53365] = true	-- Unholy Strength
		T.healfilter[119980] = true	-- Conversion
	end
elseif T.class == "DEMONHUNTER" then
	if C.combattext.merge_aoe_spam then
		-- T.aoespam[spellID] = 3		-- Spell Name
	end
elseif T.class == "DRUID" then
	if C.combattext.merge_aoe_spam then
		-- Healing spells
		T.aoespam[774] = 3			-- Rejuvenation
		T.aoespam[48438] = 3		-- Wild Growth
		T.aoespam[8936] = 3			-- Regrowth
		T.aoespam[33763] = 3		-- Lifebloom
		T.aoespam[157982] = 3		-- Tranquility
		T.aoespam[81269] = 3		-- Wild Mushroom
		T.aoespam[124988] = 3		-- Nature's Vigil
		T.aoespam[144876] = 3		-- Spark of Life (T16)
		T.aoespam[155777] = 3		-- Rejuvenation (Germination)
		-- Damaging spells
		T.aoespam[164812] = 3		-- Moonfire
		T.aoespam[164815] = 3		-- Sunfire
		T.aoespam[191037] = 3		-- Starfall
		T.aoespam[61391] = 0		-- Typhoon
		T.aoespam[155722] = 3		-- Rake
		T.aoespam[33917] = 0		-- Mangle
		T.aoespam[106785] = 0		-- Swipe
		T.aoespam[77758] = 3		-- Thrash (Bear Form)
		T.aoespam[106830] = 3		-- Thrash (Cat Form)
		T.aoespam[1079] = 3			-- Rip
		T.aoespam[124991] = 3		-- Nature's Vigil
		T.aoespam[202347] = 3		-- Stellar Flare
		T.aoespam[155625] = 3		-- Moonfire (Cat Form)
	end
	if C.combattext.healing then
		T.healfilter[145109] = true	-- Ysera's Gift (Self)
		T.healfilter[145110] = true	-- Ysera's Gift
		T.healfilter[202636] = true	-- Leader of the Pack
	end
elseif T.class == "HUNTER" then
	if C.combattext.merge_aoe_spam then
		T.aoespam[2643] = 0			-- Multi-Shot
		T.aoespam[118253] = 3		-- Serpent Sting
		T.aoespam[13812] = 3		-- Explosive Trap
		T.aoespam[212680] = 3		-- Explosive Shot
		T.aoespam[118459] = 3		-- Beast Cleave
		T.aoespam[120361] = 3		-- Barrage
		T.aoespam[131900] = 3		-- A Murder of Crows
		T.aoespam[194599] = 3		-- Black Arrow
		T.aoespam[162543] = 3		-- Poisoned Ammo
		T.aoespam[162541] = 3		-- Incendiary Ammo
		T.aoespam[34655] = 3		-- Deadly Poison (Trap)
		T.aoespam[93433] = 3		-- Burrow Attack (Worm)
		T.aoespam[92380] = 3		-- Froststorm Breath (Chimaera)
	end
elseif T.class == "MAGE" then
	if C.combattext.merge_aoe_spam then
		T.aoespam[217694] = 3.5		-- Living Bomb
		T.aoespam[44461] = 3		-- Living Bomb (AoE)
		T.aoespam[2120] = 0			-- Flamestrike
		T.aoespam[194432] = 0		-- Aftershocks
		T.aoespam[12654] = 3		-- Ignite
		T.aoespam[31661] = 0		-- Dragon's Breath
		T.aoespam[190356] = 3		-- Blizzard
		T.aoespam[122] = 0			-- Frost Nova
		T.aoespam[1449] = 0			-- Arcane Explosion
		T.aoespam[120] = 0			-- Cone of Cold
		T.aoespam[114923] = 3		-- Nether Tempest
		T.aoespam[114954] = 3		-- Nether Tempest (AoE)
		T.aoespam[7268] = 1.6		-- Arcane Missiles
		T.aoespam[113092] = 0		-- Frost Bomb
		T.aoespam[44425] = 0		-- Arcane Barrage
		T.aoespam[84721] = 3		-- Frozen Orb
		T.aoespam[148022] = 3		-- Icicle (Mastery)
		T.aoespam[31707] = 3		-- Waterbolt (Pet)
		T.aoespam[30455] = 0		-- Ice Lance
		T.aoespam[115611] = 6		-- Temporal Ripples
		T.aoespam[157981] = 1		-- Blast Wave
		T.aoespam[157997] = 1		-- Ice Nova
		T.aoespam[157980] = 1		-- Supernova
		T.aoespam[135029] = 3		-- Water Jet (Pet)
		T.aoespam[155152] = 3		-- Prismatic Crystal
		T.aoespam[153596] = 3		-- Comet Storm
		T.aoespam[153640] = 3		-- Arcane Orb
		T.aoespam[157977] = 0		-- Unstable Magic (Fire)
		T.aoespam[157978] = 0		-- Unstable Magic (Frost)
		T.aoespam[157979] = 0		-- Unstable Magic (Arcane)
		T.aoespam[153564] = 3		-- Meteor
		T.aoespam[155158] = 3		-- Meteor Burn
		T.aoespam[224637] = 1.6		-- Phoenix's Flames
		T.aoespam[205345] = 4		-- Conflagration Flare Up
		T.aoespam[226757] = 4		-- Conflagration
		T.aoespam[198928] = 1.2		-- Cinderstorm
		T.aoespam[194522] = 3		-- Blast Furnace
		T.aoespam[194316] = 3		-- Cauterizing Blink
		T.aoespam[88084] = 3		-- Arcane Blast (Mirror Image)
		T.aoespam[59638] = 3		-- Frostbolt (Mirror Image)
	end
elseif T.class == "MONK" then
	if C.combattext.merge_aoe_spam then
		-- Healing spells
		T.aoespam[119611] = 3		-- Renewing Mist
		T.aoespam[124682] = 3		-- Enveloping Mist
		T.aoespam[115175] = 3		-- Soothing Mist
		T.aoespam[107270] = 3		-- Spinning Crane Kick
		T.aoespam[132463] = 3		-- Chi Wave
		T.aoespam[130654] = 3		-- Chi Burst
		T.aoespam[124081] = 3		-- Zen Pulse
		T.aoespam[116670] = 0		-- Uplift
		T.aoespam[178173] = 3		-- Gift of the Ox
		-- Damaging spells
		T.aoespam[117952] = 3		-- Crackling Jade Lightning
		T.aoespam[117418] = 3		-- Fists of Fury
		T.aoespam[121253] = 0		-- Keg Smash
		T.aoespam[115181] = 0		-- Breath of Fire
		T.aoespam[123725] = 3		-- Breath of Fire (DoT)
		T.aoespam[107270] = 3		-- Spinning Crane Kick
		T.aoespam[123586] = 3		-- Flying Serpent Kick
		T.aoespam[132467] = 3		-- Chi Wave
		T.aoespam[148135] = 3		-- Chi Burst
		T.aoespam[158221] = 3		-- Hurricane Strike
	end
elseif T.class == "PALADIN" then
	if C.combattext.merge_aoe_spam then
		-- Healing spells
		T.aoespam[53652] = 3		-- Beacon of Light
		T.aoespam[85222] = 0		-- Light of Dawn
		T.aoespam[114163] = 3		-- Eternal Flame
		T.aoespam[114852] = 0		-- Holy Prism
		T.aoespam[119952] = 3		-- Arcing Light
		T.aoespam[144581] = 3		-- Blessing of the Guardians (T16)
		-- Damaging spells
		T.aoespam[81297] = 3		-- Consecration
		T.aoespam[53385] = 0		-- Divine Storm
		T.aoespam[88263] = 0		-- Hammer of the Righteous
		T.aoespam[31935] = .5		-- Avenger's Shield
		T.aoespam[114871] = 0		-- Holy Prism
		T.aoespam[114919] = 3		-- Arcing Light
		T.aoespam[213757] = 3		-- Execution Sentence
		T.aoespam[86704] = 0		-- Ancient Fury
		T.aoespam[157122] = 3		-- Holy Shield
		T.merge[53595] = 88263		-- Hammer of the Righteous
	end
elseif T.class == "PRIEST" then
	if C.combattext.merge_aoe_spam then
		-- Healing spells
		T.aoespam[47750] = 3		-- Penance
		T.aoespam[132157] = 0		-- Holy Nova
		T.aoespam[139] = 3			-- Renew
		T.aoespam[596] = 0			-- Prayer of Healing
		T.aoespam[64844] = 3		-- Divine Hymn
		T.aoespam[32546] = 3		-- Binding Heal
		T.aoespam[77489] = 3		-- Echo of Light
		T.aoespam[33110] = 3		-- Prayer of Mending
		T.aoespam[34861] = 3		-- Holy Word: Sanctify
		T.aoespam[81751] = 3		-- Atonement
		T.aoespam[120692] = 3		-- Halo
		T.aoespam[110745] = 3		-- Divine Star
		T.merge[94472] = 81751		-- Atonement
		-- Damaging spells
		T.aoespam[186723] = 3		-- Penance
		T.merge[47666] = 186723		-- Penance
		T.aoespam[132157] = 0		-- Holy Nova
		T.aoespam[589] = 3			-- Shadow Word: Pain
		T.aoespam[34914] = 3		-- Vampiric Touch
		T.aoespam[15407] = 3		-- Mind Flay
		T.aoespam[49821] = 3		-- Mind Sear
		T.aoespam[14914] = 3		-- Holy Fire
		T.aoespam[129250] = 3		-- Power Word: Solace
		T.aoespam[120696] = 3		-- Halo
		T.aoespam[122128] = 3		-- Divine Star
		T.aoespam[148859] = 3		-- Shadowy Apparition
	end
	if C.combattext.healing then
		T.healfilter[15290] = true	-- Vampiric Embrace
	end
elseif T.class == "ROGUE" then
	if C.combattext.merge_aoe_spam then
		T.aoespam[51723] = 0		-- Fan of Knives
		T.aoespam[2818] = 3			-- Deadly Poison
		T.aoespam[8680] = 3			-- Wound Poison
		T.aoespam[22482] = 3		-- Blade Flurry
		T.aoespam[16511] = 3		-- Hemorrhage
		T.aoespam[5374] = 0			-- Mutilate
		T.aoespam[86392] = 3		-- Main Gauche
		T.aoespam[57841] = 3		-- Killing Spree
		T.aoespam[1943] = 3			-- Rupture
		T.aoespam[152150] = 3		-- Death from Above
		T.aoespam[114014] = 3		-- Shuriken Toss
		T.aoespam[114014] = 3		-- Shuriken Toss
		T.merge[27576] = 5374		-- Mutilate Off-Hand
		T.merge[113780] = 2818		-- Deadly Poison
		T.merge[57842] = 57841		-- Killing Spree Off-Hand
	end
elseif T.class == "SHAMAN" then
	if C.combattext.merge_aoe_spam then
		-- Healing spells
		T.aoespam[73921] = 3		-- Healing Rain
		T.aoespam[52042] = 3		-- Healing Stream Totem
		T.aoespam[1064] = 3			-- Chain Heal
		T.aoespam[61295] = 3		-- Riptide
		T.aoespam[98021] = 3		-- Spirit Link
		T.aoespam[114911] = 3		-- Ancestral Guidance
		T.aoespam[114942] = 3		-- Healing Tide
		T.aoespam[114083] = 3		-- Restorative Mists
		T.aoespam[157503] = 1		-- Cloudburst
		-- Damaging spells
		T.aoespam[421] = 1			-- Chain Lightning
		T.merge[45297] = 421		-- Chain Lightning Overload
		T.aoespam[8349] = 0			-- Fire Nova
		T.aoespam[77478] = 3		-- Earhquake
		T.aoespam[51490] = 0		-- Thunderstorm
		T.aoespam[8187] = 3			-- Magma Totem
		T.aoespam[188389] = 3		-- Flame Shock
		T.aoespam[25504] = 3		-- Windfury Attack
		T.aoespam[10444] = 3		-- Flametongue Attack
		T.aoespam[3606] = 3			-- Searing Bolt
		T.aoespam[170379] = 3		-- Molten Earth
		T.aoespam[114074] = 1		-- Lava Beam
		T.aoespam[32175] = 0		-- Stormstrike
		T.merge[32176] = 32175		-- Stormstrike Off-Hand
		T.aoespam[114089] = 3		-- Windlash
		T.merge[114093] = 114089	-- Windlash Off-Hand
		T.aoespam[115357] = 0		-- Windstrike
		T.merge[115360] = 115357	-- Windstrike Off-Hand
		T.aoespam[192231] = 3		-- Liquid Magma
		T.aoespam[157331] = 3		-- Wind Gust
	end
elseif T.class == "WARLOCK" then
	if C.combattext.merge_aoe_spam then
		T.aoespam[27243] = 3		-- Seed of Corruption
		T.aoespam[27285] = 3		-- Seed of Corruption (AoE)
		T.aoespam[146739] = 3		-- Corruption
		T.aoespam[30108] = 3		-- Unstable Affliction
		T.aoespam[348] = 3			-- Immolate
		T.aoespam[980] = 3			-- Agony
		T.aoespam[63106] = 3		-- Siphon Life
		T.aoespam[205246] = 3		-- Phantom Singularity
		T.aoespam[80240] = 3		-- Havoc
		T.aoespam[42223] = 3		-- Rain of Fire
		T.aoespam[689] = 3			-- Drain Life
		T.aoespam[198590] = 3		-- Drain Soul
		T.aoespam[86040] = 3		-- Hand of Gul'dan
		T.aoespam[205181] = 3		-- Shadowflame
		T.aoespam[30213] = 3		-- Legion Strike (Felguard)
		T.aoespam[89753] = 3		-- Felstorm (Felguard)
		T.aoespam[20153] = 3		-- Immolation (Infrenal)
		T.aoespam[22703] = 0		-- Infernal Awakening
		T.aoespam[171017] = 0		-- Meteor Strike (Infrenal)
		T.aoespam[104318] = 3		-- Fel Firebolt
		T.aoespam[3110] = 3			-- Firebolt (Imp)
		T.aoespam[152108] = 1		-- Cataclysm
		T.aoespam[171018] = 1		-- Meteor Strike
		T.aoespam[85692] = 3		-- Doom Bolt (Doomguard)
		T.aoespam[54049] = 3		-- Shadow Bite (Felhunter)
		T.aoespam[6262] = 3			-- Healthstone
		T.aoespam[3716] = 3			-- Torment (Voidwalker)
		T.merge[157736] = 348		-- Immolate (DoT)
	end
	if C.combattext.healing then
		T.healfilter[63106] = true	-- Siphon Life
		T.healfilter[689] = true	-- Drain Life
		T.healfilter[108359] = true	-- Dark Regeneration
	end
elseif T.class == "WARRIOR" then
	if C.combattext.merge_aoe_spam then
		T.aoespam[46968] = 0		-- Shockwave
		T.aoespam[6343] = 0			-- Thunder Clap
		T.aoespam[1680] = 0			-- Whirlwind
		T.aoespam[115767] = 3		-- Deep Wounds
		T.aoespam[50622] = 3		-- Bladestorm
		T.aoespam[52174] = 0		-- Heroic Leap
		T.aoespam[118000] = 0		-- Dragon Roar
		T.aoespam[203178] = 3		-- Opportunity Strike
		T.aoespam[113344] = 3		-- Bloodbath
		T.aoespam[96103] = 0		-- Raging Blow
		T.aoespam[6572] = 0			-- Revenge
		T.aoespam[5308] = 0			-- Execute
		T.aoespam[772] = 3			-- Rend
		T.aoespam[156287] = 3		-- Ravager
		T.merge[44949] = 1680		-- Whirlwind Off-Hand
		T.merge[85384] = 96103		-- Raging Blow Off-Hand
		T.merge[95738] = 50622		-- Bladestorm Off-Hand
		T.merge[163558] = 5308		-- Execute Off-Hand
	end
	if C.combattext.healing then
		T.healfilter[117313] = true	-- Bloodthirst Heal
		--BETA T.healfilter[159363] = true	-- Blood Craze
	end
end