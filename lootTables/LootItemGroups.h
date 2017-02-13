/*
	///////////////////////////////////////////////////////////////////////////////
	// Class Names
	///////////////////////////////////////////////////////////////////////////////
	Remember that item class names, group names and loot table names cannot 
	contain spaces. Also be 100% sure to have the exact same name as in Arma,
	as they are *case sensive*.
	///////////////////////////////////////////////////////////////////////////////
	// Item Groups
	///////////////////////////////////////////////////////////////////////////////
	You can link one group of items to loot tables.
	One item should only be in one group.
	Syntax:
	> <Group Name>
	<Spawn Chance Within Group>,<Item Class Name>
	///////////////////////////////////////////////////////////////////////////////
	// Probability
	///////////////////////////////////////////////////////////////////////////////
	<Spawn Chance>,<Item>
	10, Banana
	20, Tomato
	30, Cherry
	Sum of chances:
	10 + 20 + 30 = 60 = 100%
	Spawn chances:
	Banana	10 : 60 = 10 * 100 / 60 = 16.67%
	Tomato	20 : 60 = 20 * 100 / 60 = 33.33%
	Cherry	30 : 60 = 30 * 100 / 60 = 50%
	In words: 
	If Exile should spawn an item of the above group, it has a 33.33%
	chance to spawn a Tomato.
*/
	
/*
	Item Groups
*/

///////////////////////////////////////////////////////////////////////////////
// Food & Drinks
///////////////////////////////////////////////////////////////////////////////

> Food
3, Exile_Item_CookingPot
5, Exile_Item_CanOpener
5, Exile_Item_Matches
3, Exile_Item_EMRE						// 75% Hunger
6, Exile_Item_GloriousKnakworst			// 60% Hunger
7, Exile_Item_Surstromming				// 55% Hunger
7, Exile_Item_SausageGravy				// 50% Hunger
7, Exile_Item_ChristmasTinner			// 40% Hunger
7, Exile_Item_MacasCheese				// 40% Hunger
7, Exile_Item_BBQSandwich				// 40% Hunger
7, Exile_Item_CatFood					// 40% Hunger
7, Exile_Item_Dogfood					// 30% Hunger
7, Exile_Item_BeefParts					// 30% Hunger
7, Exile_Item_Cheathas					// 30% Hunger
7, Exile_Item_DsNuts					// 30% Hunger
7, Exile_Item_Noodles					// 25% Hunger
8, Exile_Item_CockONut					// 20% Hunger
8, Exile_Item_SeedAstics				// 20% Hunger
9, Exile_Item_Raisins					// 15% Hunger
9, Exile_Item_Moobar					// 10% Hunger
11, Exile_Item_InstantCoffee			//  5% Hunger

> Drinks
7, Exile_Item_PowerDrink					// +95% Thirst
12, Exile_Item_PlasticBottleFreshWater		// +80% Thirst
14, Exile_Item_Beer							// +75% Thirst
17, Exile_Item_EnergyDrink					// +75% Thirst
20, Exile_Item_MountainDupe					// +50% Thirst, spawns always twice!	
25, Exile_Item_ChocolateMilk				// +35% Thirst
30, Exile_Item_PlasticBottleDirtyWater		// +10% Thirst


///////////////////////////////////////////////////////////////////////////////
// Weapons & Attachments
///////////////////////////////////////////////////////////////////////////////

> Pistols
20, rhsusf_weap_m9			// ACP-C2 .45
21, rhs_weap_makarov_pm				// Makarov
20, rhs_weap_pya			// Rook-40 9 mm
13, hgun_Pistol_heavy_01_F	// 4-five .45
13, hgun_Pistol_heavy_02_F	// Zubr .45
13, rhsusf_weap_glock17g4	// 
13, rhsusf_weap_m1911a1   // Colt 1911

13, hgun_Pistol_01_F		// PM 9 mm
5, rhs_weap_rsp30_green	// Taurus (Gold)
5, rhs_weap_rsp30_red			// P07 9 mm (Khaki)

> PistolAmmo
20, rhs_mag_9x19mm_7n31_20				// 4-five
20, 30Rnd_9x21_Mag				// Sting, PDW2000, P07, ROOK-40
16, 6Rnd_45ACP_Cylinder			// Zubr
//7, 6Rnd_GreenSignal_F			// Starter Pistol
//7, 6Rnd_RedSignal_F				// Starter Pistol 
20, 9Rnd_45ACP_Mag				// ACP-C2
20, Exile_Magazine_7Rnd_45ACP	// Colt 1911
20, rhs_mag_9x18_8_57N181S	// Makarov
//20, Exile_Magazine_6Rnd_45ACP	// Taurus
20, 10Rnd_9x21_Mag				// PM 9 mm
15, rhsusf_mag_7x45acp_MHP
10, rhsusf_mag_17Rnd_9x19_FMJ
10, rhsusf_mag_17Rnd_9x19_JHP
10, rhsusf_mag_15Rnd_9x19_FMJ
10, rhsusf_mag_15Rnd_9x19_JHP

> PistolAttachments
36, muzzle_snds_L
36, muzzle_snds_acp
14, optic_Yorris		// No one needs this crap
14, optic_MRD

> CivilianWeapons
//5, Exile_Weapon_M1014	//M1014
//1, arifle_AKM_F
10, Exile_Weapon_LeeEnfield
//2, Exile_Weapon_AK74
//3, arifle_AKS_F
1, Exile_Weapon_CZ550
//2, rhs_weap_M590_5RD
8, rhs_weap_M590_8RD
10, rhs_weap_m38
5, rhs_weap_m38_rail
6, rhs_weap_kar98k

> CivilianAmmo
15, Exile_Magazine_10Rnd_303					// Lee-Enfield
3, rhs_30Rnd_545x39_AK		// AK
4, rhs_30Rnd_545x39_AK_no_tracers		// AK
12, Exile_Magazine_5Rnd_22LR					// CZ550
9, rhsgref_5Rnd_792x57_kar98k				// kar98k
5, rhsgref_10Rnd_792x57_m76				// kar98k
25, rhsgref_5Rnd_762x54_m38				// mosin
9, rhs_30Rnd_762x39mm						// AK-12, AKM
9, rhs_30Rnd_762x39mm_tracer                 // AK-12, AKM
9, rhs_30Rnd_762x39mm_89                // AK-12, AKM
8, rhs_mag_30Rnd_556x45_M855A1_Stanag

> ShotgunAmmo
//1, Exile_Magazine_8Rnd_74Slug		//M1014
//rhsusf_5Rnd_00Buck
10, rhsusf_8Rnd_00Buck
//rhsusf_5Rnd_Slug
10, rhsusf_8Rnd_Slug
//rhsusf_5Rnd_HE
1, rhsusf_8Rnd_HE
//rhsusf_5Rnd_FRAG
//rhsusf_8Rnd_FRAG

> SMG
25, SMG_01_F		// Vermin SMG .45 ACP
25, SMG_02_F		// Sting 9 mm
25, SMG_05_F		// Protector 9mm
25, hgun_PDW2000_F	// PDW2000 9 mm
25, rhs_weap_pp2000

> SMGAmmo
50, 30Rnd_45ACP_Mag_SMG_01					// Vermin SMG
50, 30Rnd_45ACP_Mag_SMG_01_Tracer_Green		// Vermin SMG
50, 30Rnd_9x21_Mag_SMG_02					// Sting, Protector
50, 30Rnd_9x21_Mag_SMG_02_Tracer_Red        // Sting, Protector
50, 30Rnd_9x21_Mag_SMG_02_Tracer_Yellow     // Sting, Protector
50, 30Rnd_9x21_Mag_SMG_02_Tracer_Green      // Sting, Protector
25, rhs_mag_9x19mm_7n21_44
25, rhs_mag_9x19mm_7n31_44

> SMGAttachments
20, optic_Holosight_smg
20, optic_Holosight_smg_blk_F
20, optic_ACO_grn_smg
20, optic_Aco_smg
20, optic_ACO_grn
20, optic_Aco

