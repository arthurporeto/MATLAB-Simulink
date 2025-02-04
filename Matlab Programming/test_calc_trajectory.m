%% Test for main function
% Inputs
clear
Pos = [0;0;0];
Vel = [  40   52   46    0    0  -50  -55  -46    0    0   40   ;
          0    0    0   50   46    0    0    0  -50  -46    0   ;
         10    0    0    0    0    0   -2    0    0    0  -10  ];
Time = [ 50   20   40   10   40   80   40   40   10   40   42  ];
Radius = [0    0 1200    0 1200    0    0 1200    0 1200    0  ];

%Compare to solution
newPos = calc_trajectory(Pos, Vel, Time, Radius);
Solution = [0,2000,3040,3040,3058.39783702016,3076.78918560931,3095.16972184179,3113.53512433395,3131.88107526021,3150.20326136818,3168.49737499272,3186.75911506871,3204.98418814228,3223.16830938020,3241.30720357729,3259.39660616152,3277.43226419670,3295.40993738229,3313.32539905039,3331.17443715942,3348.95285528443,3366.65647360367,3384.28112988132,3401.82268044604,3419.27700116519,3436.63998841444,3453.90756004254,3471.07565633108,3488.14024094895,3505.09730190131,3521.94285247282,3538.67293216498,3555.28360762722,3571.77097358169,3588.13115374141,3604.36030172161,3620.45460194402,3636.41027053399,3652.22355621004,3667.89074116584,3683.40814194431,3698.77211030357,3713.97903407473,3729.02533801111,3743.90748462876,3758.62197503822,3773.16534976707,3787.53418957333,3801.72511624927,3815.73479341574,3829.55992730651,3843.19726754266,3856.64360789681,3869.89578704686,3882.95068931930,3895.80524542169,3908.45643316428,3920.90127817052,3933.13685457642,3945.16028571836,3956.96874480948,3968.55945560424,3979.92969305113,3991.07678393337,4001.99810749738,4012.69109606896,4023.15323565694,4033.38206654424,4043.37518386619,4053.13023817590,4062.64493599666,4071.91704036111,4080.94437133720,4089.72480654071,4098.25628163420,4106.53679081239,4114.56438727370,4122.33718367798,4129.85335259025,4137.11112691030,4144.10880028818,4150.84472752536,4157.31732496153,4163.52507084693,4169.46650570013,4175.14023265114,4180.54491776985,4185.67929037964,4190.54214335610,4195.13233341087,4199.44878136041,4203.49047237973,4207.25645624098,4210.74584753687,4213.95782588878,4216.89163613973,4219.54658853184,4221.92205886854,4224.01748866129,4225.83238526092,4227.36632197344,4228.61893816034,4229.58993932341,4230.27909717397,4230.27909717397,4230.27909717397,4229.99697489595,4229.43279666870,4228.58669513419,4227.45886921639,4226.04958407451,4224.35917104065,4222.38802754192,4220.13661700698,4217.60546875708,4214.79517788164,4211.70640509833,4208.33987659771,4204.69638387255,4200.77678353168,4196.58199709863,4192.11301079499,4187.37087530849,4182.35670554605,4177.07168037158,4171.51704232888,4165.69409734949,4159.60421444565,4153.24882538844,4146.62942437118,4139.74756765809,4132.60487321845,4125.20302034619,4117.54374926507,4109.62886071954,4101.46021555137,4093.03973426219,4084.36939656191,4075.45124090333,4066.28736400286,4056.87992034755,4047.23112168862,4037.34323652137,4027.21858955195,4016.85956115069,4006.26858679258,3995.44815648456,3984.40081418019,3973.12915718150,3961.63583552837,3949.92355137549,3937.99505835703,3925.85316093931,3913.50071376139,3900.94062096394,3888.17583550649,3875.20935847312,3862.04423836692,3848.68357039328,3835.13049573214,3821.38820079950,3807.45991649831,3793.34891745879,3779.05852126861,3764.59208769287,3749.95301788420,3735.14475358314,3720.17077630894,3705.03460654107,3689.73980289150,3674.28996126805,3658.68871402898,3642.93972912900,3627.04670925691,3611.01339096505,3594.84354379085,3578.54096937056,3562.10950054547,3545.55300046077,3528.87536165735,3512.08050515655,3495.17237953840,3478.15496001321,3461.03224748699,3443.80826762085,3426.48706988448,3409.07272660415,3391.56933200524,3373.98100124966,3356.31186946839,3338.56609078924,3320.74783736021,3302.86129836859,3284.91067905603,3266.90019972991,3248.83409477105,3230.71661163827,3212.55200986968,3194.34456008132,3176.09854296307,3157.81824827224,3139.50797382501,3121.17202448603,3102.81471115623,3084.44034975940,3066.05326022742,-933.946739772580,-3133.94673977258,-3133.94673977258,-3152.34457679274,-3170.73592538189,-3189.11646161437,-3207.48186410653,-3225.82781503279,-3244.15000114076,-3262.44411476530,-3280.70585484129,-3298.93092791486,-3317.11504915278,-3335.25394334987,-3353.34334593411,-3371.37900396928,-3389.35667715487,-3407.27213882297,-3425.12117693200,-3442.89959505701,-3460.60321337625,-3478.22786965390,-3495.76942021862,-3513.22374093777,-3530.58672818702,-3547.85429981512,-3565.02239610366,-3582.08698072153,-3599.04404167389,-3615.88959224540,-3632.61967193756,-3649.23034739980,-3665.71771335427,-3682.07789351399,-3698.30704149419,-3714.40134171660,-3730.35701030657,-3746.17029598262,-3761.83748093842,-3777.35488171689,-3792.71885007615,-3807.92577384731,-3822.97207778369,-3837.85422440134,-3852.56871481080,-3867.11208953965,-3881.48092934591,-3895.67185602185,-3909.68153318832,-3923.50666707909,-3937.14400731524,-3950.59034766939,-3963.84252681944,-3976.89742909188,-3989.75198519427,-4002.40317293686,-4014.84801794310,-4027.08359434900,-4039.10702549094,-4050.91548458206,-4062.50619537682,-4073.87643282371,-4085.02352370595,-4095.94484726996,-4106.63783584154,-4117.09997542952,-4127.32880631682,-4137.32192363877,-4147.07697794848,-4156.59167576924,-4165.86378013369,-4174.89111110978,-4183.67154631329,-4192.20302140678,-4200.48353058497,-4208.51112704628,-4216.28392345056,-4223.80009236283,-4231.05786668288,-4238.05554006076,-4244.79146729794,-4251.26406473411,-4257.47181061951,-4263.41324547271,-4269.08697242372,-4274.49165754243,-4279.62603015222,-4284.48888312868,-4289.07907318345,-4293.39552113299,-4297.43721215231,-4301.20319601357,-4304.69258730945,-4307.90456566136,-4310.83837591231,-4313.49332830443,-4315.86879864112,-4317.96422843387,-4319.77912503350,-4321.31306174602,-4322.56567793292,-4323.53667909599,-4324.22583694655,-4324.22583694655,-4324.22583694655,-4323.94371466853,-4323.37953644128,-4322.53343490677,-4321.40560898897,-4319.99632384709,-4318.30591081323,-4316.33476731450,-4314.08335677956,-4311.55220852966,-4308.74191765422,-4305.65314487091,-4302.28661637030,-4298.64312364513,-4294.72352330426,-4290.52873687121,-4286.05975056757,-4281.31761508107,-4276.30344531863,-4271.01842014416,-4265.46378210146,-4259.64083712207,-4253.55095421823,-4247.19556516102,-4240.57616414376,-4233.69430743067,-4226.55161299103,-4219.14976011877,-4211.49048903765,-4203.57560049212,-4195.40695532395,-4186.98647403477,-4178.31613633449,-4169.39798067591,-4160.23410377544,-4150.82666012014,-4141.17786146120,-4131.28997629396,-4121.16532932453,-4110.80630092328,-4100.21532656516,-4089.39489625714,-4078.34755395277,-4067.07589695408,-4055.58257530095,-4043.87029114807,-4031.94179812961,-4019.79990071189,-4007.44745353397,-3994.88736073652,-3982.12257527907,-3969.15609824570,-3955.99097813950,-3942.63031016586,-3929.07723550472,-3915.33494057208,-3901.40665627089,-3887.29565723137,-3873.00526104119,-3858.53882746545,-3843.89975765678,-3829.09149335572,-3814.11751608152,-3798.98134631365,-3783.68654266408,-3768.23670104063,-3752.63545380156,-3736.88646890158,-3720.99344902949,-3704.96013073763,-3688.79028356343,-3672.48770914314,-3656.05624031805,-3639.49974023335,-3622.82210142993,-3606.02724492913,-3589.11911931098,-3572.10169978579,-3554.97898725957,-3537.75500739343,-3520.43380965706,-3503.01946637673,-3485.51607177782,-3467.92774102224,-3450.25860924097,-3432.51283056182,-3414.69457713279,-3396.80803814117,-3378.85741882861,-3360.84693950249,-3342.78083454363,-3324.66335141085,-3306.49874964226,-3288.29129985390,-3270.04528273565,-3251.76498804482,-3233.45471359760,-3215.11876425861,-3196.76145092881,-3178.38708953198,-3160,-1480;0,0,0,0,0.282122278016382,0.846300505266460,1.69240203977919,2.82022795758017,4.22951309945993,5.91992613331463,7.89106963204436,10.1424801669909,12.6736284168926,15.4839192923316,18.5726920756429,21.9392205762536,25.5827133014150,29.5023136422874,33.6971000753349,38.1660863789811,42.9082218654767,47.9223916279224,53.2074168023916,58.7620548450880,64.5849998244765,70.6748827283159,77.0302717855226,83.6496728027892,90.5315295158793,97.6742239555152,105.076076827773,112.735347908895,120.650236454430,128.818881622595,137.239362911778,145.909700612055,154.827856270633,163.991733171108,173.399176826412,183.047975485349,192.935860652592,203.060507622019,213.419536023272,224.010510381389,234.830940689408,245.878282993780,257.149939992469,268.643261645596,280.355545798481,292.284038816932,304.425936234651,316.778383412575,329.338476210023,342.103261667479,355.069738700850,368.234858807043,381.595526780686,395.148601441830,408.890896374464,422.819180675660,436.930179715179,451.220575905358,465.687009481099,480.326079289769,495.134343590831,510.108320865025,525.244490632894,540.539294282467,555.989135905919,571.590383144987,587.339368044964,603.232387917057,619.265706208915,635.435553383115,651.738127803407,668.169596628500,684.726096713192,701.403735516618,718.198592017411,735.106717635563,752.124137160759,769.246849686975,786.470829553117,803.792027289482,821.206370569813,838.709765168730,856.298095924306,873.967227705576,891.713006384725,909.531259813753,927.417798805377,945.368418117934,963.378897444060,981.445002402911,999.562485535698,1017.72708730429,1035.93453709265,1054.18055421090,1072.46084890173,1090.77112334895,1109.10707268794,1127.46438601774,1145.83874741457,1164.22583694655,1664.22583694655,1664.22583694655,1682.62367396670,1701.01502255586,1719.39555878833,1737.76096128050,1756.10691220676,1774.42909831473,1792.72321193926,1810.98495201526,1829.21002508883,1847.39414632675,1865.53304052383,1883.62244310807,1901.65810114324,1919.63577432883,1937.55123599693,1955.40027410597,1973.17869223098,1990.88231055022,2008.50696682787,2026.04851739259,2043.50283811174,2060.86582536099,2078.13339698909,2095.30149327763,2112.36607789550,2129.32313884786,2146.16868941937,2162.89876911153,2179.50944457376,2195.99681052823,2212.35699068795,2228.58613866815,2244.68043889057,2260.63610748054,2276.44939315659,2292.11657811239,2307.63397889085,2322.99794725011,2338.20487102128,2353.25117495765,2368.13332157531,2382.84781198476,2397.39118671362,2411.76002651987,2425.95095319582,2439.96063036229,2453.78576425305,2467.42310448921,2480.86944484335,2494.12162399341,2507.17652626585,2520.03108236824,2532.68227011082,2545.12711511707,2557.36269152296,2569.38612266491,2581.19458175603,2592.78529255079,2604.15552999768,2615.30262087992,2626.22394444393,2636.91693301551,2647.37907260348,2657.60790349078,2667.60102081273,2677.35607512245,2686.87077294320,2696.14287730765,2705.17020828375,2713.95064348726,2722.48211858075,2730.76262775893,2738.79022422024,2746.56302062453,2754.07918953679,2761.33696385684,2768.33463723472,2775.07056447190,2781.54316190807,2787.75090779348,2793.69234264667,2799.36606959768,2804.77075471640,2809.90512732618,2814.76798030265,2819.35817035742,2823.67461830696,2827.71630932628,2831.48229318753,2834.97168448341,2838.18366283533,2841.11747308628,2843.77242547839,2846.14789581509,2848.24332560784,2850.05822220747,2851.59215891998,2852.84477510688,2853.81577626996,2854.50493412051,2854.50493412051,2854.50493412051,2854.50493412051,2854.22281184250,2853.65863361525,2852.81253208074,2851.68470616293,2850.27542102105,2848.58500798720,2846.61386448847,2844.36245395352,2841.83130570362,2839.02101482818,2835.93224204487,2832.56571354426,2828.92222081910,2825.00262047823,2820.80783404518,2816.33884774153,2811.59671225504,2806.58254249259,2801.29751731812,2795.74287927543,2789.91993429604,2783.83005139220,2777.47466233499,2770.85526131773,2763.97340460464,2756.83071016500,2749.42885729274,2741.76958621162,2733.85469766609,2725.68605249792,2717.26557120874,2708.59523350846,2699.67707784988,2690.51320094941,2681.10575729410,2671.45695863517,2661.56907346792,2651.44442649850,2641.08539809724,2630.49442373913,2619.67399343111,2608.62665112674,2597.35499412805,2585.86167247492,2574.14938832203,2562.22089530358,2550.07899788586,2537.72655070794,2525.16645791049,2512.40167245304,2499.43519541967,2486.27007531347,2472.90940733983,2459.35633267869,2445.61403774605,2431.68575344486,2417.57475440534,2403.28435821516,2388.81792463942,2374.17885483075,2359.37059052968,2344.39661325549,2329.26044348762,2313.96563983805,2298.51579821460,2282.91455097553,2267.16556607555,2251.27254620346,2235.23922791160,2219.06938073740,2202.76680631711,2186.33533749202,2169.77883740732,2153.10119860390,2136.30634210310,2119.39821648495,2102.38079695976,2085.25808443354,2068.03410456740,2050.71290683103,2033.29856355070,2015.79516895178,1998.20683819621,1980.53770641494,1962.79192773579,1944.97367430676,1927.08713531514,1909.13651600258,1891.12603667645,1873.05993171760,1854.94244858482,1836.77784681623,1818.57039702787,1800.32437990962,1782.04408521879,1763.73381077156,1745.39786143257,1727.04054810278,1708.66618670595,1690.27909717397,1190.27909717397,1190.27909717397,1171.88126015381,1153.48991156465,1135.10937533218,1116.74397284002,1098.39802191375,1080.07583580579,1061.78172218125,1043.51998210526,1025.29490903169,1007.11078779377,988.971893596680,970.882491012443,952.846832977271,934.869159791682,916.953698123583,899.104660014547,881.326241889536,863.622623570295,845.997967292647,828.456416727927,811.002096008775,793.639108759528,776.371537131429,759.203440842888,742.138856225016,725.181795272658,708.336244701143,691.606165008988,674.995489546751,658.508123592281,642.147943432560,625.918795452362,609.824495229943,593.868826639973,578.055540963926,562.388356008125,546.870955229662,531.506986870399,516.300063099233,501.253759162860,486.371612545208,471.657122135749,457.113747406895,442.744907600642,428.553980924695,414.544303758224,400.719169867458,387.081829631305,373.635489277161,360.383310127107,347.328407854663,334.473851752272,321.822664009689,309.377819003445,297.142242597550,285.118811455606,273.310352364484,261.719641569727,250.349404122837,239.202313240597,228.280989676583,217.588001105005,207.125861517030,196.897030629729,186.903913307779,177.148858998066,167.634161177310,158.362056812860,149.334725836764,140.554290633256,132.022815539765,123.742306361581,115.714709900273,107.941913495988,100.425744583720,93.1679702636696,86.1702968857903,79.4343696486108,72.9617722124397,66.7540263270367,60.8125914738390,55.1388645228280,49.7341794041157,44.5998067943296,39.7369538178677,35.1467637630963,30.8303158135552,26.7886247942345,23.0226409329828,19.5332496371027,16.3212712851852,13.3874610342339,10.7325086421224,8.35703830542765,6.26160851267769,4.44671191304693,2.91277520053131,1.66015901362976,0.689157850555719,-1.27997612509034e-12,-1.27997612509034e-12;0,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,500,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,420,0];

diff = max(abs(newPos - Solution), [], 'all');

assert( diff <= 1e-1 )