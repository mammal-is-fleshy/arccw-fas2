// Created by Crowbar 0.68

$modelname "weapons/arccw/mifl/fas2/c_g3.mdl"
$include fesiug.qci
$scale 2

$bodygroup "Main"
{
	studio "Main.smd"
	blank
}
$bodygroup "Frame"
{
	studio "Frame.smd"
	studio "Frame_33.smd"
	studio "Frame_MP5.smd"
	studio "Frame_K.smd"	
	blank	
	studio "HG_PSG1.smd"
	studio "Frame_Port.smd"	
}
$bodygroup "HG"
{
	blank
	studio "HG_33.smd"
	studio "HG_SD.smd"
	studio "HG_EOD.smd"
	studio "HG_Navy.smd"	
}
$bodygroup "Mag"
{
	studio "Mag_762_30.smd"
	studio "Mag_762_20.smd"
	studio "Mag_762_10.smd"
	studio "Mag_762_50.smd"	
	studio "Mag_556_20.smd"
	studio "Mag_556_30.smd"
	studio "Mag_20.smd"	
	studio "Mag_10mm.smd"	
	studio "mag_556_75.smd"		
	blank	
}
$bodygroup "Stock"
{
	studio "Stock_Solid.smd"
	studio "Stock_PDW.smd"
	studio "Stock_Slide.smd"
	studio "Stock_Non.smd"		
	studio "Stock_Adaptor.smd"			
	blank	
	studio "Stock_PSG1.smd"		
}
$bodygroup "Rail"
{
	blank
	studio "Rail.smd"
}

$bodygroup "Ammo"
{
	studio "Ammo_762.smd"
	studio "Ammo_556.smd"	
	studio "Ammo_9mm.smd"	
	blank	
}

$illumposition 0 0 0

$cdmaterials "models\weapons\arccw_fas2\mp5sd\"
$cdmaterials "models\weapons\arccw_fas2\mc51b\"
$cdmaterials "models\weapons\arccw_fas2\g3\"
$cdmaterials "models\weapons\arccw_fas2\accessories\"
$cdmaterials "models\weapons\arccw_fas2\shells\"
$cdmaterials "models\weapons\arccw_fas2\mp5_extra\"
$cdmaterials "models\weapons\arccw_fas2\m4a1_extra\"
$cdmaterials "models\weapons\arccw_fas2\m4a1\"
$cdmaterials "models\weapons\arccw_fas2\sg55x\"

$attachment "muzzle" "frame" -14.62 0.52 0.26 rotate 0 180 -90
$attachment "muzzle_suppressor" "frame" -14.62 0.52 0.26 rotate 0 180 -90
$attachment "ejector" "frame" 0.23 0.04 0.56 rotate -70 -95 90