/*
> Rifles
3, arifle_Katiba_F			// Katiba 6.5 mm
3, arifle_Katiba_GL_F		// Katiba GL 6.5 mm
8, arifle_MXC_F				// MXC 6.5 mm
8, arifle_MX_F				// MX 6.5 mm
4, arifle_MX_GL_F			// MX 3GL 6.5 mm
6, arifle_MXM_F				// MXM 6.5 mm
3, arifle_MXM_Black_F		// MXM 6.5 mm (Black)
6, arifle_SDAR_F			// SDAR 5.56 mm
8, arifle_TRG21_F			// TRG-21 5.56 mm
8, arifle_TRG20_F			// TRG-20 5.56 mm
4, arifle_TRG21_GL_F		// TRG-21 EGLM 5.56 mm
7, arifle_Mk20_F			// Mk20 5.56 mm
7, arifle_Mk20C_F			// Mk20C 5.56 mm
4, arifle_Mk20_GL_F			// Mk20 EGLM 5.56 mm
3, arifle_MXC_Black_F		// MXC 6.5 mm (Black)
3, arifle_MX_Black_F		// MX 6.5 mm (Black)
3, arifle_MX_GL_Black_F		// MX 3GL 6.5 mm (Black)
5, Exile_Weapon_AK107	
5, Exile_Weapon_AK107_GL	
5, Exile_Weapon_AK74_GL
5, Exile_Weapon_AK74
//5, Exile_Weapon_AK47				
//5, Exile_Weapon_AKS_Gold	
5, Exile_Weapon_DMR		
5, Exile_Weapon_LeeEnfield
5, Exile_Weapon_CZ550
5, Exile_Weapon_SVD
3, Exile_Weapon_SVDCamo
//5, Exile_Weapon_VSSVintorez
8, arifle_MX_khk_F   			// MX 6.5 mm (Khaki)
4, arifle_MX_GL_khk_F			// MX 3GL 6.5 mm (Khaki)
8, arifle_MXC_khk_F  			// MXC 6.5 mm (Khaki)
3, arifle_MXM_khk_F  			// MXM 6.5 mm (Khaki)
5, arifle_AK12_F          		// AK-12 7.62 mm
3, arifle_AK12_GL_F             // AK-12 GL 7.62 mm
5, arifle_AKM_F                 // AKM 7.62 mm
5, arifle_AKM_FL_F              // AKM 7.62 mm
3, arifle_AKS_F                 // AKS
4, arifle_ARX_blk_F             // Type 115 6.5 mm (Black)
4, arifle_ARX_ghex_F            // Type 115 6.5 mm (Green Hex)
4, arifle_ARX_hex_F             // Type 115 6.5 mm (Hex)
5, arifle_CTAR_blk_F            // CAR-95 5.8 mm (Black)
5, arifle_CTAR_hex_F			// CAR-95 5.8 mm (Hex)
5, arifle_CTAR_ghex_F			// CAR-95 5.8 mm (Green Hex)
5, arifle_CTAR_GL_blk_F         // CAR-95 GL 5.8 mm (Black)
5, arifle_SPAR_01_blk_F         // SPAR-16 5.56 mm (Black)
5, arifle_SPAR_01_khk_F         // SPAR-16 5.56 mm (Khaki)
5, arifle_SPAR_01_snd_F         // SPAR-16 5.56 mm (Sand)
5, arifle_SPAR_01_GL_blk_F      // SPAR-16 GL 5.56 mm (Black)
5, arifle_SPAR_01_GL_khk_F      // SPAR-16 GL 5.56 mm (Khaki)
5, arifle_SPAR_01_GL_snd_F      // SPAR-16 GL 5.56 mm (Sand)

*/
/*
> RifleAmmo
//11, 20Rnd_556x45_UW_mag						// SDAR
//15, 30Rnd_556x45_Stanag						// TRG-20, TRG-21/EGLM, Mk20/C/EGLM, SDAR, SPAR-16
//15, 30Rnd_556x45_Stanag_green				// TRG-20, TRG-21/EGLM, Mk20/C/EGLM, SDAR, SPAR-16
//15, 30Rnd_556x45_Stanag_red					// TRG-20, TRG-21/EGLM, Mk20/C/EGLM, SDAR, SPAR-16
//9, 30Rnd_556x45_Stanag_Tracer_Green			// TRG-20, TRG-21/EGLM, Mk20/C/EGLM, SDAR, SPAR-16
//9, 30Rnd_556x45_Stanag_Tracer_Red			// TRG-20, TRG-21/EGLM, Mk20/C/EGLM, SDAR, SPAR-16
//9, 30Rnd_556x45_Stanag_Tracer_Yellow		// TRG-20, TRG-21/EGLM, Mk20/C/EGLM, SDAR, SPAR-16
//15, 30Rnd_65x39_caseless_green				// Katiba, Type 115
//9, 30Rnd_65x39_caseless_green_mag_Tracer	// Katiba, Type 115
//9, 30Rnd_65x39_caseless_mag					// MX/C/M/SW/3GL
//9, 30Rnd_65x39_caseless_mag_Tracer			// MX/C/M/SW/3GL
8, Exile_Magazine_10Rnd_303					// Lee-Enfield
//9, Exile_Magazine_30Rnd_762x39_AK			// AK
//9, Exile_Magazine_30Rnd_545x39_AK			// AK
9, rhs_30Rnd_545x39_AK		// AK
9, rhs_30Rnd_545x39_AK_no_tracers		// AK
//9, Exile_Magazine_30Rnd_545x39_AK_White		// AK
//9, Exile_Magazine_30Rnd_545x39_AK_Yellow	// AK
//9, Exile_Magazine_20Rnd_762x51_DMR			// DMR
//9, Exile_Magazine_20Rnd_762x51_DMR_Yellow	// DMR
//9, Exile_Magazine_20Rnd_762x51_DMR_Red		// DMR
//9, Exile_Magazine_20Rnd_762x51_DMR_Green	// DMR
//9, Exile_Magazine_20Rnd_762x51_DMR_White	// DMR
9, Exile_Magazine_5Rnd_22LR					// CZ550
9, rhsgref_5Rnd_792x57_kar98k				// kar98k
9, rhsgref_10Rnd_792x57_m76				// kar98k
9, rhsgref_5Rnd_762x54_m38				// mosin
9, rhs_30Rnd_762x39mm						// AK-12, AKM
9, rhs_30Rnd_762x39mm_tracer                 // AK-12, AKM
9, rhs_30Rnd_762x39mm_89                // AK-12, AKM
9, 30Rnd_762x39_Mag_Tracer_Green_F          // AK-12, AKM
9, 30Rnd_762x39_AK47_M						// AKS
9, 30Rnd_545x39_Mag_F						// AKS
9, 30Rnd_545x39_Mag_Green_F					// AKS
9, 30Rnd_545x39_Mag_Tracer_F				// AKS
9, 30Rnd_545x39_Mag_Tracer_Green_F			// AKS
5, 10Rnd_50BW_Mag_F							// Type 115
9, 30Rnd_580x42_Mag_F						// CAR-95
9, 30Rnd_580x42_Mag_Tracer_F				// CAR-95
*/


> RifleAttachments
/*10, muzzle_snds_M
10, muzzle_snds_H
10, muzzle_snds_H_khk_F
10, muzzle_snds_H_snd_F
10, muzzle_snds_58_blk_F
10, muzzle_snds_m_khk_F
10, muzzle_snds_m_snd_F
10, muzzle_snds_58_wdm_F
10, muzzle_snds_65_TI_blk_F
10, muzzle_snds_65_TI_hex_F
10, muzzle_snds_65_TI_ghex_F
10, muzzle_snds_H_MG_blk_F
10, muzzle_snds_H_MG_khk_F
*/
10, optic_Arco
10, optic_Arco_blk_F
10, optic_Arco_ghex_F
15, optic_Hamr
15, optic_Hamr_khk_F
//10, optic_Holosight
//10, optic_Holosight_blk_F
//10, optic_Holosight_khk_F
//14, acc_flashlight
10, acc_pointer_IR
10, optic_MRCO
10, optic_DMS
10, optic_DMS_ghex_F
5, optic_ERCO_blk_F
5, optic_ERCO_khk_F
5, optic_ERCO_snd_F
//5, optic_NVS
//1, optic_tws

> RiflesAFRF
6, rhs_weap_ak74m
2, rhs_weap_ak74m_gp25
1, rhs_weap_ak74m_gp25_npz
5, rhs_weap_ak74m_plummag
4, rhs_weap_ak74m_fullplum
2, rhs_weap_ak74m_fullplum_npz
4, rhs_weap_ak74m_zenitco01
4, rhs_weap_ak74m_zenitco01_grip1
3, rhs_weap_ak74m_zenitco01_npz
3, rhs_weap_ak74m_zenitco01_npz_grip1
3, rhs_weap_ak74m_zenitco01_b33
2, rhs_weap_ak74m_zenitco01_b33_grip1
5, rhs_weap_ak74m_camo
3, rhs_weap_ak74m_camo_npz
3, rhs_weap_ak74m_desert_npz
2, rhs_weap_ak74mr
2, rhs_weap_ak74mr_grip1
1, rhs_weap_ak74mr_gp25
6, rhs_weap_ak105
4, rhs_weap_ak105_zenitco01
4, rhs_weap_ak105_zenitco01_grip1
3, rhs_weap_ak105_zenitco01_npz
3, rhs_weap_ak105_zenitco01_b33
2, rhs_weap_ak105_zenitco01_b33_afg
8, rhs_weap_akm
7, rhs_weap_akms
3, rhs_weap_akms_gp25
5, rhs_weap_ak103
2, rhs_weap_ak103_gp25
1, rhs_weap_ak103_gp25_npz
4, rhs_weap_ak104
2, rhs_weap_ak104_zenitco01
2, rhs_weap_ak104_zenitco01_npz_grip1
2, rhs_weap_ak104_zenitco01_b33_grip1
7, rhs_weap_aks74
3, rhs_weap_aks74_gp25
5, rhs_weap_aks74n
2, rhs_weap_aks74n_npz
2, rhs_weap_aks74n_gp25
7, rhs_weap_aks74u
3, rhs_weap_aks74un
1, rhs_weap_asval

