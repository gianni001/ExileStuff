/**
 * Created with Exile Mod 3DEN Plugin
 * www.exilemod.com
 */

ExileRouletteChairs = [];
ExileRouletteChairPositions = [];

switch (toLower worldName) do
{
    case "altis":
    {
        _objectNew =
        [
            ["Land_PierLadder_F",[15778.5,17457.7,16.5839],[[0.917394,-0.397981,0],[0,0,1]],false,false],
            ["MetalBarrel_burning_F",[15777.9,17452.5,19.3027],[[0,1,0],[0.000690534,0,1]],false,true],
            ["Land_HistoricalPlaneWreck_02_front_F",[15787.7,17448.7,14.2905],[[0.426341,-0.904557,-0.00330394],[-0.00350407,-0.00530404,0.99998]],false,false]
        ];

        {
            private ["_objectNew"];

            _object = (_x select 0) createVehicle [0,0,0];
            _object setPosASL (_x select 1);
            _object setVectorDirAndUp (_x select 2);
            _object allowDamage (_x select 3);
            _object enableSimulationGlobal (_x select 4);
        }
        forEach _objectNew;

        // 13 Simple Objects
        private _invisibleSelections = ["zasleh", "zasleh2", "box_nato_grenades_sign_f", "box_nato_ammoord_sign_f", "box_nato_support_sign_f"];
        private _simpleObjects = [
        ["a3\structures_f\items\electronics\survivalradio_f.p3d", [9242.66, 11478.3, 110.59], [0.699208, -0.714886, 0.00679661], [0.0198178, 0.0288846, 0.999386]],
        ["a3\structures_f_epa\items\food\bottleplastic_v2_f.p3d", [9242.78, 11478.5, 110.608], [0, 0.999583, -0.0288903], [0.0198178, 0.0288846, 0.999386]],
        ["a3\structures_f\civ\camping\sunshade_f.p3d", [3137.89, 13087.8, 72.1171], [0, 0.997785, -0.0665182], [-0.109995, 0.0661146, 0.991731]],
        ["a3\props_f_exp\military\camps\satelliteantenna_01_f.p3d", [6230.58, 16253.6, 46.5416], [-0.761929, 0.64766, 0.000525949], [0.000690285, 0, 1]],
        ["a3\structures_f_heli\items\electronics\fridge_01_f.p3d", [6231.02, 16255.6, 43.5185], [0.0147415, -0.999891, 0], [0, 0, 1]],
        ["a3\structures_f_epa\items\food\bottleplastic_v2_f.p3d", [6230.89, 16255.4, 44.1638], [0, 1, 0], [0, 0, 1]],
        ["a3\structures_f_epa\items\food\bottleplastic_v2_f.p3d", [6230.95, 16255.6, 44.1638], [0, 1, 0], [0, 0, 1]],
        ["a3\structures_f_epa\items\food\bakedbeans_f.p3d", [6230.9, 16255.6, 43.5426], [0, 1, 0], [0, 0, 1]],
        ["exile_assets\model\exile_item_raisins.p3d", [6231.16, 16255.6, 44.028], [-0.267644, -0.963518, 0], [0, 0, 1]],
        ["exile_assets\model\exile_item_magazine02.p3d", [6232.93, 16256.6, 42.9993], [0.808607, -0.588349, 0], [0, 0, 1]],
        ["a3\structures_f\civ\camping\campingchair_v2_f.p3d", [13362.9, 14512.4, 2.26771], [-0.388152, 0.899576, 0.200253], [0.0876605, -0.180266, 0.979704]],
        ["a3\structures_f_heli\civ\garbage\wheeliebin_01_f.p3d", [5881.75, 20110.1, 226.749], [0.708861, -0.695653, 0.116547], [-0.0306514, 0.134697, 0.990413]],
        ["a3\props_f_exp\industrial\heavyequipment\combineharvester_01_wreck_f.p3d", [5889.66, 20113.5, 228.064], [-0.196683, 0.965957, -0.168059], [-0.061219, 0.158974, 0.985383]],
        ["a3\weapons_f\longrangerifles\ebr\ebr_f.p3d", [20676.9, 15629.2, 17.8918], [0.675858, 0.646648, 0.353641], [0.664069, -0.742424, 0.0884228]],
        // Terminal
        ["a3\structures_f\wrecks\uwreck_mv22_f.p3d", [14346.9, 15906, 22.0832], [-0.988094, -0.15385, 0], [0, 0, 1]],
        ["a3\props_f_exp\military\oldplanewrecks\historicalplanedebris_04_f.p3d", [14368.2, 15908.9, 17.9942], [0, 1, 0], [0, 0, 1]],
        ["a3\props_f_exp\military\oldplanewrecks\historicalplanedebris_03_f.p3d", [14371.5, 15925.7, 18.1652], [-0.971447, 0.237255, 0], [0, 0, 1]],
        ["a3\props_f_exp\military\oldplanewrecks\historicalplanedebris_02_f.p3d", [14336.5, 15891.1, 18.1427], [0, 1, 0], [0, 0, 1]],
        ["a3\props_f_exp\military\oldplanewrecks\historicalplanewreck_02_wing_right_f.p3d", [14404.8, 15913.9, 19.0506], [0.0550127, -0.998485, -0.00126162], [-0.00133721, -0.00133721, 0.999998]],
        ["a3\props_f_exp\military\oldplanewrecks\historicalplanewreck_02_front_f.p3d", [14405, 15930.2, 19.3076], [-0.980089, -0.198555, -0.00126615], [-0.00129187, 0, 0.999999]],
        ["a3\props_f_exp\military\oldplanewrecks\historicalplanewreck_03_f.p3d", [14486.3, 15998.3, 20.5054], [-0.164934, -0.986305, 0.000213074], [0.00129187, 0, 0.999999]],
        ["a3\structures_f\wrecks\wreck_plane_transport_01_f.p3d", [14492.7, 16049.3, 17.8561], [-0.691723, -0.722157, -0.00280017], [-0.00265204, -0.00133721, 0.999996]],
        ["a3\props_f_exp\military\oldplanewrecks\historicalplanewreck_01_f.p3d", [14497, 16198.9, 19.2685], [0.990543, 0.137199, 0.000363859], [0, -0.00265204, 0.999996]],
        //Termina roof / parking lot
        ["a3\structures_f\wrecks\wreck_heli_attack_02_f.p3d", [14596.6, 16778.3, 30.3368], [0, 0.955843, -0.293877], [0.293585, 0.280926, 0.913722]],
        ["a3\structures_f\wrecks\wreck_slammer_hull_f.p3d", [14610.4, 16840.1, 18.6279], [0.211366, -0.977407, 0], [0, 0, 1]],
        ["a3\structures_f\wrecks\wreck_slammer_f.p3d", [14524.3, 16792.3, 19.3295], [0.974344, -0.224761, 0.011693], [-0.012, 0, 0.999928]],
        // Boat trader
        ["a3\props_f_exp\naval\boats\boat_06_wreck_f.p3d", [13416.1, 14524.4, 1.98085], [0, 1, 0], [0, 0, 1]],
        ["a3\props_f_exp\naval\boats\boat_05_wreck_f.p3d", [13396.1, 14524.5, 1.33762], [0.986879, -0.108266, -0.119782], [0.0968758, -0.196444, 0.975717]],
        // PMC
        ["a3\structures_f\wrecks\wreck_t72_hull_f.p3d", [17473.2, 13163.6, 14.3539], [0.00843607, -0.999951, 0.00527006], [0.00666818, 0.00532638, 0.999964]],
        ["a3\structures_f\wrecks\wreck_ural_f.p3d", [17474.4, 13176.1, 14.7399], [0.959561, -0.281352, -0.00919887], [0.0146643, 0.0173263, 0.999742]],
        ["a3\structures_f\wrecks\wreck_hmmwv_f.p3d", [17495.2, 13185.6, 14.219], [-0.908711, -0.417379, 0.00630374], [0.00265204, 0.00932847, 0.999953]],
        //Hardware
        ["a3\props_f_exp\industrial\heavyequipment\excavator_01_wreck_f.p3d", [6232.63, 16272, 46.1278], [0.765755, -0.643132, 0], [0, 0, 1]],
        //servo telos
        ["a3\structures_f\wrecks\wreck_bmp2_f.p3d", [15800.2, 17425.7, 15.0996], [0.182675, -0.983162, -0.00474676], [-0.00625302, -0.0059897, 0.999963]],
        ["a3\structures_f\wrecks\wreck_brdm2_f.p3d", [15820.8, 17421.2, 14.898], [-0.894101, -0.447716, -0.0115518], [-0.00574636, -0.0143228, 0.999881]],
        ["a3\structures_f\wrecks\wreck_hmmwv_f.p3d", [15817.6, 17408.9, 15.036], [-0.11341, -0.993532, -0.00571027], [-0.00458047, -0.00522445, 0.999976]],
        ["a3\structures_f\wrecks\wreck_van_f.p3d", [15777.2, 17441.7, 15.2279], [-0.981974, 0.189002, -0.00216627], [-0.0031074, -0.00468328, 0.999984]],
        ["a3\structures_f\wrecks\wreck_offroad_f.p3d", [15772.6, 17446.4, 15.1628], [-0.807926, 0.589284, 0.0006283], [-0.0031074, -0.00532652, 0.999981]],
        ["a3\structures_f\wrecks\wreck_uaz_f.p3d", [15764.3, 17446, 15.0613], [-0.967067, 0.254517, 0.00135572], [0, -0.00532655, 0.999986]],
        ["a3\structures_f\wrecks\wreck_truck_dropside_f.p3d", [15780.3, 17436.8, 15.3801], [0.468468, -0.883478, -0.00214968], [-0.00461935, -0.00488257, 0.999977]],
        ["a3\structures_f\wrecks\wreck_car_f.p3d", [15756.6, 17452.2, 14.9762], [-0.822591, 0.568621, 0.00378669], [0, -0.00665928, 0.999978]],
        ["a3\structures_f\mil\bagfence\bagfence_corner_f.p3d", [15782.8, 17448.5, 19.7133], [0.896761, -0.442514, -0.000619021], [0.000690285, 0, 1]],
        ["a3\structures_f\mil\bagfence\bagfence_corner_f.p3d", [15776.6, 17451.4, 19.7237], [-0.452231, -0.891901, 0.000312169], [0.000690285, 0, 1]],
        ["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [15778.4, 17450.3, 19.7205], [0.437503, 0.899217, -0.000302002], [0.000690285, 0, 1]],
        ["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [15781, 17449, 19.7182], [0.442036, 0.896997, -0.000305131], [0.000690285, 0, 1]],
        ["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [15783.9, 17450.3, 19.7144], [-0.905752, 0.423807, 0.000625228], [0.000690285, 0, 1]],
        ["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [15777.1, 17453.2, 19.7131], [0.901498, -0.432782, -0.000622291], [0.000690285, 0, 1]],
        ["a3\structures_f\civ\constructions\pallets_f.p3d", [15784.5, 17454.5, 19.6121], [0, 1, 0], [0.000690285, 0, 1]],
        ["a3\structures_f_exp\civilian\accessories\plank_01_8m_f.p3d", [15787.8, 17457.3, 20.597], [0.528491, 0.77465, 0.347297], [-0.207692, -0.278683, 0.937657]],
        ["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [15796.4, 17466.1, 22.8643], [-0.551925, -0.833871, -0.00614829], [-0.211514, 0.132858, 0.968303]],
        ["a3\structures_f\mil\bagfence\bagfence_short_f.p3d", [15794.5, 17467.4, 22.3101], [-0.548142, -0.836371, -0.00497881], [-0.211514, 0.132858, 0.968303]],
        ["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [15799.2, 17464.4, 23.0217], [-0.534231, -0.845336, 0.00222462], [0.201271, -0.124642, 0.971573]],
        ["a3\structures_f\mil\bagfence\bagfence_short_f.p3d", [15801.1, 17463.3, 22.4916], [-0.538291, -0.842752, 0.00339725], [0.201271, -0.124642, 0.971573]],
        ["a3\structures_f\mil\bagfence\bagfence_short_f.p3d", [15801.9, 17462.8, 22.2766], [0.567953, 0.822972, -0.0120795], [0.201271, -0.124642, 0.971573]],
        ["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [15801.6, 17461, 22.0947], [-0.822153, 0.517708, 0.236733], [0.201271, -0.124642, 0.971573]],
        ["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [15800.1, 17458.6, 22.1008], [-0.809533, 0.537274, 0.236629], [0.201271, -0.124642, 0.971573]],
        ["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [15798.7, 17456.6, 22.1126], [-0.801615, 0.549072, 0.236502], [0.201271, -0.124642, 0.971573]],
        ["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [15796.6, 17456.3, 22.5036], [0.539715, 0.841839, -0.00380943], [0.201271, -0.124642, 0.971573]],
        ["a3\structures_f\mil\bagfence\bagfence_short_f.p3d", [15794.7, 17457.5, 23.0453], [0.540471, 0.841353, -0.00402837], [0.201271, -0.124642, 0.971573]],
        ["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [15792, 17459.4, 22.918], [0.549982, 0.835158, 0.00554722], [-0.211514, 0.132858, 0.968303]],
        ["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [15793.1, 17466.4, 22.1032], [0.81889, -0.516749, 0.249778], [-0.211514, 0.132858, 0.968303]],
        ["a3\structures_f\mil\bagfence\bagfence_long_f.p3d", [15791.5, 17463.9, 22.1248], [-0.803947, 0.539753, -0.249671], [-0.211514, 0.132858, 0.968303]],
        // Servo near pygros
        ["a3\structures_f\wrecks\wreck_skodovka_f.p3d", [17412.3, 13933.1, 6.10912], [0.672069, -0.740487, 0.00169617], [-0.00399675, -0.00133687, 0.999991]],
        ["a3\structures_f\wrecks\wreck_car_f.p3d", [17412.9, 13937.5, 6.2626], [-0.238438, -0.971158, -0.00063235], [-0.00265204, 0, 0.999996]]

        ];

        {
            private _simpleObject = createSimpleObject [_x select 0, _x select 1];
            _simpleObject setVectorDirAndUp [_x select 2, _x select 3];
            
            {
                if ((toLower _x) in _invisibleSelections) then 
                {
                    _simpleObject hideSelection [_x, true];
                };
            }
            forEach (selectionNames _simpleObject);
        }
        forEach _simpleObjects;

        // Dead men
        private _npcs = [
        // PMC
        ["Exile_Guard_01", [], "", "WhiteHead_11", [[],[],[],["U_BG_Guerilla2_1",[]],["V_TacVest_khk",[]],[],"H_MilCap_dgtl","G_Combat",[],["","","","","",""]], [17471.3, 13172.8, 30], [-0.997428, 0.0716693, 0], [0, 0, 1]],
        ["Exile_Guard_01", [], "", "WhiteHead_01", [[],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[]],[],"H_ShemagOpen_tan","G_Combat",[],["","","","","",""]], [17483.5, 13170.1, 30], [-0.826836, 0.562443, 0], [0, 0, 1]],
        ["Exile_Guard_01", [], "", "WhiteHead_18", [[],[],[],["U_BG_Guerrilla_6_1",[]],["V_TacVest_khk",[]],[],"H_HelmetB_desert","",[],["","","","","",""]], [17481, 13186.4, 30], [0.51854, -0.855053, 0], [0, 0, 1]],
        ["Exile_Guard_01", [], "", "WhiteHead_04", [[],[],[],["U_O_CombatUniform_ocamo",[]],["V_HarnessO_brn",[]],[],"H_HelmetIA","",[],["","","","","",""]], [17502.1, 13190.4, 30], [0.997969, 0.0637046, 0], [0, 0, 1]],
        // Server near pygros
        ["Exile_Guard_01", [], "", "WhiteHead_21", [[],[],[],["U_I_C_Soldier_Bandit_1_F",[]],[],[],"","",[],["","","","","",""]], [17410.4, 13937.6, 50], [0, 1, 0], [0, 0, 1]],
        ["Exile_Guard_01", [], "", "WhiteHead_01", [[],[],[],["U_I_C_Soldier_Bandit_4_F",[]],[],[],"","",[],["","","","","",""]], [17410.4, 13936.3, 50], [0.97614, 0.21714, 0], [0, 0, 1]],
        ["Exile_Guard_01", [], "", "WhiteHead_17", [[],[],[],["U_C_Poloshirt_stripped",[]],[],[],"","",[],["","","","","",""]], [17413.8, 13935.3, 50], [0.97614, 0.21714, 0], [0, 0, 1]],
        ["Exile_Guard_01", [], "", "WhiteHead_21", [[],[],[],["U_C_Man_casual_1_F",[]],[],[],"","",[],["","","","","",""]], [17410.7, 13932.4, 50], [-0.315621, -0.948885, 0], [0, 0, 1]],
        ["Exile_Guard_01", [], "", "WhiteHead_18", [[],[],[],["U_C_Man_casual_2_F",[]],[],[],"","",[],["","","","","",""]], [17407.5, 13932.8, 50], [-0.0148786, 0.999889, 0], [0, 0, 1]],
        ["Exile_Guard_01", [], "", "AfricanHead_01", [[],[],[],["U_Competitor",[]],[],[],"","",[],["","","","","",""]], [17413.8, 13933, 50], [-0.363036, 0.931775, 0], [0, 0, 1]],
        // Mill hill
        ["Exile_Guard_01", [], "", "AfricanHead_03", [[],[],[],["U_B_T_Sniper_F",[]],["V_TacChestrig_grn_F",[]],["B_Respawn_Sleeping_bag_brown_F",[]],"H_ShemagOpen_tan","G_Tactical_Black",[],["","","","","",""]], [12798.4, 16688.2, 94.348], [0.459816, 0.888014, 0], [0, 0, 1]],
        ["Exile_Guard_01", [], "", "GreekHead_A3_06", [[],[],[],["U_B_survival_uniform",[]],["V_TacVest_khk",[]],["B_AssaultPack_sgg",[]],"H_ShemagOpen_tan","G_Tactical_Clear",[],["","","","","",""]], [12799.1, 16686.6, 94.1061], [-0.519363, -0.854554, 0], [0, 0, 1]],
        ["Exile_Guard_01", [], "", "AfricanHead_02", [[],[],[],["U_BG_Guerilla2_1",[]],["V_HarnessO_gry",[]],["B_Bergen_dgtl_F",[]],"H_HelmetB_light","",[],["","","","","",""]], [12793.3, 16687, 94.0408], [0.204194, -0.97893, 0], [0, 0, 1]],
        // chalkia church
        ["Exile_Guard_01", [], "", "WhiteHead_11", [[],[],[],["U_Marshal",[]],[],[],"","",[],["","","","","",""]], [17904.2, 15044.8, 21.8], [-0.998906, -0.0467635, 0], [0, 0, 1]]
        ];

        {
            private _logic = "Logic" createVehicle [0, 0, 0];
            private _trader = (_x select 0) createVehicle [0, 0, 0];
            private _animations = _x select 1;
            
            _logic setPosWorld (_x select 5);
            _logic setVectorDirAndUp [_x select 6, _x select 7];
            
            _trader setVariable ["BIS_enableRandomization", false];
            _trader setVariable ["BIS_fnc_animalBehaviour_disable", true];
            _trader setVariable ["ExileAnimations", _animations];
            _trader setVariable ["ExileTraderType", _x select 2];
            _trader disableAI "ANIM";
            _trader disableAI "MOVE";
            _trader disableAI "FSM";
            _trader disableAI "AUTOTARGET";
            _trader disableAI "TARGET";
            _trader disableAI "CHECKVISIBLE";
            _trader allowDamage false;
            _trader setFace (_x select 3);
            _trader setUnitLoadOut (_x select 4);
            _trader setPosWorld (_x select 5);
            _trader setVectorDirAndUp [_x select 6, _x select 7];
            _trader reveal _logic;
            _trader attachTo [_logic, [0, 0, 0]];
            _trader setDamage 1;
            _trader setVariable ["ExileReborn_garbageCollectionIgnore",1,true];
            _trader setVariable ["ExileReborn_disableInventory",1,true];
            _trader call ExileServer_object_flies_spawn;
            //_trader switchMove (_animations select 0);
            //_trader addEventHandler ["AnimDone", {_this call ExileClient_object_trader_event_onAnimationDone}];
        }
        forEach _npcs;
    }; 
    case "esseker":
    {
       
    };
    case "tanoa":
    {
        
    };
    case "namalsk":
    {
        _objects =
        [
            ["land_seb_residental",[4972.45,8044.18,-0.192459],350.455,[[-0.165829,0.986154,0],[0,0,1]],false],
            ["Exile_Sign_AircraftCustoms",[4987.06,8008.3,-0.285828],358.182,[[-0.0317271,0.999497,0],[0,0,1]],false],
            ["Exile_Sign_Aircraft",[4993.16,8008.49,-0.35659],4.09091,[[0.0713392,0.997452,0],[0,0,1]],false],
            ["Exile_Sign_Armory",[4972.58,8045.89,4.69194],80.3963,[[0.985985,0.166832,0],[0,0,1]],false],
            ["Exile_Sign_Equipment",[4973.46,8048.57,0.256481],259.091,[[-0.981929,-0.18925,0],[-0,0,1]],false],
            ["Exile_Sign_Food",[4971.97,8048.9,4.99253],103.212,[[0.973532,-0.228552,0],[0,-0,1]],false],
            ["Exile_Sign_Hardware",[4978.98,8056.99,0.298199],291.364,[[-0.931287,0.364287,0],[0,0,1]],false],
            ["Exile_Sign_Office",[5011.57,8022.79,0.170429],145.455,[[0.56706,-0.823677,0],[0,-0,1]],false],
            ["Exile_Sign_SpecialOperations",[4967.71,8038.83,4.77552],170.455,[[0.165822,-0.986156,0],[0,-0,1]],false],
            ["Exile_Sign_VehicleCustoms",[4979.81,8029.77,0],223.182,[[-0.684316,-0.729186,0],[-0,0,1]],false],
            ["Exile_Sign_Vehicles",[4989.27,8026.7,0],182.273,[[-0.0396559,-0.999213,0],[-0,0,1]],false],
            ["Exile_Sign_WasteDump",[5005.59,8062.67,0],84.5455,[[0.995472,0.0950556,0],[0,0,1]],false],
            ["Exile_Sign_TraderCity",[4977.09,8082.22,0],202.273,[[-0.379015,-0.92539,0],[-0,0,1]],false],
            ["Land_Misc_GContainer_Big",[5007.45,8060.39,0],310.909,[[-0.755749,0.654861,0],[0,0,1]],false],
            ["Land_cargo_addon01_V1_F",[4988,8007.71,0.482025],0,[[0,1,0],[0,0,1]],false],
            ["Land_cargo_addon01_V2_F",[4992.02,8007.71,0.64748],0,[[0,1,0],[0,0,1]],false],
            ["Land_PaperBox_open_empty_F",[4972.69,8041.18,4.70987],346.818,[[-0.228045,0.973651,0],[0,0,1]],false],
            ["Exile_Cosmetic_MG",[4966.37,8039.5,4.84768],173.182,[[0.118716,-0.992928,0],[0,-0,1]],false],
            ["Exile_Cosmetic_UAV",[4968.37,8039.81,4.71871],36.8182,[[0.599278,0.800541,0],[0,0,1]],false],
            ["Land_TableDesk_F",[5013.31,8011.31,4.12627],271.818,[[-0.999497,0.0317282,0],[0,0,1]],false],
            ["Land_WaterCooler_01_old_F",[4968.42,8047.3,4.72985],167.727,[[0.212565,-0.977147,0],[0,-0,1]],false],
            ["Land_ShelvesWooden_F",[5010.98,8010.87,4.12627],0,[[0,1,0],[0,0,1]],false],
            ["Land_Metal_rack_F",[4969.41,8047.53,4.72985],168.182,[[0.204806,-0.978803,0],[0,-0,1]],false],
            ["Land_Box_AmmoOld_F",[4971.42,8046.43,4.68838],310.455,[[-0.760916,0.648851,0],[0,0,1]],false],
            ["Land_CratesShabby_F",[4971.71,8050.85,4.6806],350.455,[[-0.16583,0.986154,0],[0,0,1]],false],
            ["Land_LuggageHeap_03_F",[4966.07,8040.06,0.479908],15,[[0.258819,0.965926,0],[0,0,1]],false],
            ["Land_LuggageHeap_02_F",[4965.52,8042.85,0.55238],354.091,[[-0.102951,0.994686,0],[0,0,1]],false],
            ["Land_LuggageHeap_01_F",[4965.5,8045.31,0.641945],0,[[0,1,0],[0,0,1]],false],
            ["Campfire_burning_F",[4966.61,8036.96,0.53722],0,[[0,1,0],[0,0,1]],false],
            ["land_mol_cr",[4367.94,4733.66,-2.67057],170,[[0.173647,-0.984808,0],[0,-0,1]],false],
            ["land_lodenice",[4353.54,4726.54,-0.00206777],186.364,[[-0.110839,-0.993838,0],[-0.101666,0.0113383,0.994754]],false],
            ["Land_PowerPoleWooden_L_off_F",[4367.56,4745.61,0],0,[[0,1,0],[0,0,1]],false],
            ["Exile_Sign_Boat_Small",[4361.4,4741.69,0],184.545,[[-0.0994842,-0.965484,-0.240713],[0.0714839,-0.248223,0.966062]],false],
            ["Land_RowBoat_V1_F",[4377.78,4732.28,0],32.7273,[[0.540641,0.841254,0],[0,0,1]],false],
            ["Land_RowBoat_V2_F",[4328.54,4732.59,0],288.182,[[-0.950071,0.312034,0],[0,0,1]],false],
            ["Land_RowBoat_V3_F",[4364.75,4745.36,0],13.6364,[[0.235759,0.971811,0],[0,0,1]],false],
            ["Land_RowBoat_V2_F",[4351.05,4744.07,0],113.182,[[0.91926,-0.39365,0],[0,-0,1]],false],
            ["Land_RowBoat_V1_F",[9127.52,10100,0],0,[[0,1,0],[0,0,1]],false],
            ["Land_RowBoat_V2_F",[9116.47,10094.3,-0.349067],278.636,[[-0.988661,0.150163,0],[-0.0252604,-0.166312,0.98575]],false],
            ["Land_RowBoat_V3_F",[9105.59,10070.7,0],286.818,[[-0.957228,0.289336,0],[0,0,1]],false],
            ["Exile_Sign_Boat_Small",[9112.28,10088.4,0],122.727,[[0.841208,-0.536336,-0.0686432],[0.0295976,-0.081086,0.996267]],false]
        ];

        {
            private ["_object"];

            _object = (_x select 0) createVehicle [0,0,0];
            _object setDir (_x select 2);
            _object setPosATL (_x select 1);
            _object allowDamage false;
            _object enableSimulationGlobal false; // :)
        }
        forEach _objects;
    };
};

setTerrainGrid 3.125;
setViewDistance 1500;

[] execVM "addons\blowout\module\blowout_server.sqf";
diag_log "BLOWOUT SERVER - Loading";