$definebone "frame" "" -1.758703 -11.538824 -1.260503 0 89.999982 -89.999982 0 0 0 0 0 0
$definebone "stock" "" -1.650599 -6.473753 -2.398699 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "mag" "" -1.636706 -6.529736 -2.419798 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "boltcarriage" "" -1.650599 -6.502 -2.398698 0 -89.999982 89.999982 0 0 0 0 0 0
$definebone "charginghandle" "" -1.758703 -11.538824 -1.260504 0 89.999982 -90.000037 0 0 0 0 0 0
$definebone "magrel" "" -1.758703 -11.538824 -1.260503 0 89.999982 -89.999982 0 0 0 0 0 0
$definebone "trigger" "" -1.758703 -11.538824 -1.260504 0 89.999982 -89.999982 0 0 0 0 0 0
$definebone "modeswitch" "" -1.758703 -11.538824 -1.260503 0 89.999982 -89.999982 0 0 0 0 0 0
$definebone "rounds" "" -1.868948 -11.662575 -2.209915 0 0 86.499954 0 0 0 0 0 0
$definebone "Magbutton" "" -1.758703 -11.538824 -1.260504 0 89.999982 -89.999982 0 0 0 0 0 0
$definebone "Right Hand" "" -5.81565 -10.090681 -3.135012 -0.642114 89.643084 -179.659739 0 0 0 0 0 0
$definebone "Right Lower Arm2" "Right Hand" 0.001853 -0.011043 0.000007 -2.096854 -2.794373 0 0 0 0 0 0 0
$definebone "Right Demonstratus Phalanges1" "Right Hand" -2.693112 0.598938 -0.105602 -5.218156 175.165802 -88.556422 0 0 0 0 0 0
$definebone "Right Demonstratus Phalange2" "Right Demonstratus Phalanges1" 0.668916 -0.00023 0.000988 0.898168 0.209358 0.603439 0 0 0 0 0 0
$definebone "Right Demonstratus Phalange3" "Right Demonstratus Phalange2" 0.620677 -0.000352 0.000184 -0.267973 -0.515147 0.367323 0 0 0 0 0 0
$definebone "Right Impudicus Phalanges1" "Right Hand" -2.735406 0.046611 -0.154424 -5.927536 -179.679792 -88.760159 0 0 0 0 0 0
$definebone "Right Impudicus Phalanges2" "Right Impudicus Phalanges1" 0.693262 -0.001516 0.000457 0.476529 1.580503 -0.39007 0 0 0 0 0 0
$definebone "Right Impudicus Phalanges3" "Right Impudicus Phalanges2" 0.70867 0 0 -0.273416 -1.9107 -1.257642 0 0 0 0 0 0
$definebone "Right Annularis Phalanges1" "Right Hand" -2.579787 -0.47033 -0.041396 -0.877428 -174.239628 -86.902751 0 0 0 0 0 0
$definebone "Right Annularis Phalanges2" "Right Annularis Phalanges1" 0.698674 -0.00031 -0.00017 -0.230959 0.417801 -1.701055 0 0 0 0 0 0
$definebone "Right Annularis Phalanges3" "Right Annularis Phalanges2" 0.666528 0 0 -1.43566 -0.607335 -0.392877 0 0 0 0 0 0
$definebone "Right Auricularis Phalanges1" "Right Hand" -2.466993 -1.051966 0.081883 -0.942573 -166.863065 -87.70872 0 0 0 0 0 0
$definebone "Right Auricularis Phalanges2" "Right Auricularis Phalanges1" 0.572362 -0.000204 0.001442 3.261791 0.471544 -1.601876 0 0 0 0 0 0
$definebone "Right Auricularis Phalanges3" "Right Auricularis Phalanges2" 0.515585 0 0 -2.448937 -0.143583 -1.142363 0 0 0 0 0 0
$definebone "Right Polex Metacarpal" "Right Hand" -0.205823 0.527907 0.046739 44.660172 -89.716427 -89.094306 0 0 0 0 0 0
$definebone "Right Polex Phalange1" "Right Polex Metacarpal" -0.218396 0.054786 -0.682163 48.019181 -165.497068 114.93188 0 0 0 0 0 0
$definebone "Right Polex Phalange2" "Right Polex Phalange1" 0.873055 0.002833 -0.000315 -0.371852 -3.348995 -2.481195 0 0 0 0 0 0
$definebone "Right Polex Phalange3" "Right Polex Phalange2" 0.7206 -0.000998 -0.002572 -6.876986 2.674682 5.135761 0 0 0 0 0 0
$definebone "Left Hand" "" 1.260293 -10.043264 -3.142162 0.30934 -89.581838 0.200764 0 0 0 0 0 0
$definebone "Left Lower Arm 2" "Left Hand" -0.001849 0.00067 0.000001 4.118822 179.118528 0 0 0 0 0 0 0
$definebone "Left Demonstratus Phalanges1" "Left Hand" 2.65317 -0.698475 0.113861 4.564182 -5.408722 89.90298 0 0 0 0 0 0
$definebone "Left Demonstratus Phalanges2" "Left Demonstratus Phalanges1" 0.704213 -0.000156 -0.001868 -1.523781 0.127254 -0.679012 0 0 0 0 0 0
$definebone "Left Demonstratus Phalanges3" "Left Demonstratus Phalanges2" 0.621943 0 0 1.906287 -0.394882 1.217192 0 0 0 0 0 0
$definebone "Left Impudicus Phalanges1" "Left Hand" 2.69682 -0.150661 0.155077 4.614087 0.186154 89.226887 0 0 0 0 0 0
$definebone "Left Impudicus Phalanges2" "Left Impudicus Phalanges1" 0.759131 -0.000239 0.000019 0.034721 0.450803 0.871927 0 0 0 0 0 0
$definebone "Left Impudicus Phalanges3" "Left Impudicus Phalanges2" 0.692899 -0.000001 0 0 -1.665933 0 0 0 0 0 0 0
$definebone "Left Annularis Phalanges1" "Left Hand" 2.642577 0.371989 0.042955 3.893362 6.235328 89.042915 0 0 0 0 0 0
$definebone "Left Annularis Phalanges2" "Left Annularis Phalanges1" 0.678051 0.000483 -0.001802 -2.11496 -0.569692 1.356019 0 0 0 0 0 0
$definebone "Left Annularis Phalanges3" "Left Annularis Phalanges2" 0.668665 0 0 0.732125 -0.309054 -1.104319 0 0 0 0 0 0
$definebone "Left Auricularis Phalanges1" "Left Hand" 2.452636 0.938823 -0.082469 -0.668413 10.637536 89.485751 0 0 0 0 0 0
$definebone "Left Auricularis Phalanges2" "Left Auricularis Phalanges1" 0.601525 0.000082 -0.001163 -0.046409 -1.102142 0.765414 0 0 0 0 0 0
$definebone "Left Auricularis Phalanges3" "Left Auricularis Phalanges2" 0.550749 0 0 -0.317591 1.759152 -0.401644 0 0 0 0 0 0
$definebone "Left Polex Metacarpal" "Left Hand" 0.219846 -0.599415 -0.044417 44.800645 -90.10848 90.437927 0 0 0 0 0 0
$definebone "Left Polex Phalange1" "Left Polex Metacarpal" 0.322868 0.125605 -0.694551 51.101139 -11.870826 77.08643 0 0 0 0 0 0
$definebone "Left Polex Phalange2" "Left Polex Phalange1" 0.868582 -0.002156 -0.000869 -1.638602 4.069028 -2.680982 0 0 0 0 0 0
$definebone "Left Polex Phalange3" "Left Polex Phalange2" 0.674675 0.000336 0.000567 2.28186 -1.370177 -5.014009 0 0 0 0 0 0
$definebone "Right shoulder" "" -5.758168 7.237389 -3.577589 0.431323 -1.66851 179.738982 0 0 0 0 0 0
$definebone "Right Upper Arm" "Right shoulder" 0 0 0 -1.190663 -89.788103 0.003667 0 0 0 0 0 0
$definebone "Right Lower Arm" "Right Upper Arm" -9.996876 0 0 -0.054718 -3.963264 -0.000172 0 0 0 0 0 0
$definebone "CompM4S" "" -1.992174 -9.201368 -0.38313 0 -179.999978 89.999982 0 0 0 0 0 0
$definebone "CompM4S_Rearcover_Orientation" "CompM4S" 0 0.867169 1.012449 0 -55.049098 0 0 0 0 0 0 0
$definebone "CompM4S_Rearcover" "CompM4S_Rearcover_Orientation" 0 0.492502 0.210505 0.559251 -179.800222 -132.744344 0 0 0 0 0 0
$definebone "CompM4S_Frontcover_Orientation" "CompM4S" 0 0.867169 -1.511556 0 -179.569607 0 0 0 0 0 0 0
$definebone "CompM4S_Frontcover" "CompM4S_Frontcover_Orientation" 0 0.585922 -0.087505 0 0 -82.544769 0 0 0 0 0 0