> RifleAmmoAFRF
15, rhs_30Rnd_545x39_AK
13, rhs_30Rnd_545x39_AK_no_tracers
12, rhs_30Rnd_545x39_AK_green
12, rhs_30Rnd_545x39_7N6_AK
10, rhs_30Rnd_545x39_7N10_AK
6, rhs_30Rnd_545x39_7N22_AK //AP
2, rhs_30Rnd_545x39_7U1_AK //subsonic
1, rhs_20rnd_9x39mm_SP5 //asval

//40mm flares
2, rhs_VG40OP_white
2, rhs_VG40OP_green
2, rhs_VG40OP_red

//40mm smoke
1, rhs_GRD40_White
1, rhs_GRD40_Green
1, rhs_GRD40_Red
1, rhs_VG40MD_White
1, rhs_VG40MD_Green
1, rhs_VG40MD_Red

>AttachmentsAFRF

4, rhs_bipod
10, rhs_acc_2dpZenit
6, rhs_acc_2dpZenit_ris
1, rhs_acc_perst1ik
1, rhs_acc_perst1ik_ris
1, rhs_acc_perst3
1, rhs_acc_perst3_top
8, rhs_acc_grip_rk2
8, rhs_acc_grip_rk6
8, rhs_acc_grip_ffg2
1, rhs_acc_dtk4short
1, rhs_acc_tgpa	//suppressor
1, rhs_acc_pbs1	//suppressor
1, rhs_acc_tgpv	//suppressor
1, rhs_acc_pbs4	//suppressor
3, rhs_acc_dtk4long
3, rhs_acc_dtk4screws
3, rhs_acc_muzzleFlash_dtk
3, rhs_acc_dtk3
3, rhs_acc_dtk1
3, rhs_acc_dtk
3, rhs_acc_dtk1983
3, rhs_acc_dtk1l
3, rhs_acc_ak5
7, rhs_acc_1p29
6, rhs_acc_1p78
10, rhs_acc_pkas
10, rhs_acc_1p63
4, rhs_acc_rakursPM
2, rhs_acc_ekp1
2, rhs_acc_ekp1b
2, rhs_acc_ekp1c
2, rhs_acc_ekp1d
10, rhs_acc_npz
5, rhs_acc_pso1m2
2, rhs_acc_pso1m21	//VSS
//10, rhs_acc_pgo7v
//1, rhs_acc_1pn93_1
//1, rhs_acc_1pn93_2

/*
> LMG
12, arifle_MX_SW_Black_F	// MX SW 6.5 mm (Black)
12, arifle_MX_SW_F			// MX SW 6.5 mm
25, LMG_Mk200_F				// Mk200 6.5 mm
25, LMG_Zafir_F				// Zafir 7.62 mm
//25, Exile_Weapon_RPK
//25, Exile_Weapon_PK
//25, Exile_Weapon_PKP
25, LMG_03_F				//= LIM-85 5.56 mm
15, arifle_CTARS_blk_F           // CAR-95-1 5.8mm (Black)
15, arifle_CTARS_ghex_F			// CAR-95-1 5.8mm (Green Hex)
15, arifle_CTARS_hex_F			// CAR-95-1 5.8mm (Hex)
15, arifle_SPAR_02_blk_F         // SPAR-16S 5.56 mm (Black)
15, arifle_SPAR_02_khk_F         // SPAR-16S 5.56 mm (Khaki)
15, arifle_SPAR_02_snd_F         // SPAR-16S 5.56 mm (Sand)


> LMGAmmo
12, 100Rnd_65x39_caseless_mag			// MX SW
10, 100Rnd_65x39_caseless_mag_Tracer	// MX SW
12, 150Rnd_762x54_Box					// Zafir
10, 150Rnd_762x54_Box_Tracer			// Zafir
5, 130Rnd_338_Mag
15, 150Rnd_93x64_Mag
10, Exile_Magazine_45Rnd_545x39_RPK_Green
10, Exile_Magazine_75Rnd_545x39_RPK_Green
10, Exile_Magazine_100Rnd_762x54_PK_Green
10, 200Rnd_65x39_Belt					// Mk200
10, 200Rnd_65x39_Belt_Tracer_Green	// Mk200
10, 200Rnd_65x39_Belt_Tracer_Red		// Mk200
10, 200Rnd_65x39_Belt_Tracer_Yellow	// Mk200
10, 200Rnd_556x45_Box_F				// LIM-85 	
10, 200Rnd_556x45_Box_Red_F         // LIM-85	
10, 200Rnd_556x45_Box_Tracer_F      // LIM-85	
10, 200Rnd_556x45_Box_Tracer_Red_F  // LIM-85	
20, 100Rnd_580x42_Mag_F						// CAR-95-1
20, 100Rnd_580x42_Mag_Tracer_F				// CAR-95-1
20, 150Rnd_556x45_Drum_Mag_F					// SPAR-16S 
20, 150Rnd_556x45_Drum_Mag_Tracer_F			// SPAR-16S 
*/

> LMGAFRF
50, rhs_weap_pkm
50, rhs_weap_pkp

> LMGAmmoAFRF
30, rhs_100Rnd_762x54mmR
30, rhs_100Rnd_762x54mmR_green
20, rhs_100Rnd_762x54mmR_7N13
20, rhs_100Rnd_762x54mmR_7N26


> Snipers
25, srifle_DMR_01_F			// Rahim 7.62 mm
25, srifle_EBR_F			// Mk18 ABR 7.62 mm
1, srifle_GM6_F				// GM6 Lynx 12.7 mm
1, srifle_LRR_F				// M320 LRR .408
22, srifle_LRR_tna_F    	// M320 LRR .408 (Tropic)
1, srifle_GM6_ghex_F   		// GM6 Lynx 12.7 mm (Green Hex)
10, srifle_DMR_07_blk_F     // CMR-76 6.5 mm (Black)
10, srifle_DMR_07_hex_F     // CMR-76 6.5 mm (Hex)
10, srifle_DMR_07_ghex_F    // CMR-76 6.5 mm (Green Hex)
10, arifle_SPAR_03_blk_F         // SPAR-17 7.62 mm (Black)
10, arifle_SPAR_03_khk_F         // SPAR-17 7.62 mm (Khaki)
10, arifle_SPAR_03_snd_F         // SPAR-17 7.62 mm (Sand)

> SnipersAFRF
25, rhs_weap_svd
20, rhs_weap_svdp
17, rhs_weap_svdp_npz
15, rhs_weap_svdp_wd
13, rhs_weap_svdp_wd_npz
10, rhs_weap_t5000
10, rhs_weap_vss

> SniperAmmoAFRF
75, rhs_10Rnd_762x54mmR_7N1
25, rhs_5Rnd_338lapua_t5000
15, rhs_10rnd_9x39mm_SP5
10, rhs_10rnd_9x39mm_SP6

> SniperAttachmentsAFRF
85, rhs_acc_pso1m2
15, rhs_acc_dh520x56
15, rhs_acc_pso1m21


> SniperAmmo
10, 5Rnd_127x108_Mag									// GM6 Lynx
10, 7Rnd_408_Mag										// M320 LRR
17, 10Rnd_762x54_Mag									// Rahim
19, 20Rnd_762x51_Mag									// Mk18 ABR
8, 5Rnd_127x108_APDS_Mag								// GM6 Lynx 
21, 20Rnd_650x39_Cased_Mag_F							// CMR-76
2, Exile_Magazine_5Rnd_127x108_Bullet_Cam_Mag 			// GM6 Lynx 12.7 mm
5, Exile_Magazine_10Rnd_93x64_DMR_05_Bullet_Cam_Mag 	// Cyrus 9.3mm	
3, Exile_Magazine_7Rnd_408_Bullet_Cam_Mag 				// M320 LRR .408	
5, Exile_Magazine_10Rnd_338_Bullet_Cam_Mag 				// MAR-10 .338	

> SniperAttachments
//19, muzzle_snds_B
//10, muzzle_snds_B_khk_F
//10, muzzle_snds_B_snd_F
//1, optic_tws
//1, optic_tws_mg
27, optic_DMS
26, optic_SOS
26, optic_SOS_khk_F
26, optic_LRPS
26, optic_LRPS_tna_F
26, optic_LRPS_ghex_F

/*> DLCRifles
// To overpowered. Do not use in vanilla Exile
1, MMG_01_hex_F				//Navid
1, MMG_01_tan_F				//Navid
1, MMG_02_black_F				//SPMG
1, MMG_02_camo_F				//SPMG
1, MMG_02_sand_F				//SPMG
4, srifle_DMR_02_camo_F			//MAR10
4, srifle_DMR_02_F				//MAR10
4, srifle_DMR_02_sniper_F		//MAR10
3, srifle_DMR_03_F				//MK1EMR
3, srifle_DMR_03_khaki_F		//MK1EMR
3, srifle_DMR_03_tan_F			//MK1EMR
3, srifle_DMR_03_woodland_F		//MK1EMR
6, srifle_DMR_04_F				//ASP1KIR
6, srifle_DMR_04_Tan_F			//ASP1KIR
4, srifle_DMR_05_blk_F			//CYRUS
4, srifle_DMR_05_hex_F			//CYRUS
4, srifle_DMR_05_tan_F			//CYRUS
6, srifle_DMR_06_camo_F			//Mk14
6, srifle_DMR_06_olive_F		//Mk14

> DLCAmmo
//18, 150Rnd_93x64_Mag		//Navid
//25, 130Rnd_338_Mag			//SPMG
16, 10Rnd_338_Mag			//MAR10
11, 20Rnd_762x51_Mag		//MK1EMR
14, 10Rnd_127x54_Mag		//ASP1KIR
16, 10Rnd_93x64_DMR_05_Mag	//CYRUS
*/
> DLCOptics
14, optic_AMS
14, optic_AMS_khk
14, optic_AMS_snd
14, optic_KHS_blk
14, optic_KHS_hex
14, optic_KHS_old
14, optic_KHS_tan
/*
> DLCSupressor
40, muzzle_snds_338_black
40, muzzle_snds_338_green
40, muzzle_snds_338_sand
40, muzzle_snds_93mmg
40, muzzle_snds_93mmg_tan
40, muzzle_snds_B

> EpicWeapons
6, MMG_01_hex_F				//Navid
6, MMG_01_tan_F				//Navid
4, MMG_02_black_F			//SPMG
4, MMG_02_camo_F			//SPMG
4, MMG_02_sand_F			//SPMG
*/
> Bipods
17, bipod_03_F_oli
17, bipod_03_F_blk
17, bipod_02_F_tan
16, bipod_02_F_hex
17, bipod_02_F_blk
17, bipod_01_F_snd
16, bipod_01_F_mtp
17, bipod_01_F_blk
17, bipod_01_F_khk

/*
> HEGrenades
67, 1Rnd_HE_Grenade_shell
33, 3Rnd_HE_Grenade_shell

> UGLFlares
8, 3Rnd_UGL_FlareGreen_F
8, 3Rnd_UGL_FlareRed_F
8, 3Rnd_UGL_FlareWhite_F
8, 3Rnd_UGL_FlareYellow_F
17, UGL_FlareGreen_F
17, UGL_FlareRed_F
17, UGL_FlareWhite_F
17, UGL_FlareYellow_F
// No Infrared for now
//UGL_FlareCIR_F
//3Rnd_UGL_FlareCIR_F

> UGLSmokes
10, 1Rnd_Smoke_Grenade_shell
10, 1Rnd_SmokeBlue_Grenade_shell
10, 1Rnd_SmokeGreen_Grenade_shell
10, 1Rnd_SmokeOrange_Grenade_shell
10, 1Rnd_SmokePurple_Grenade_shell
10, 1Rnd_SmokeRed_Grenade_shell
10, 1Rnd_SmokeYellow_Grenade_shell
4, 3Rnd_Smoke_Grenade_shell
4, 3Rnd_SmokeBlue_Grenade_shell
4, 3Rnd_SmokeGreen_Grenade_shell
4, 3Rnd_SmokeOrange_Grenade_shell
4, 3Rnd_SmokePurple_Grenade_shell
4, 3Rnd_SmokeRed_Grenade_shell
4, 3Rnd_SmokeYellow_Grenade_shell
*/

> HandGrenades
10, rhs_mag_rgd5
10, rhs_mag_rgn
10, rhs_mag_rgo
10, rhs_mag_m67
10, rhs_mag_m69
10, rhs_mag_mk84
10, rhs_mag_f1	//GREF

> Flares
33, rhs_mag_nspn_green
33, rhs_mag_nspn_red
33, rhs_mag_nspn_yellow

> Explosives
12, DemoCharge_Remote_Mag
12, IEDUrbanSmall_Remote_Mag
12, IEDLandSmall_Remote_Mag
20, APERSMine_Range_Mag
20, APERSBoundingMine_Range_Mag
20, APERSTripMine_Wire_Mag
4, SatchelCharge_Remote_Mag

///////////////////////////////////////////////////////////////////////////////
// Clothing & Gear
///////////////////////////////////////////////////////////////////////////////

//Civilian

> CivilianItems
30, ItemWatch
30, ItemRadio
20, ItemGPS
20, Binocular
//40, Exile_Item_Heatpack
35, ItemMap
//5, Exile_Item_MobilePhone
//2, Exile_Item_SleepingMat

> CivilianClothing
9, U_C_Poor_1
9, U_C_Poor_2
9, U_C_Poor_shorts_1
9, U_C_HunterBody_grn
7, U_C_Poloshirt_salmon
7, U_C_Poloshirt_tricolour
7, U_C_Poloshirt_stripped
7, U_C_Poloshirt_burgundy
7, U_C_Poloshirt_blue
9, U_C_Journalist
9, U_C_Scientist
9, U_Rangemaster
1, U_OrestesBody
1, U_NikosBody
1, U_NikosAgedBody
5, U_I_C_Soldier_Bandit_1_F         // Bandit Clothes (Polo Shirt)
5, U_I_C_Soldier_Bandit_2_F         // Bandit Clothes (Skull)
5, U_I_C_Soldier_Bandit_3_F         // Bandit Clothes (Tee)
5, U_I_C_Soldier_Bandit_4_F         // Bandit Clothes (Checkered)
5, U_I_C_Soldier_Bandit_5_F         // Bandit Clothes (Tank Top)
5, U_C_man_sport_1_F                // Sport Clothes (Beach)
5, U_C_man_sport_2_F                // Sport Clothes (Orange)
5, U_C_man_sport_3_F                // Sport Clothes (Blue)
5, U_C_Man_casual_1_F               // Casual Clothes (Navy)
5, U_C_Man_casual_2_F               // Casual Clothes (Blue)
5, U_C_Man_casual_3_F               // Casual Clothes (Green)
5, U_C_Man_casual_4_F               // Summer Clothes (Sky)
5, U_C_Man_casual_5_F               // Summer Clothes (Yellow)
5, U_C_Man_casual_6_F               // Summer Clothes (Red)

> CivilianBackpacks
10, B_OutdoorPack_blk
9, B_OutdoorPack_tan
9, B_OutdoorPack_blu
8, B_HuntingBackpack
7, B_AssaultPack_khk
7, B_AssaultPack_dgtl
7, B_AssaultPack_rgr
7, B_AssaultPack_sgg
7, B_AssaultPack_blk
7, B_AssaultPack_cbr
7, B_AssaultPack_mcamo
5, B_Kitbag_mcamo
5, B_Kitbag_sgg
5, B_Kitbag_cbr
7, B_AssaultPack_tna_F 

> CivilianVests
50, V_Rangemaster_belt
25, V_Press_F
25, V_TacVest_blk_POLICE

> CivilianHeadgear
5, H_Bandanna_surfer
5, H_Beret_blk_POLICE
5, H_Cap_blk
5, H_Cap_blk_Raven
5, H_Cap_blu
5, H_Cap_grn
5, H_Cap_headphones
5, H_Cap_oli
6, H_Cap_press
6, H_Cap_red
6, H_Cap_tan
6, H_Hat_blue
6, H_Hat_brown
6, H_Hat_checker
6, H_Hat_grey
6, H_Hat_tan
6, H_StrawHat
6, H_StrawHat_dark

//Guerilla