$sectionframes 30 137


$sequence "idle" {
	"g3_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	snap
	fps 1
	loop
}

$sequence "deploy_first" {
	"g3_anims\deploy_first.smd"
	activity "ACT_VM_DRAW_FIRST" 1
	{ event 5004 0 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 17 "Arccw_FAS2_Weapon_G3.Handle" }
	{ event 5004 22 "Arccw_FAS2_Weapon_G3.BoltBack" }
	{ event 5004 22 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 73 "Arccw_FAS2_Generic.Magpouch" }
	{ event 5004 89 "Arccw_FAS2_Weapon_G3.MagIn" }
	{ event 5004 89 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 125 "Arccw_FAS2_Weapon_G3.BoltForward" }
	{ event 5004 125 "Arccw_FAS2_Generic.Cloth_Movement" }
	fadein 0.2
	fadeout 0.2
	node "0"
	snap
	fps 30
}

$sequence "deploy_first2" {
	"g3_anims\deploy_first2.smd"
	activity "ACT_VM_DRAW_FIRST" 1
	{ event 5004 0 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 24 "Arccw_FAS2_Weapon_MP5.SelectorSwitch" }
	{ event 5004 40 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 47 "Arccw_FAS2_Generic.Cloth_Movement" }
	fadein 0.2
	fadeout 0.2
	node "0"
	snap
	fps 30
}