> GuerillaItems
25, Rangefinder
8, NVGoggles
8, O_NVGoggles_hex_F
8, O_NVGoggles_urb_F
8, O_NVGoggles_ghex_F
8, NVGoggles_tna_F
50, ItemCompass

> GuerillaClothing
16, U_IG_Guerilla1_1
16, U_IG_Guerilla2_1
16, U_IG_Guerilla2_2
16, U_IG_Guerilla2_3
15, U_IG_Guerilla3_1
15, U_IG_Guerilla3_2
4, U_IG_leader
2, U_I_G_resistanceLeader_F
5, U_I_C_Soldier_Para_1_F           // Paramilitary Garb (Tee)
5, U_I_C_Soldier_Para_2_F           // Paramilitary Garb (Jacket)
5, U_I_C_Soldier_Para_3_F           // Paramilitary Garb (Shirt)
5, U_I_C_Soldier_Para_4_F           // Paramilitary Garb (Tank Top)
5, U_I_C_Soldier_Para_5_F           // Paramilitary Garb (Shorts)
5, U_I_C_Soldier_Camo_F             // Syndikat Uniform

> GuerillaBackpacks
14, B_FieldPack_blk
14, B_FieldPack_ocamo
14, B_FieldPack_oucamo
14, B_FieldPack_cbr
11, B_Bergen_sgg
11, B_Bergen_mcamo
11, B_Bergen_rgr
11, B_Bergen_blk
11, B_FieldPack_ghex_F 
/*4, B_ViperHarness_base_F         
4, B_ViperHarness_blk_F          
4, B_ViperHarness_ghex_F         
4, B_ViperHarness_hex_F          
4, B_ViperHarness_khk_F          
4, B_ViperHarness_oli_F          
6, B_ViperLightHarness_base_F    
6, B_ViperLightHarness_blk_F     
6, B_ViperLightHarness_ghex_F    
6, B_ViperLightHarness_hex_F     
6, B_ViperLightHarness_khk_F     
6, B_ViperLightHarness_oli_F    
*/
> GuerillaVests
7, V_BandollierB_khk
7, V_BandollierB_cbr
7, V_BandollierB_rgr
7, V_BandollierB_blk
7, V_BandollierB_oli
5, V_Chestrig_khk
5, V_Chestrig_rgr
5, V_Chestrig_blk
5, V_Chestrig_oli
7, V_HarnessO_brn
7, V_HarnessOGL_brn
7, V_HarnessO_gry
7, V_HarnessOGL_gry
7, V_HarnessOSpec_brn
7, V_HarnessOSpec_gry
3, V_I_G_resistanceLeader_F

> GuerillaHeadgear
4, Exile_Headgear_GasMask
4, H_Booniehat_khk
4, H_Booniehat_indp
4, H_Booniehat_mcamo
4, H_Booniehat_grn
4, H_Booniehat_tan
4, H_Booniehat_dirty
4, H_Booniehat_dgtl
4, H_Booniehat_khk_hs
3, H_Bandanna_khk
3, H_Bandanna_khk_hs
3, H_Bandanna_cbr
3, H_Bandanna_sgg
3, H_Bandanna_gry
3, H_Bandanna_camo
3, H_Bandanna_mcamo
3, H_BandMask_blk
1, H_Beret_blk
1, H_Beret_red
1, H_Beret_grn
1, H_Beret_grn_SF
1, H_Beret_brn_SF
1, H_Beret_ocamo
1, H_Beret_02
1, H_Beret_Colonel
3, H_Hat_camo
3, H_Cap_brn_SPECOPS
3, H_Cap_tan_specops_US
3, H_Cap_khaki_specops_UK
3, H_Watchcap_blk
3, H_Watchcap_khk
2, H_Watchcap_camo
2, H_Watchcap_sgg
2, H_TurbanO_blk
2, H_Shemag_khk
2, H_Shemag_tan
2, H_Shemag_olive
2, H_Shemag_olive_hs
2, H_ShemagOpen_khk
2, H_ShemagOpen_tan  
2, H_MilCap_tna_F             
2, H_MilCap_ghex_F 
2, H_Booniehat_tna_F   
2, H_MilCap_gen_F             
2, H_Cap_oli_Syndikat_F       
2, H_Cap_tan_Syndikat_F       
2, H_Cap_blk_Syndikat_F       
2, H_Cap_grn_Syndikat_F       
2, H_FakeHeadgear_Syndikat_F    


//Military
/*
> MilitaryClothing
5, U_B_CTRG_1						// CTRG Combat Uniform (UBACS)
5, U_B_CTRG_2						// CTRG Combat Uniform (UBACS2)
5, U_B_CTRG_3						// CTRG Combat Uniform (Tee)
5, U_B_CombatUniform_mcam			// Combat Fatigues (MTP)
5, U_B_CombatUniform_mcam_tshirt	// Combat Fatigues (MTP) (Tee)
5, U_B_CombatUniform_mcam_vest		// Recon Fatigues (MTP)
5, U_B_CombatUniform_mcam_worn		// Worn Combat Fatigues (MTP)
3, U_B_SpecopsUniform_sgg			// Specop Fatigues (Sage)
2, U_O_OfficerUniform_ocamo			// Officer Fatigues (Hex)
2, U_I_OfficerUniform				// Combat Fatigues [AAF] (Tee)
4, U_I_CombatUniform				// Combat Fatigues [AAF]
4, U_I_CombatUniform_tshirt			// Combat Fatigues [AAF] (Tee)
4, U_I_CombatUniform_shortsleeve	// Combat Fatigues [AAF]
4, U_B_HeliPilotCoveralls			// Heli Pilot Coveralls
4, U_O_PilotCoveralls				// Pilot Coveralls [CSAT]
4, U_B_PilotCoveralls				// Pilot Coveralls [NATO]
4, U_I_pilotCoveralls				// Pilot Coveralls [AAF]
4, U_I_HeliPilotCoveralls			// Heli Pilot Coveralls
2, U_B_Wetsuit						// Wetsuit [NATO]
2, U_O_Wetsuit						// Wetsuit [CSAT]
2, U_I_Wetsuit						// Wetsuit [AAF]
2, U_O_CombatUniform_ocamo			// Heli Pilot Coveralls
2, U_O_CombatUniform_oucamo			// Fatigues (Urban) [CSAT]
2, U_O_SpecopsUniform_ocamo			// Recon Fatigues (Hex)
2, U_O_SpecopsUniform_blk			// Recon Fatigues (Black)
2, U_O_V_Soldier_Viper_F            // Special Purpose Suit (Green Hex)
2, U_O_V_Soldier_Viper_hex_F        // Special Purpose Suit (Hex)
5, U_B_T_Soldier_AR_F               // Combat Fatigues (Tropic, Tee)
5, U_B_T_Soldier_SL_F               // Recon Fatigues (Tropic)
5, U_B_CTRG_Soldier_F               // CTRG Stealth Uniform
5, U_B_CTRG_Soldier_2_F             // CTRG Stealth Uniform (Tee)
5, U_B_CTRG_Soldier_3_F             // CTRG Stealth Uniform (Rolled-up)
5, U_B_CTRG_Soldier_urb_1_F         // CTRG Urban Uniform
5, U_B_CTRG_Soldier_urb_2_F         // CTRG Urban Uniform (Tee)
5, U_B_CTRG_Soldier_urb_3_F         // CTRG Urban Uniform (Rolled-up)
5, U_B_GEN_Soldier_F                // Gendarmerie Uniform
5, U_B_GEN_Commander_F              // Gendarmerie Commander Uniform
5, U_O_T_Soldier_F                  // Fatigues (Green Hex) [CSAT]
5, U_O_T_Officer_F                  // Officer Fatigues (Green Hex) [CSAT]

> MilitaryBackpacks
15, B_Carryall_ocamo
15, B_Carryall_oucamo
15, B_Carryall_mcamo
18, B_Carryall_oli
18, B_Carryall_khk
19, B_Carryall_cbr
19, B_Carryall_ghex_F  
6, B_Bergen_Base_F				
6, B_Bergen_mcamo_F              
6, B_Bergen_dgtl_F               
6, B_Bergen_hex_F                
6, B_Bergen_tna_F  

> MilitaryVests
10, V_PlateCarrier1_blk
10, V_PlateCarrier1_rgr
10, V_PlateCarrier2_rgr
10, V_PlateCarrier3_rgr
10, V_PlateCarrierGL_rgr
10, V_PlateCarrierIA1_dgtl
10, V_PlateCarrierIA2_dgtl
10, V_PlateCarrierIAGL_dgtl
10, V_PlateCarrierSpec_rgr
5, V_PlateCarrierL_CTRG
5, V_PlateCarrierH_CTRG

> MilitaryHeadgear
4, Exile_Headgear_GasMask
4, H_MilCap_ocamo
4, H_MilCap_mcamo
4, H_MilCap_oucamo
4, H_MilCap_blue
4, H_MilCap_rucamo
4, H_MilCap_dgtl
3, H_HelmetB
3, H_HelmetB_paint
3, H_HelmetB_light
3, H_HelmetB_plain_blk
3, H_HelmetSpecB
3, H_HelmetSpecB_paint1
3, H_HelmetSpecB_paint2
3, H_HelmetSpecB_blk
3, H_HelmetIA
2, H_HelmetIA_net
2, H_HelmetIA_camo
2, H_HelmetB_grass
2, H_HelmetB_snakeskin
2, H_HelmetB_desert
2, H_HelmetB_black
2, H_HelmetB_sand
2, H_HelmetB_light_grass
2, H_HelmetB_light_snakeskin
2, H_HelmetB_light_desert
2, H_HelmetB_light_black
2, H_HelmetB_light_sand
1, H_HelmetCrew_B
1, H_HelmetCrew_O
1, H_HelmetCrew_I
1, H_PilotHelmetFighter_B
1, H_PilotHelmetFighter_O
1, H_PilotHelmetFighter_I
1, H_PilotHelmetHeli_B
1, H_PilotHelmetHeli_O
1, H_PilotHelmetHeli_I
1, H_HelmetB_camo
1, H_CrewHelmetHeli_B
1, H_CrewHelmetHeli_O
1, H_CrewHelmetHeli_I
2, H_BandMask_khk
2, H_BandMask_reaper
2, H_BandMask_demon
1, H_HelmetO_oucamo
1, H_HelmetLeaderO_oucamo
1, H_HelmetSpecO_ocamo
1, H_HelmetSpecO_blk
1, H_HelmetO_ocamo
1, H_HelmetLeaderO_ocamo
1, H_HelmetO_ghex_F 
2, H_Helmet_Skate    
2, H_HelmetB_Enh_tna_F        
2, H_HelmetB_Light_tna_F 	
2, H_Beret_gen_F  
2, H_HelmetB_tna_F   		 
2, H_HelmetSpecO_ghex_F       
2, H_HelmetLeaderO_ghex_F
2, H_HelmetCrew_O_ghex_F 
2, H_HelmetB_TI_tna_F   

*/

>MilitaryLow
//uniform

//backpack
1, rhs_sidor
1, rhs_rpg_empty

//vest
10, rhs_6sh92_digi
15, rhs_vest_pistol_holster
1, rhs_6b23_digi_6sh92
8, rhs_6sh92_vog
2, rhsgref_6b23_khaki
1, rhs_6b5
1, rhs_6b5_officer
1, rhs_6b5_sniper
1, rhs_6b5_khaki
1, rhs_6b5_medic_khaki
1, rhs_6b5_vsr
1, rhs_6b5_officer_vsr
1, rhs_6b5_ttsko
1, rhsgref_TacVest_ERDL

//headgear
1, rhs_fieldcap_digi
1, rhs_fieldcap_khk
1, rhs_fieldcap_ml
1, rhs_fieldcap_vsr
1, rhs_Booniehat_digi
1, rhs_Booniehat_flora
1, rhs_beret_vdv1
1, rhs_beret_vdv2
1, rhs_beret_mp1
1, rhs_beret_milp
1, rhs_beret_vdv3
1, rhs_beret_mp2
1, rhs_beanie
1, rhs_beanie_green
1, rhs_gssh18
1, rhs_tsh4
1, rhs_zsh7a
1, rhs_zsh7a_alt
1, rhs_zsh7a_mike
1, rhs_6b26_green
1, rhs_6b27m
1, rhs_6b7_1m_emr
1, rhs_6b7_1m_olive
1, rhs_Booniehat_m81
1,rhs_Booniehat_marpatd
1,rhs_Booniehat_marpatwd
1,rhs_Booniehat_ocp
1,rhs_Booniehat_ucp
1, rhsusf_lwh_helmet_M1942
1, rhsusf_lwh_helmet_marpatwd
1, rhsusf_ach_bare
1, rhsusf_ach_bare_des
1, rhsusf_ach_bare_des_ess
1, rhsgref_fieldcap
1, rhsgref_fieldcap_ttsko_forest
1, rhsgref_fieldcap_ttsko_mountain
1, rhsgref_fieldcap_ttsko_urban
1, rhsgref_fieldcap_ttsko_digi
1, rhsgref_ssh68
1, rhsgref_ssh68_ttsko_mountain
1, rhsgref_ssh68_ttsko_forest
1, rhsgref_ssh68_ttsko_fall
1, rhsgref_ssh68_ttsko_dark
1, rhsgref_ssh68_ttsko_summer
1, rhsgref_ssh68_ttsko_digi
1, rhsgref_ssh68_un
1, rhsgref_ssh68_emr
1, rhsgref_M56
1, rhsgref_helmet_pasgt_erdl
1, rhsgref_helmet_pasgt_erdl_rhino
1, rhsgref_helmet_pasgt_flecktarn
1, rhsgref_helmet_pasgt_un
1, rhsgref_patrolcap_specter

> MilitaryAFRFmid
//uniform
5, rhs_uniform_mvd_izlom
3, rhs_uniform_flora_patchless
//backpack
5, rhs_sidor
1, rhs_rpg_empty

//vest
3, rhs_6b23_digi_6sh92_vog
4, rhs_6b23_digi
1, rhs_6b23_digi_crew
2, rhs_6b23_medic
3, rhs_6b23_ML
2, rhs_6b23_ML_medic
1, rhs_6b23_ML_sniper
1, rhs_6sh46
2, rhs_6b23_digi_vydra_3m
1, rhs_6b43
1, rhs_6b5_sniper
1, rhs_6b5_khaki
1, rhs_6b5_medic_khaki
1, rhsgref_TacVest_ERDL

//headgear
1, rhs_fieldcap_digi
1, rhs_fieldcap_khk
1, rhs_fieldcap_ml
1, rhs_fieldcap_vsr
1, rhs_Booniehat_digi
1, rhs_Booniehat_flora
3, rhs_6b28
2, rhs_6b7_1m_olive
1, rhs_6b7_1m_emr_ess
1, rhs_6b7_1m_emr
1, rhs_6b7_1m_flora

1, rhs_6b7_1m_ess

>MilitaryAFRFhigh
//uniform
1, rhs_uniform_gorka_r_g
1, rhs_uniform_gorka_r_y
1, rhs_uniform_emr_patchless

//backpack
3, rhs_assault_umbts_engineer_empty

//vest
1, rhs_6b13_EMR_6sh92_vog
1, rhs_6b13_EMR_6sh92
2, rhs_6b23_digi_6sh92_vog_headset
3, rhs_6b23_sniper
3, rhs_6b43
1, rhs_6b23_digi_6sh92_spetsnaz2

//headgear
2, rhs_6b47
1, rhs_altyn_visordown

> MilitaryUSAFmid
//uniform
5, rhs_uniform_cu_ocp
5, rhs_uniform_cu_ucp
1, rhsusf_socom_g3_tan_uniform

//backpack
5, rhsusf_falconii
1, rhsusf_assault_eagleaiii_ucp

//vest
3, rhsusf_iotv_ocp_Grenadier
4, rhsusf_iotv_ocp
4, rhsusf_iotv_ucp
3, rhsusf_iotv_ucp_Medic
1, rhsusf_iotv_ucp_Repair
1, rhsusf_iotv_ocp_Teamleader
1, rhsusf_iotv_ucp_SAW
2, rhsusf_iotv_ucp_Squadleader
1, rhsusf_spc_light
1, rhsusf_spc

//headgear
5, rhsusf_ach_bare
3, rhsusf_ach_helmet_M81
2, rhsusf_lwh_helmet_marpatd
2, rhsusf_mich_bare_norotos
2, rhsusf_mich_helmet_marpatwd

>MilitaryUSAFhigh
//uniform
1, rhs_uniform_FROG01_d
1, rhs_uniform_FROG01_m81
1, rhs_uniform_FROG01_wd
1, rhsusf_socom_g3_blk_uniform
1, rhsusf_socom_g3_rgr_uniform
1, rhsusf_socom_g3_m81_uniform


//backpack
3, rhsusf_assault_eagleaiii_ucp
3, rhsusf_assault_eagleaiii_ocp
1, rhsusf_assault_eagleaiii_coy

//vest
1, rhsusf_spc
1, rhsusf_spc_corpsman
2, rhsusf_spc_crewman
3, rhsusf_spc_iar
3, rhsusf_spc_marksman
1, rhsusf_spc_mg
1, rhsusf_spc_teamleader
1, rhsusf_spc_patchless_radio
2, rhsusf_spcs_ucp_rifleman
1, rhsusf_iotv_ucp_Grenadier