$sequence "draw" {
	"g3_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 0 "Arccw_FAS2_Weapon.Deploy" }
	fadein 0.2
	fadeout 0.2
	node "0"
	snap
	fps 50
}

$sequence "holster" {
	"g3_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	{ event 5004 0 "Arccw_FAS2_Weapon.Holster" }
	fadein 0.2
	fadeout 0.2
	node "0"
	snap
	fps 60
}

$sequence "idle_scoped" {
	"g3_anims\idle_scoped.smd"
	activity "ACT_VM_IDLE_SCOPED" 1
	fadein 0.2
	fadeout 0.2
	node "0"
	snap
	fps 1
	loop
}

$sequence "reload" {
	"g3_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 19 "Arccw_FAS2_Weapon_G3.MagOut" }
	{ event 5004 19 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 35 "Arccw_FAS2_Generic.Magpouch" }
	{ event 5004 49 "Arccw_FAS2_Weapon_G3.MagIn" }
	{ event 5004 49 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 3018 59 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_nomen" {
	"g3_anims\reload_nomen.smd"
	activity "ACT_VM_RELOAD_NOMEN" 1
	{ event 5004 0 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 19 "Arccw_FAS2_Weapon_G3.MagOut" }
	{ event 5004 12 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 37 "Arccw_FAS2_Generic.Magpouch" }
	{ event 5004 53 "Arccw_FAS2_Weapon_G3.MagIn" }
	{ event 5004 73 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 3018 55 "" }
	fadein 0.2
	fadeout 0.2
	fps 35
}

$sequence "reload_empty" {
	"g3_anims\reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event 5004 0 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 8 "Arccw_FAS2_Weapon_G3.Handle" }
	{ event 5004 18 "Arccw_FAS2_Weapon_G3.BoltBack" }
	{ event 5004 18 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 61 "Arccw_FAS2_Weapon_G3.MagOutEmpty" }
	{ event 5004 61 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 79 "Arccw_FAS2_Generic.Magpouch" }
	{ event 5004 91 "Arccw_FAS2_Weapon_G3.MagIn" }
	{ event 5004 91 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 118 "Arccw_FAS2_Weapon_G3.BoltForward" }
	{ event 5004 118 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 3018 128 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_empty_nomen" {
	"g3_anims\reload_empty_nomen.smd"
	activity "ACT_VM_RELOAD_EMPTY_NOMEN" 1
	{ event 5004 0 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 21 "Arccw_FAS2_Weapon_G3.MagOutEmpty" }
	{ event 5004 21 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 42 "Arccw_FAS2_Generic.Magpouch" }
	{ event 5004 62 "Arccw_FAS2_Weapon_G3.MagIn" }
	{ event 5004 62 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 80 "Arccw_FAS2_Weapon_G3.Handle" }
	{ event 5004 82 "Arccw_FAS2_Weapon_G3.BoltPullNomen" }
	{ event 5004 82 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 3018 90 "" }
	fadein 0.2
	fadeout 0.2
	fps 32
}

$sequence "fire" {
	"g3_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_FAS_MUZZLE_EFFECT 0 "Muzzleflash_G3_View" }
	{ event AE_FAS_EJECT_BRASS 1 "" }
	{ event AE_FAS_MUZZLE_EFFECT 1 "Ejector_Smoke" }
	fadein 0.2
	fadeout 0.2
	node "0"
	snap
	fps 30
}

$sequence "fire2" {
	"g3_anims\fire2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_FAS_MUZZLE_EFFECT 0 "Muzzleflash_G3_View" }
	{ event AE_FAS_EJECT_BRASS 1 "" }
	{ event AE_FAS_MUZZLE_EFFECT 1 "Ejector_Smoke" }
	fadein 0.2
	fadeout 0.2
	node "0"
	snap
	fps 30
}

$sequence "fire3" {
	"g3_anims\fire3.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event AE_FAS_MUZZLE_EFFECT 0 "Muzzleflash_G3_View" }
	{ event AE_FAS_EJECT_BRASS 1 "" }
	{ event AE_FAS_MUZZLE_EFFECT 1 "Ejector_Smoke" }
	fadein 0.2
	fadeout 0.2
	node "0"
	snap
	fps 30
}

$sequence "fire_scoped" {
	"g3_anims\fire_scoped.smd"
	activity "ACT_VM_PRIMARYATTACK_SCOPED" 1
	{ event AE_FAS_MUZZLE_EFFECT 0 "Muzzleflash_G3_View" }
	{ event AE_FAS_EJECT_BRASS 1 "" }
	{ event AE_FAS_MUZZLE_EFFECT 1 "Ejector_Smoke" }
	fadein 0.2
	fadeout 0.2
	node "0"
	snap
	fps 30
}









$sequence "reload_50" {
	"anims\reload_50.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 19 "Arccw_FAS2_Weapon_G3.MagOut" }
	{ event 5004 19 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 35 "Arccw_FAS2_Generic.Magpouch" }
	{ event 5004 49 "Arccw_FAS2_Weapon_G3.MagIn" }
	{ event 5004 49 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 3018 59 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_empty_50" {
	"anims\reload_empty_50.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event 5004 0 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 8 "Arccw_FAS2_Weapon_G3.Handle" }
	{ event 5004 18 "Arccw_FAS2_Weapon_G3.BoltBack" }
	{ event 5004 18 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 61 "Arccw_FAS2_Weapon_G3.MagOutEmpty" }
	{ event 5004 61 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 79 "Arccw_FAS2_Generic.Magpouch" }
	{ event 5004 91 "Arccw_FAS2_Weapon_G3.MagIn" }
	{ event 5004 91 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 118 "Arccw_FAS2_Weapon_G3.BoltForward" }
	{ event 5004 118 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 3018 128 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_empty_50_k" {
	"anims\reload_empty_50_k.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event 5004 0 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 8 "Arccw_FAS2_Weapon_G3.Handle" }
	{ event 5004 18 "Arccw_FAS2_Weapon_G3.BoltBack" }
	{ event 5004 18 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 61 "Arccw_FAS2_Weapon_G3.MagOutEmpty" }
	{ event 5004 61 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 79 "Arccw_FAS2_Generic.Magpouch" }
	{ event 5004 91 "Arccw_FAS2_Weapon_G3.MagIn" }
	{ event 5004 91 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 118 "Arccw_FAS2_Weapon_G3.BoltForward" }
	{ event 5004 118 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 3018 128 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_empty_k" {
	"anims\reload_empty_k.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	{ event 5004 0 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 8 "Arccw_FAS2_Weapon_G3.Handle" }
	{ event 5004 18 "Arccw_FAS2_Weapon_G3.BoltBack" }
	{ event 5004 18 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 61 "Arccw_FAS2_Weapon_G3.MagOutEmpty" }
	{ event 5004 61 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 79 "Arccw_FAS2_Generic.Magpouch" }
	{ event 5004 91 "Arccw_FAS2_Weapon_G3.MagIn" }
	{ event 5004 91 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 118 "Arccw_FAS2_Weapon_G3.BoltForward" }
	{ event 5004 118 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 3018 128 "" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_empty_nomen_k" {
	"anims\reload_empty_nomen_k.smd"
	activity "ACT_VM_RELOAD_EMPTY_NOMEN" 1
	{ event 5004 0 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 21 "Arccw_FAS2_Weapon_G3.MagOutEmpty" }
	{ event 5004 21 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 42 "Arccw_FAS2_Generic.Magpouch" }
	{ event 5004 62 "Arccw_FAS2_Weapon_G3.MagIn" }
	{ event 5004 62 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 80 "Arccw_FAS2_Weapon_G3.Handle" }
	{ event 5004 82 "Arccw_FAS2_Weapon_G3.BoltPullNomen" }
	{ event 5004 82 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 3018 90 "" }
	fadein 0.2
	fadeout 0.2
	fps 32
}

$sequence "reload_empty_nomen_50" {
	"anims\reload_empty_nomen_50.smd"
	activity "ACT_VM_RELOAD_EMPTY_NOMEN" 1
	{ event 5004 0 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 21 "Arccw_FAS2_Weapon_G3.MagOutEmpty" }
	{ event 5004 21 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 42 "Arccw_FAS2_Generic.Magpouch" }
	{ event 5004 62 "Arccw_FAS2_Weapon_G3.MagIn" }
	{ event 5004 62 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 80 "Arccw_FAS2_Weapon_G3.Handle" }
	{ event 5004 82 "Arccw_FAS2_Weapon_G3.BoltPullNomen" }
	{ event 5004 82 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 3018 90 "" }
	fadein 0.2
	fadeout 0.2
	fps 32
}

$sequence "reload_empty_nomen_50_k" {
	"anims\reload_empty_nomen_50_k.smd"
	activity "ACT_VM_RELOAD_EMPTY_NOMEN" 1
	{ event 5004 0 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 21 "Arccw_FAS2_Weapon_G3.MagOutEmpty" }
	{ event 5004 21 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 42 "Arccw_FAS2_Generic.Magpouch" }
	{ event 5004 62 "Arccw_FAS2_Weapon_G3.MagIn" }
	{ event 5004 62 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 80 "Arccw_FAS2_Weapon_G3.Handle" }
	{ event 5004 82 "Arccw_FAS2_Weapon_G3.BoltPullNomen" }
	{ event 5004 82 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 3018 90 "" }
	fadein 0.2
	fadeout 0.2
	fps 32
}

$sequence "reload_nomen_50" {
	"anims\reload_nomen_50.smd"
	activity "ACT_VM_RELOAD_EMPTY_NOMEN" 1
	{ event 5004 0 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 21 "Arccw_FAS2_Weapon_G3.MagOutEmpty" }
	{ event 5004 21 "Arccw_FAS2_Generic.Cloth_Movement" }
	{ event 5004 42 "Arccw_FAS2_Generic.Magpouch" }
	{ event 5004 62 "Arccw_FAS2_Weapon_G3.MagIn" }
	{ event 5004 62 "Arccw_FAS2_Generic.Cloth_Movement" }
	fadein 0.2
	fadeout 0.2
	fps 32
}














$collisionmodel "Phys.smd"
{
	$mass 10
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}