//headgear
2, rhsusf_opscore_mc_cover
1, rhsusf_opscore_rg_cover
1, rhsusf_opscore_cover
1, rhsusf_protech_helmet
1, rhsusf_protech_helmet_rhino



> Ghillies
1, U_B_GhillieSuit			// Ghillie Suit [NATO]
1, U_O_GhillieSuit			// Ghillie Suit [CSAT]
1, U_I_GhillieSuit			// Ghillie Suit [AAF]

> DLCGhillies
1, U_B_FullGhillie_ard		
1, U_B_FullGhillie_lsh
1, U_B_FullGhillie_sard
1, U_O_FullGhillie_ard
1, U_O_FullGhillie_lsh
1, U_O_FullGhillie_sard
1, U_I_FullGhillie_ard
1, U_I_FullGhillie_lsh
1, U_I_FullGhillie_sard
5, U_B_T_Sniper_F                   // Ghillie Suit (Tropic) [NATO]
5, U_B_T_Soldier_F        			// Ghillie Suit (Tropic) [NATO]
5, U_B_T_FullGhillie_tna_F          // Full Ghillie (Jungle) [NATO]
5, U_O_T_Sniper_F                   // Ghillie Suit (Green Hex) [CSAT]
5, U_O_T_FullGhillie_tna_F          // Full Ghillie (Jungle) [CSAT]

> DLCVests
1, V_PlateCarrierGL_blk
1, V_PlateCarrierGL_mtp
1, V_PlateCarrierGL_rgr
1, V_PlateCarrierIAGL_dgtl
1, V_PlateCarrierIAGL_oli
1, V_PlateCarrierSpec_blk
1, V_PlateCarrierSpec_mtp
1, V_PlateCarrierSpec_rgr
1, V_TacChestrig_grn_F         
1, V_TacChestrig_oli_F         
1, V_TacChestrig_cbr_F         
1, V_PlateCarrier1_tna_F       
1, V_PlateCarrier2_tna_F       
1, V_PlateCarrierSpec_tna_F    
1, V_PlateCarrierGL_tna_F      
1, V_HarnessO_ghex_F           
1, V_HarnessOGL_ghex_F         
1, V_BandollierB_ghex_F        
1, V_TacVest_gen_F             
1, V_PlateCarrier1_rgr_noflag_F
1, V_PlateCarrier2_rgr_noflag_F

> Rebreathers
1, V_RebreatherB
1, V_RebreatherIR
1, V_RebreatherIA

///////////////////////////////////////////////////////////////////////////////
// Other Items
///////////////////////////////////////////////////////////////////////////////

> MedicalItems
2, Exile_Item_InstaDoc
5, Exile_Item_Bandage
10, Exile_Item_Vishpirin
10, Exile_Item_Heatpack

> IndustrialItems
1, Exile_Item_ThermalScannerPro
1, Exile_Item_Codelock
2, Exile_Item_Knife
3, Exile_Item_Cement
3, Exile_Item_FloodLightKit
3, Exile_Item_PortableGeneratorKit
4, Exile_Item_CamoTentKit
4, Exile_Item_MetalBoard
4, Exile_Item_Foolbox
4, Exile_Item_Sand
5, Exile_Item_Grinder
5, Exile_Item_MetalScrews
5, Exile_Melee_SledgeHammer
8, Exile_Item_ExtensionCord
9, Exile_Item_LightBulb
10, Exile_Item_WaterCanisterEmpty
10, Exile_Melee_Shovel
11, Exile_Item_JunkMetal
13, Exile_Item_Handsaw
13, Exile_Item_Pliers
13, Exile_Item_ScrewDriver
22, Exile_Melee_Axe
10,Exile_Item_MetalWire
20, Exile_Item_Wrench
8, Exile_Item_CordlessScrewdriver
3, Exile_Item_FireExtinguisher
10, Exile_Item_OilCanister
14, Exile_Item_Hammer
4, Exile_Item_Rope
20,	Exile_Item_CarWheel

> Vehicle
40, Exile_Item_FuelCanisterFull
50, Exile_Item_FuelCanisterEmpty
10, Exile_Item_DuctTape

// Throwables

> Chemlights
1, Chemlight_blue
1, Chemlight_green
1, Chemlight_red
1, Chemlight_yellow

> RoadFlares
1, FlareGreen_F
1, FlareRed_F
1, FlareWhite_F
1, FlareYellow_F

> SmokeGrenades
1, SmokeShell
1, SmokeShellRed
1, SmokeShellGreen
1, SmokeShellYellow
1, SmokeShellPurple
1, SmokeShellBlue
1, SmokeShellOrange

> Restraints
1, Exile_Item_ZipTie

> Electronics
1, Exile_Item_Laptop
1, Exile_Item_BaseCameraKit

 // Trash or items not currently being used

> Trash
4, Exile_Item_Can_Empty
4, Exile_Item_ToiletPaper
4, Exile_Item_PlasticBottleEmpty			// Nothing :)
1, Exile_Item_Magazine01
1, Exile_Item_Magazine02
1, Exile_Item_Magazine03
1, Exile_Item_Magazine04

> ThermalHelmetGroup
50, Exile_Item_Can_Empty
50, Exile_Item_ToiletPaper
50, Exile_Item_PlasticBottleEmpty			// Nothing :)
1, Chemlight_blue
1, Chemlight_green
1, Chemlight_red
1, Chemlight_yellow
1, 	H_HelmetO_ViperSP_hex_F


> Unused
3, Exile_Item_CordlessScrewdriver
3, Exile_Item_FireExtinguisher
10, Exile_Item_OilCanister
14, Exile_Item_Hammer
5, Exile_Item_Defibrillator
4, Exile_Item_Rope


///////////////////////////////////////////////////////////////////////////////
// RiflesUSAF
///////////////////////////////////////////////////////////////////////////////
> RiflesUSAF
8, rhs_weap_m16a4
7, rhs_weap_m16a4_carryhandle
3, rhs_weap_m16a4_carryhandle_M203
5, rhs_weap_m16a4_carryhandle_grip
5, rhs_weap_m16a4_carryhandle_grip_pmag
5, rhs_weap_m16a4_carryhandle_pmag
5, rhs_weap_m16a4_grip
5, rhs_weap_m27iar
1, rhs_weap_m27iar_grip2
10, rhs_weap_m4
10, rhs_weap_m4_carryhandle
8, rhs_weap_m4_carryhandle_pmag
6, rhs_weap_m4_grip
6, rhs_weap_m4_grip2
3, rhs_weap_m4_m203
2, rhs_weap_m4_m203S
3, rhs_weap_m4_m320
8, rhs_weap_m4a1
8, rhs_weap_m4a1_carryhandle
5, rhs_weap_m4a1_carryhandle_grip
5, rhs_weap_m4a1_carryhandle_grip2
2, rhs_weap_m4a1_carryhandle_m203
2, rhs_weap_m4a1_carryhandle_m203S
5, rhs_weap_m4a1_carryhandle_pmag
5, rhs_weap_m4a1_grip
5, rhs_weap_m4a1_grip2
2, rhs_weap_m4a1_m203
1, rhs_weap_m4a1_m203s
1, rhs_weap_m4a1_m320
2, rhs_weap_m4a1_blockII
1, rhs_weap_m4a1_blockII_grip2
1, rhs_weap_m4a1_blockII_grip_wd
1, rhs_weap_m4a1_blockII_grip2_d
1, rhs_weap_m4a1_blockII_grip_KAC_d
1, rhs_weap_m4a1_blockII_grip2_KAC_d
1, rhs_weap_mk18_bk
1, rhs_weap_mk18_wd
1, rhs_weap_mk18_KAC
1, rhs_weap_mk18_grip_bk
2, rhs_weap_hk416d145
1, rhs_weap_hk416d145_grip

 
>RifleAmmoUSAF
10, rhs_mag_30Rnd_556x45_M855A1_Stanag
10, rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer
10, rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red
10, rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green
10, rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow
10, rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Orange
50, rhs_mag_30Rnd_556x45_Mk318_Stanag
50, rhs_mag_30Rnd_556x45_Mk262_Stanag

//40mm flares
10, rhs_mag_M585_white
10, rhs_mag_m661_green
10, rhs_mag_m662_red

//40 mm smoke
10, rhs_mag_m713_Red
10, rhs_mag_m714_White
10, rhs_mag_m715_Green

>AttachmentsUSAF
10, rhsusf_acc_harris_bipod
10, rhsusf_acc_M952V
6, rhsusf_acc_wmx
1, rhsusf_acc_anpeq15A
1, rhsusf_acc_anpeq15
1, rhsusf_acc_anpeq15_light
1, rhsusf_acc_M2010S
1, rhsusf_acc_anpeq15side
1, rhsusf_acc_SR25S
1, rhsusf_acc_rotex5_grey	//suppressor
1, rhsusf_acc_rotex5_tan	//suppressor
1, rhsusf_acc_nt4_black	//suppressor
1, rhsusf_acc_nt4_tan //suppressor
1, rhsusf_acc_muzzleFlash_SF
1, rhsusf_acc_SF3P556
1, rhsusf_acc_SFMB556
10, rhsusf_acc_compm4
4, rhsusf_acc_eotech_552
2, rhsusf_acc_LEUPOLDMK4
1, rhsusf_acc_M2A1
5, rhsusf_acc_EOTECH
8, rhsusf_acc_eotech_xps3
4, rhsusf_acc_elcan_3d
1, rhsusf_acc_LEUPOLDMK4_2
2, rhsusf_acc_ACOG3_USMC
1, rhsusf_acc_ACOG2_USMC
1, rhsusf_acc_ACOG_USMC
1, rhsusf_acc_ACOG3
1, rhsusf_acc_ACOG2
1, rhsusf_acc_ACOG_sa
1, rhsusf_acc_ACOG_d
1, rhsusf_acc_ACOG_wd
2, rhsusf_acc_ACOG_MDO
2, rhsusf_acc_SpecterDR_D
2, rhsusf_acc_SpecterDR_A_3d
2, rhsusf_acc_ARDEC_M240

>SnipersUSAF
1, rhs_weap_M107_d //Barrett .50cal
3, rhs_weap_XM2010_d //300 WinMag
3, rhs_weap_XM2010_sa
3, rhs_weap_XM2010_wd
10, rhs_weap_m40a5
10, rhs_weap_m40a5_d
10, rhs_weap_m40a5_wd
20, rhs_weap_sr25
20, rhs_weap_sr25_ec
45, rhs_weap_m14ebrri
 
>SniperAmmoUSAF
10, rhsusf_5Rnd_300winmag_xm2010
1, 10Rnd_RHS_50BMG_Box
//rhsusf_10Rnd_STD_50BMG_M107
20, rhsusf_20Rnd_762x51_m118_special_Mag
30, rhsusf_20Rnd_762x51_m993_Mag

>SniperAttachmentsUSAF
10, rhsusf_acc_LEUPOLDMK4
5, rhsusf_acc_LEUPOLDMK4_2
5, rhsusf_acc_LEUPOLDMK4_2_d
20, rhsusf_acc_M8541
20, rhsusf_acc_M8541_low_d
20, rhsusf_acc_M8541_low_wd
 
>LMGUSAF
5, rhs_weap_m240B
5, rhs_weap_m240B_CAP
4, rhs_weap_m240G
10, rhs_weap_m249_pip_L
8, rhs_weap_m249_pip_L_para
6, rhs_weap_m249_pip_L_vfg
1, rhs_weap_m249_pip_L_vfg3
6, rhs_weap_m249_pip_S
5, rhs_weap_m249_pip_S_para
4, rhs_weap_m249_pip_S_vfg
 
>LMGAmmoUSAF
15, rhs_200rnd_556x45_M_SAW
15, rhs_200rnd_556x45_T_SAW
15, rhs_200rnd_556x45_B_SAW
15, rhsusf_50Rnd_762x51
15, rhsusf_50Rnd_762x51_m61_ap
15, rhsusf_50Rnd_762x51_m62_tracer
15, rhsusf_50Rnd_762x51_m80a1epr
10, rhsusf_100Rnd_762x51
10, rhsusf_100Rnd_762x51_m61_ap
10, rhsusf_100Rnd_762x51_m62_tracer
10, rhsusf_100Rnd_762x51_m80a1epr
5, rhsusf_50Rnd_762x51_m993
5, rhsusf_100Rnd_762x51_m993
 
///////////////////////////////////////////////////////////////////////////////
// Grenade Launcher
///////////////////////////////////////////////////////////////////////////////
//rhs_weap_M320
//rhs_weap_m32
 
///////////////////////////////////////////////////////////////////////////////
// Grenade Launcher Ammo
///////////////////////////////////////////////////////////////////////////////

/*
rhsusf_mag_6Rnd_M441_HE
rhsusf_mag_6Rnd_M433_HEDP
rhsusf_mag_6Rnd_M714_white
rhsusf_mag_6Rnd_M576_Buckshot
rhsusf_m112_mag //C4
rhsusf_m112x4_mag//C4 4pack
rhs_mag_m18_green
rhs_mag_m18_purple
rhs_mag_m18_red
rhs_mag_m18_yellow
 */
/*
 
///////////////////////////////////////////////////////////////////////////////
// Launcher
///////////////////////////////////////////////////////////////////////////////
rhs_weap_M136
rhs_weap_M136_hedp
rhs_weap_M136_hp
rhs_weap_fgm148
rhs_weap_fim92
rhs_weap_smaw
rhs_weap_smaw_green
 
///////////////////////////////////////////////////////////////////////////////
// Launcher Ammo
///////////////////////////////////////////////////////////////////////////////
rhs_m136_mag
rhs_m136_hedp_mag
rhs_m136_hp_mag
rhs_fim92_mag
rhs_fgm148_magazine_AT
rhs_mag_smaw_HEAA
rhs_mag_smaw_HEDP
rhs_mag_smaw_SR


 

 

 
///////////////////////////////////////////////////////////////////////////////
// Wheeled Vehicle
///////////////////////////////////////////////////////////////////////////////
rhsusf_M1078A1P2_B_M2_d_fmtv_usarmy
rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy
rhsusf_M1078A1P2_B_d_fmtv_usarmy
rhsusf_M1078A1P2_B_wd_fmtv_usarmy
rhsusf_M1078A1P2_d_fmtv_usarmy
rhsusf_M1078A1P2_wd_fmtv_usarmy
rhsusf_M1083A1P2_B_M2_d_MHQ_fmtv_usarmy
rhsusf_M1083A1P2_B_M2_d_fmtv_usarmy
rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy
rhsusf_M1083A1P2_B_d_fmtv_usarmy
rhsusf_M1083A1P2_B_wd_fmtv_usarmy
rhsusf_M1083A1P2_d_fmtv_usarmy
rhsusf_M1083A1P2_wd_fmtv_usarmy
rhsusf_m1025_w
rhsusf_m1025_w_m2
rhsusf_m1025_w_mk19
rhsusf_m998_w_2dr
rhsusf_m998_w_4dr
rhsusf_rg33_d
rhsusf_rg33_m2_d
 
///////////////////////////////////////////////////////////////////////////////
// Tracked Vehicle
///////////////////////////////////////////////////////////////////////////////
RHS_M2A2
RHS_M2A2_BUSKI
RHS_M2A3
RHS_M2A3_BUSKI
RHS_M2A3_BUSKIII
rhsusf_m109_usarmy
rhsusf_m109d_usarmy
rhsusf_m113_usarmy
rhsusf_m113_usarmy_M240
rhsusf_m113_usarmy_MK19
rhsusf_m113_usarmy_medical
rhsusf_m113_usarmy_supply
rhsusf_m113_usarmy_unarmed
rhsusf_m113d_usarmy
rhsusf_m113d_usarmy_M240
rhsusf_m113d_usarmy_MK19
rhsusf_m113d_usarmy_medical
rhsusf_m113d_usarmy_supply
rhsusf_m113d_usarmy_unarmed
rhsusf_m1a1aim_tuski_d
rhsusf_m1a1aim_tuski_wd
rhsusf_m1a1aimd_usarmy
rhsusf_m1a1aimwd_usarmy
rhsusf_m1a1fep_d
rhsusf_m1a1fep_od
rhsusf_m1a1fep_wd
rhsusf_m1a2sep1d_usarmy
rhsusf_m1a2sep1tuskid_usarmy
rhsusf_m1a2sep1tuskiid_usarmy
rhsusf_m1a2sep1tuskiiwd_usarmy
rhsusf_m1a2sep1tuskiwd_usarmy
rhsusf_m1a2sep1wd_usarmy
 
///////////////////////////////////////////////////////////////////////////////
// Helicopter
///////////////////////////////////////////////////////////////////////////////
RHS_AH1Z
RHS_AH64D
RHS_CH_47F
RHS_UH1Y
RHS_UH60M
RHS_UH60M_MEV
rhsusf_CH53E_USMC
 
///////////////////////////////////////////////////////////////////////////////
// Plane
///////////////////////////////////////////////////////////////////////////////
RHS_A10
RHS_C130J
rhsusf_f22
 */