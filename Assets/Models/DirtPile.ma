//Maya ASCII 2017 scene
//Name: DirtPile.ma
//Last modified: Wed, Apr 05, 2017 04:31:48 PM
//Codeset: 1252
requires maya "2017";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -n "pSphere1";
	rename -uid "8E39C954-4267-3BDE-BF0D-EA849EC38FDC";
	setAttr ".t" -type "double3" 2.4 0 0.48 ;
	setAttr ".s" -type "double3" 1 0.44669777381477288 1.1252615548476408 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "001FF497-419A-2871-284F-4D8F3866F5E5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 0.27500003576278687 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -s -n "persp";
	rename -uid "9F6546D3-4E0C-9F6B-4524-258CD4C75AF0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 23.96181415017934 17.971360612634502 23.961814150179336 ;
	setAttr ".r" -type "double3" -27.938352729602379 44.999999999999972 -5.172681101354183e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CA41EE1F-4AF9-2F80-FD20-83B70F95045B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 38.357618239468678;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "031E4179-46EF-B89B-A410-748E8AF0EA8D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E6E89521-4BC0-F328-BE05-82BB4E758D04";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "5AFEC4CF-40AB-940A-5CD1-77B40D7441D0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "1A6D1EEA-4C7D-F5F0-A663-CE83E6605E77";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "2D1DAA71-4275-F3C8-50B0-588B329A529A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "1A7D8690-48FF-0D2B-61CD-AC96F0F8E624";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "5F0A5B67-4915-9231-4B51-2986F98338A3";
	setAttr ".dc" -type "componentList" 21 "f[0:16]" "f[18:19]" "f[33:36]" "f[50:53]" "f[65:67]" "f[74:77]" "f[85:88]" "f[93:99]" "f[105:112]" "f[120:125]" "f[140:143]" "f[309:325]" "f[327:328]" "f[349:388]" "f[402:405]" "f[421:424]" "f[437:439]" "f[448:453]" "f[462:465]" "f[473:477]" "f[483:498]";
createNode deleteComponent -n "deleteComponent1";
	rename -uid "821E8DE1-4ED1-9141-4C58-408D54EB03A1";
	setAttr ".dc" -type "componentList" 19 "f[40:42]" "f[57:62]" "f[77:84]" "f[95:99]" "f[101:104]" "f[115:124]" "f[136:143]" "f[157:162]" "f[179]" "f[460]" "f[478:482]" "f[497:502]" "f[518:519]" "f[521:524]" "f[535:538]" "f[540:544]" "f[556:563]" "f[577:579]" "f[589]";
createNode polyTweak -n "polyTweak1";
	rename -uid "A6ACD3C1-42C7-06E0-8659-05AA97C4FCAA";
	setAttr ".uopa" yes;
	setAttr -s 562 ".tk";
	setAttr ".tk[0]" -type "float3" -0.007623394 0.54925549 0.00078237569 ;
	setAttr ".tk[1]" -type "float3" -0.007620974 0.54684424 0.0012250831 ;
	setAttr ".tk[2]" -type "float3" -0.0076164906 0.55002856 0.0015764131 ;
	setAttr ".tk[3]" -type "float3" -0.0076114186 0.54790795 0.0018019858 ;
	setAttr ".tk[4]" -type "float3" -0.0076057115 0.55127829 0.0018796967 ;
	setAttr ".tk[5]" -type "float3" -0.0075997105 0.54922253 0.0018019895 ;
	setAttr ".tk[6]" -type "float3" -0.0075944299 0.5525291 0.0015764224 ;
	setAttr ".tk[7]" -type "float3" -0.0075899679 0.55028659 0.001225083 ;
	setAttr ".tk[8]" -type "float3" -0.0075874478 0.55330217 0.00078238308 ;
	setAttr ".tk[9]" -type "float3" -0.0075867162 0.55069244 0.00029164072 ;
	setAttr ".tk[10]" -type "float3" -0.0075874478 0.55330217 -0.00019910323 ;
	setAttr ".tk[11]" -type "float3" -0.0075899679 0.97428715 -0.0006418078 ;
	setAttr ".tk[12]" -type "float3" -0.0075944299 0.5525291 -0.00099313667 ;
	setAttr ".tk[13]" -type "float3" -0.0075997426 0.54922259 -0.00121871 ;
	setAttr ".tk[14]" -type "float3" -0.0076057073 0.54856491 -0.0012964305 ;
	setAttr ".tk[15]" -type "float3" -0.0076114521 0.55062145 -0.0012187138 ;
	setAttr ".tk[16]" -type "float3" -0.007616661 0.55002868 -0.00099313667 ;
	setAttr ".tk[17]" -type "float3" -0.0076211323 0.54955781 -0.00064180687 ;
	setAttr ".tk[18]" -type "float3" -0.0076233824 0.97054267 -0.00019910309 ;
	setAttr ".tk[19]" -type "float3" -0.007624283 0.54643762 0.00029164072 ;
	setAttr ".tk[20]" -type "float3" -0.0070699379 0.98023289 0.0012610316 ;
	setAttr ".tk[21]" -type "float3" -0.0070646964 0.98070526 0.002135535 ;
	setAttr ".tk[22]" -type "float3" -0.0070565105 0.98144037 0.0028295584 ;
	setAttr ".tk[23]" -type "float3" -0.00704569 0.9823674 0.0032751488 ;
	setAttr ".tk[24]" -type "float3" -0.0070342794 0.98339367 0.0034286864 ;
	setAttr ".tk[25]" -type "float3" -0.24388435 1.6906487 0.18378535 ;
	setAttr ".tk[26]" -type "float3" -0.18698651 1.6910458 0.15464514 ;
	setAttr ".tk[27]" -type "float3" -0.14183246 1.6913633 0.10925801 ;
	setAttr ".tk[28]" -type "float3" -0.11284162 1.6915647 0.052067086 ;
	setAttr ".tk[29]" -type "float3" -0.10285215 1.6916356 -0.011329602 ;
	setAttr ".tk[30]" -type "float3" -0.11284162 1.6915647 -0.074726313 ;
	setAttr ".tk[31]" -type "float3" -0.1418325 1.6913633 -0.13191728 ;
	setAttr ".tk[32]" -type "float3" -0.18698651 1.6910458 -0.17730439 ;
	setAttr ".tk[33]" -type "float3" -0.24388438 1.7053516 -0.20644444 ;
	setAttr ".tk[34]" -type "float3" -0.0070342906 0.93710572 -0.0028454075 ;
	setAttr ".tk[35]" -type "float3" -0.0070457845 0.93580681 -0.0026918808 ;
	setAttr ".tk[36]" -type "float3" -0.007056566 0.64608532 -0.0022462776 ;
	setAttr ".tk[37]" -type "float3" -0.0070647392 0.98070526 -0.0015522698 ;
	setAttr ".tk[38]" -type "float3" -0.0070700673 1.3134408 -0.00067775993 ;
	setAttr ".tk[39]" -type "float3" -0.0070717805 1.3132794 0.00029164072 ;
	setAttr ".tk[40]" -type "float3" -0.0061498303 1.0608394 0 ;
	setAttr ".tk[41]" -type "float3" -0.0061425194 1.0612607 0 ;
	setAttr ".tk[42]" -type "float3" -0.0061300471 0.58511877 0.0040202131 ;
	setAttr ".tk[43]" -type "float3" -0.0061147604 0.58647978 0.0046748132 ;
	setAttr ".tk[44]" -type "float3" -0.3066377 1.5310848 0.29007405 ;
	setAttr ".tk[45]" -type "float3" -0.21397658 1.5315975 0.27532247 ;
	setAttr ".tk[46]" -type "float3" -0.13038582 1.3664526 0.23251107 ;
	setAttr ".tk[47]" -type "float3" -0.064047888 1.3664509 0.16583094 ;
	setAttr ".tk[48]" -type "float3" -0.021456182 1.3664509 0.08180929 ;
	setAttr ".tk[49]" -type "float3" -0.0067800791 1.3664509 -0.011329602 ;
	setAttr ".tk[50]" -type "float3" -0.021456182 1.3664509 -0.10446845 ;
	setAttr ".tk[51]" -type "float3" -0.064047888 1.3664509 -0.18849017 ;
	setAttr ".tk[52]" -type "float3" -0.13038585 1.3664526 -0.25517029 ;
	setAttr ".tk[53]" -type "float3" -0.21397662 1.5315975 -0.29798144 ;
	setAttr ".tk[54]" -type "float3" -0.0060978299 0.58798909 -0.0043171099 ;
	setAttr ".tk[55]" -type "float3" -0.0061147772 0.58647972 -0.004091558 ;
	setAttr ".tk[56]" -type "float3" -0.0061299163 0.58511895 -0.0034369167 ;
	setAttr ".tk[57]" -type "float3" -0.0061427355 0.5840385 -0.0024174007 ;
	setAttr ".tk[58]" -type "float3" -0.0061501265 1.0608394 -5.9604645e-008 ;
	setAttr ".tk[59]" -type "float3" -0.0061524361 1.0606937 0 ;
	setAttr ".tk[60]" -type "float3" -0.0048868409 0.60049462 0 ;
	setAttr ".tk[61]" -type "float3" -0.0048762881 0.97856307 0 ;
	setAttr ".tk[62]" -type "float3" -0.0048611588 0.78247964 0.0051190578 ;
	setAttr ".tk[63]" -type "float3" -0.0048406483 0.78424227 0.0059665549 ;
	setAttr ".tk[64]" -type "float3" -0.3062036 1.4490952 0.3789002 ;
	setAttr ".tk[65]" -type "float3" -0.18623446 1.284463 0.35980123 ;
	setAttr ".tk[66]" -type "float3" -0.078008756 1.2844619 0.30437288 ;
	setAttr ".tk[67]" -type "float3" 0.0078795999 1.2844614 0.21804187 ;
	setAttr ".tk[68]" -type "float3" 0.06302315 1.2844615 0.109258 ;
	setAttr ".tk[69]" -type "float3" 0.082024604 1.2844614 -0.011329602 ;
	setAttr ".tk[70]" -type "float3" 0.06302315 1.2844615 -0.13191727 ;
	setAttr ".tk[71]" -type "float3" 0.0078796083 1.2844614 -0.24070093 ;
	setAttr ".tk[72]" -type "float3" -0.078008771 1.284463 -0.32703236 ;
	setAttr ".tk[73]" -type "float3" -0.18623438 1.449759 -0.38246012 ;
	setAttr ".tk[74]" -type "float3" -0.004818812 0.7014792 0 ;
	setAttr ".tk[75]" -type "float3" -0.0048406692 0.50404614 -0.0053833541 ;
	setAttr ".tk[76]" -type "float3" -0.0048610955 0.50228363 -0.0045357258 ;
	setAttr ".tk[77]" -type "float3" -0.0048763091 0.97856307 0 ;
	setAttr ".tk[78]" -type "float3" -0.0048869275 0.6004945 0 ;
	setAttr ".tk[79]" -type "float3" -0.0048903967 0.60004592 0 ;
	setAttr ".tk[80]" -type "float3" -0.0033109402 0.73681378 0 ;
	setAttr ".tk[81]" -type "float3" -0.0032986156 0.73838043 0 ;
	setAttr ".tk[82]" -type "float3" -0.0032799987 0.74082053 0 ;
	setAttr ".tk[83]" -type "float3" -0.0032560376 0.74389482 0 ;
	setAttr ".tk[84]" -type "float3" -0.30566385 1.4477525 0.45558152 ;
	setAttr ".tk[85]" -type "float3" -0.16134074 1.4482386 0.43272406 ;
	setAttr ".tk[86]" -type "float3" -0.031145014 1.4049007 0.36846107 ;
	setAttr ".tk[87]" -type "float3" 0.072178856 1.3759849 0.26460469 ;
	setAttr ".tk[88]" -type "float3" 0.13851672 1.3764478 0.13373755 ;
	setAttr ".tk[89]" -type "float3" 0.16137516 1.3766086 -0.011329602 ;
	setAttr ".tk[90]" -type "float3" 0.13851672 1.3764478 -0.15639675 ;
	setAttr ".tk[91]" -type "float3" 0.072178856 1.3759849 -0.28726369 ;
	setAttr ".tk[92]" -type "float3" -0.031145059 1.4049007 -0.39112055 ;
	setAttr ".tk[93]" -type "float3" -0.1613408 1.4482386 -0.45558152 ;
	setAttr ".tk[94]" -type "float3" -0.0032294374 0.70027322 0 ;
	setAttr ".tk[95]" -type "float3" -0.0032560008 0.46369851 0 ;
	setAttr ".tk[96]" -type "float3" -0.0032800937 0.4606241 0 ;
	setAttr ".tk[97]" -type "float3" -0.0032987273 0.73838055 0 ;
	setAttr ".tk[98]" -type "float3" -0.0033108999 0.73681414 0 ;
	setAttr ".tk[99]" -type "float3" -0.0033156453 0.73627472 0 ;
	setAttr ".tk[100]" -type "float3" -0.0014623958 0.28820729 0 ;
	setAttr ".tk[101]" -type "float3" -0.0014483207 0.28999877 0 ;
	setAttr ".tk[102]" -type "float3" -0.0014262124 0.29279035 0 ;
	setAttr ".tk[103]" -type "float3" -0.0013990811 0.29630756 0 ;
	setAttr ".tk[104]" -type "float3" -0.0013684066 0.30020684 0 ;
	setAttr ".tk[105]" -type "float3" -0.001337999 0.72524881 0 ;
	setAttr ".tk[106]" -type "float3" -0.0013105737 0.22935031 0.0069360151 ;
	setAttr ".tk[107]" -type "float3" 0.12726642 1.1600031 0.30437285 ;
	setAttr ".tk[108]" -type "float3" 0.20316523 1.0632313 0.15464513 ;
	setAttr ".tk[109]" -type "float3" 0.22931808 1.0632313 -0.011329602 ;
	setAttr ".tk[110]" -type "float3" 0.20316523 1.0632313 -0.17730439 ;
	setAttr ".tk[111]" -type "float3" 0.12726636 1.1600031 -0.32703239 ;
	setAttr ".tk[112]" -type "float3" -0.001310539 0.22935033 -0.0063527343 ;
	setAttr ".tk[113]" -type "float3" -0.0013380528 0.44505262 0 ;
	setAttr ".tk[114]" -type "float3" -0.0013684054 0.020010605 0 ;
	setAttr ".tk[115]" -type "float3" -0.0013990594 0.2963075 0 ;
	setAttr ".tk[116]" -type "float3" -0.001426288 0.29279035 0 ;
	setAttr ".tk[117]" -type "float3" -0.0014483804 0.28999865 0 ;
	setAttr ".tk[118]" -type "float3" -0.0014622707 0.28820729 0 ;
	setAttr ".tk[119]" -type "float3" -0.0014668908 0.28758907 0 ;
	setAttr ".tk[120]" -type "float3" 0.00061516033 0.28697431 0 ;
	setAttr ".tk[121]" -type "float3" 0.0006305835 0.28894782 0 ;
	setAttr ".tk[122]" -type "float3" 0.00065477693 0.29202217 0 ;
	setAttr ".tk[123]" -type "float3" 0.00068478548 0.29589623 0 ;
	setAttr ".tk[124]" -type "float3" 0.00071833382 0.30019045 0 ;
	setAttr ".tk[125]" -type "float3" 0.00075166801 0.64775395 0 ;
	setAttr ".tk[126]" -type "float3" 0.00078208552 0.36918315 0 ;
	setAttr ".tk[127]" -type "float3" 0.17178598 1.1074725 0.33636755 ;
	setAttr ".tk[128]" -type "float3" 0.25537699 0.92943722 0.17146562 ;
	setAttr ".tk[129]" -type "float3" 0.28418034 0.92943722 -0.011329602 ;
	setAttr ".tk[130]" -type "float3" 0.25537699 0.92943722 -0.19412491 ;
	setAttr ".tk[131]" -type "float3" 0.17178598 1.1074725 -0.35902709 ;
	setAttr ".tk[132]" -type "float3" 0.00078208378 0.18833135 -0.0070260353 ;
	setAttr ".tk[133]" -type "float3" 0.00075168867 0.36755764 0 ;
	setAttr ".tk[134]" -type "float3" 0.00071834039 0.019994274 0 ;
	setAttr ".tk[135]" -type "float3" 0.0006847984 0.29589617 0 ;
	setAttr ".tk[136]" -type "float3" 0.00065468246 0.29202223 0 ;
	setAttr ".tk[137]" -type "float3" 0.00063064462 0.28894794 0 ;
	setAttr ".tk[138]" -type "float3" 0.00061532762 0.28697419 0 ;
	setAttr ".tk[139]" -type "float3" 0.00061031117 0.28629363 0 ;
	setAttr ".tk[140]" -type "float3" 0.0028696486 0.28606546 0 ;
	setAttr ".tk[141]" -type "float3" 0.0028855805 0.28817284 0 ;
	setAttr ".tk[142]" -type "float3" 0.0029116049 0.2914542 0 ;
	setAttr ".tk[143]" -type "float3" 0.0029437772 0.29558915 0 ;
	setAttr ".tk[144]" -type "float3" 0.0029796232 0.30017281 0 ;
	setAttr ".tk[145]" -type "float3" 0.0030152451 0.30475658 0 ;
	setAttr ".tk[146]" -type "float3" 0.0030472912 0.028695539 0 ;
	setAttr ".tk[147]" -type "float3" 0.0030735359 0.14596632 0.0059665828 ;
	setAttr ".tk[148]" -type "float3" 0.0030895637 0.14741901 0.003275163 ;
	setAttr ".tk[149]" -type "float3" 0.0030953742 0.28783008 0 ;
	setAttr ".tk[150]" -type "float3" 0.0030895637 0.14741901 -0.0026918696 ;
	setAttr ".tk[151]" -type "float3" 0.0030733265 0.14596628 -0.0053833215 ;
	setAttr ".tk[152]" -type "float3" 0.0030474991 0.028695419 0 ;
	setAttr ".tk[153]" -type "float3" 0.0030152467 0.024560407 0 ;
	setAttr ".tk[154]" -type "float3" 0.0029795878 0.019976571 0 ;
	setAttr ".tk[155]" -type "float3" 0.0029436983 0.015392914 0 ;
	setAttr ".tk[156]" -type "float3" 0.002911509 0.29145396 0 ;
	setAttr ".tk[157]" -type "float3" 0.0028853565 0.28817284 0 ;
	setAttr ".tk[158]" -type "float3" 0.0028697101 0.28606558 0 ;
	setAttr ".tk[159]" -type "float3" 0.0028632546 0.28534055 0 ;
	setAttr ".tk[160]" -type "float3" 0.0052456809 0.28550363 0 ;
	setAttr ".tk[161]" -type "float3" 0.005262401 0.28769171 0 ;
	setAttr ".tk[162]" -type "float3" 0.0052887406 0.29109973 0 ;
	setAttr ".tk[163]" -type "float3" 0.0053219087 0.295394 0 ;
	setAttr ".tk[164]" -type "float3" 0 0.30019623 0 ;
	setAttr ".tk[165]" -type "float3" 0 0.068217188 0 ;
	setAttr ".tk[166]" -type "float3" 0 0.068217188 0 ;
	setAttr ".tk[167]" -type "float3" 0.0054566138 0.032420889 0 ;
	setAttr ".tk[168]" -type "float3" 0.0054737078 0.034609154 0 ;
	setAttr ".tk[169]" -type "float3" 0.0054787006 0.035362259 0 ;
	setAttr ".tk[170]" -type "float3" 0.0054737078 0.034609154 0 ;
	setAttr ".tk[171]" -type "float3" 0.0054566604 0.032420948 0 ;
	setAttr ".tk[172]" -type "float3" 0.0054296753 0.029012993 0 ;
	setAttr ".tk[173]" -type "float3" 0.0053962911 0.0247183 0 ;
	setAttr ".tk[174]" -type "float3" 0.0053592548 0.019958094 0 ;
	setAttr ".tk[175]" -type "float3" 0.0053219944 0.015197888 0 ;
	setAttr ".tk[176]" -type "float3" 0.0052890265 0.010903195 0 ;
	setAttr ".tk[177]" -type "float3" 0.0052619148 0.28769219 0 ;
	setAttr ".tk[178]" -type "float3" 0.0052452623 0.28550398 0 ;
	setAttr ".tk[179]" -type "float3" 0.0052388436 0.28474998 0 ;
	setAttr ".tk[180]" -type "float3" 0 0.30019623 0 ;
	setAttr ".tk[181]" -type "float3" 0 0.30019623 0 ;
	setAttr ".tk[182]" -type "float3" 0 0.30019623 0 ;
	setAttr ".tk[183]" -type "float3" 0 0.28019625 -0.09674453 ;
	setAttr ".tk[184]" -type "float3" 0 0.048217192 -0.09674453 ;
	setAttr ".tk[185]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[186]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[187]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[188]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[189]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[190]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[191]" -type "float3" 0.0075853784 0.012559667 0 ;
	setAttr ".tk[192]" -type "float3" 0.0075584892 0.0091092885 0 ;
	setAttr ".tk[193]" -type "float3" 0.0075246156 0.0047605932 0 ;
	setAttr ".tk[194]" -type "float3" 0.0077989106 0.019939378 0 ;
	setAttr ".tk[195]" -type "float3" 0.0077611548 0.015119687 0 ;
	setAttr ".tk[196]" -type "float3" 0.0077270335 0.010771647 0 ;
	setAttr ".tk[197]" -type "float3" 0.0077009699 0.0073212087 0 ;
	setAttr ".tk[198]" -type "float3" 0.0076831728 0.0051055253 0 ;
	setAttr ".tk[199]" -type "float3" 0.0076763956 0.28453863 0 ;
	setAttr ".tk[200]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[201]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[202]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[203]" -type "float3" 0 0.048217192 -0.09674453 ;
	setAttr ".tk[204]" -type "float3" 0 0.048217192 -0.09674453 ;
	setAttr ".tk[205]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[206]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[207]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[208]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[209]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[210]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[211]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[212]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[213]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[214]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[215]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[216]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[217]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[218]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[219]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[220]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[221]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[222]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[223]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[224]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[225]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[226]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[227]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[228]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[229]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[230]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[231]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[232]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[233]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[234]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[235]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[236]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[237]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[238]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[239]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[240]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[241]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[242]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[243]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[244]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[245]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[246]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[247]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[248]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[249]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[250]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[251]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[252]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[253]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[254]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[255]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[256]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[257]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[258]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[259]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[260]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[261]" -type "float3" 0 0.3005268 0.0051190578 ;
	setAttr ".tk[262]" -type "float3" 0 0.3005268 0.0069360114 ;
	setAttr ".tk[263]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[264]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[265]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[266]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[267]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[268]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[269]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[270]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[271]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[272]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[273]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[274]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[275]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[276]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[277]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[278]" -type "float3" -0.26075774 0.048217192 0 ;
	setAttr ".tk[279]" -type "float3" -0.26075774 0.048217192 0 ;
	setAttr ".tk[280]" -type "float3" 0 0.37731406 0.0025098771 ;
	setAttr ".tk[281]" -type "float3" 0 0.37731406 0.0045109536 ;
	setAttr ".tk[282]" -type "float3" 0 0.37731406 0.0060990197 ;
	setAttr ".tk[283]" -type "float3" 0 0.37731406 0.0071186232 ;
	setAttr ".tk[284]" -type "float3" 0 0.048217192 -0.0097723305 ;
	setAttr ".tk[285]" -type "float3" 0 0.048217192 -0.0097723305 ;
	setAttr ".tk[286]" -type "float3" 0 0.37731406 0.0060989917 ;
	setAttr ".tk[287]" -type "float3" 0 0.37731406 0.0045109624 ;
	setAttr ".tk[288]" -type "float3" 0 0.048217237 0 ;
	setAttr ".tk[289]" -type "float3" 0 0.048217237 0 ;
	setAttr ".tk[290]" -type "float3" 0 0.048217237 0 ;
	setAttr ".tk[291]" -type "float3" 0 0.37731415 -0.0039276718 ;
	setAttr ".tk[292]" -type "float3" 0 0.37731415 -0.0055157286 ;
	setAttr ".tk[293]" -type "float3" 0 0.37731415 -0.0065354146 ;
	setAttr ".tk[294]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[295]" -type "float3" 0 0.048217192 0 ;
	setAttr ".tk[296]" -type "float3" 0 0.37731406 -0.0055157244 ;
	setAttr ".tk[297]" -type "float3" 0 0.37731406 -0.0039276793 ;
	setAttr ".tk[298]" -type "float3" -0.26075774 0.37731406 -0.0019265732 ;
	setAttr ".tk[299]" -type "float3" -0.26075774 0.37731406 0.00029164072 ;
	setAttr ".tk[300]" -type "float3" -0.22315182 0.44289562 0.002135535 ;
	setAttr ".tk[301]" -type "float3" -0.22315182 0.44289562 0.0037989183 ;
	setAttr ".tk[302]" -type "float3" 0 0.44289568 0.0051190578 ;
	setAttr ".tk[303]" -type "float3" 0 0.44289568 0.0059665549 ;
	setAttr ".tk[304]" -type "float3" 0 0.44289568 -0.0035136938 ;
	setAttr ".tk[305]" -type "float3" 0 0.44289562 -0.0038057715 ;
	setAttr ".tk[306]" -type "float3" 0 0.44289562 0.0051190406 ;
	setAttr ".tk[307]" -type "float3" 0 0.44289568 0.003798937 ;
	setAttr ".tk[308]" -type "float3" 0 0.44289568 0.0021355201 ;
	setAttr ".tk[309]" -type "float3" 0 0.048217237 0 ;
	setAttr ".tk[310]" -type "float3" 0 0.048217237 0 ;
	setAttr ".tk[311]" -type "float3" 0 0.44289568 -0.0032156799 ;
	setAttr ".tk[312]" -type "float3" 0 0.44289568 -0.0045357342 ;
	setAttr ".tk[313]" -type "float3" 0 0.44289568 -0.0053833541 ;
	setAttr ".tk[314]" -type "float3" 0 0.44289568 -0.0056753797 ;
	setAttr ".tk[315]" -type "float3" 0 0.44289562 -0.0053833541 ;
	setAttr ".tk[316]" -type "float3" 0 0.44289562 -0.0045357258 ;
	setAttr ".tk[317]" -type "float3" 0 0.44289562 -0.0032156846 ;
	setAttr ".tk[318]" -type "float3" 0 0.44289568 -0.0015522689 ;
	setAttr ".tk[319]" -type "float3" 0 0.44289568 0.00029164072 ;
	setAttr ".tk[320]" -type "float3" -0.22315182 0.79711348 0.0017158202 ;
	setAttr ".tk[321]" -type "float3" -0.22315182 0.79711348 0.0030006072 ;
	setAttr ".tk[322]" -type "float3" 0 0.79711348 0.0040202131 ;
	setAttr ".tk[323]" -type "float3" 0 0.79711348 0.0046748132 ;
	setAttr ".tk[324]" -type "float3" 0 0.49565852 0.004900387 ;
	setAttr ".tk[325]" -type "float3" 0 0.49565852 0.0046748039 ;
	setAttr ".tk[326]" -type "float3" 0 0.79711348 0.0040202062 ;
	setAttr ".tk[327]" -type "float3" 0 0.79711348 0.0030005798 ;
	setAttr ".tk[328]" -type "float3" 0 0.49565852 0.0017158272 ;
	setAttr ".tk[329]" -type "float3" 0 0.49565852 0.00029164072 ;
	setAttr ".tk[330]" -type "float3" 0 0.49565852 -0.0011325412 ;
	setAttr ".tk[331]" -type "float3" 0 0.49565852 -0.0024173229 ;
	setAttr ".tk[332]" -type "float3" 0 0.49565852 -0.0034369053 ;
	setAttr ".tk[333]" -type "float3" 0 0.49565852 -0.0040915636 ;
	setAttr ".tk[334]" -type "float3" 0 0.49565852 -0.0043171099 ;
	setAttr ".tk[335]" -type "float3" 0 0.49565852 -0.12852424 ;
	setAttr ".tk[336]" -type "float3" 0 0.49565852 -0.12786961 ;
	setAttr ".tk[337]" -type "float3" 0 0.79711348 -0.0024173276 ;
	setAttr ".tk[338]" -type "float3" 0 0.79711348 -0.0011325445 ;
	setAttr ".tk[339]" -type "float3" 0 0.79711348 0.00029164072 ;
	setAttr ".tk[340]" -type "float3" 0 0.8618449 0.0012610316 ;
	setAttr ".tk[341]" -type "float3" 0 0.8618449 0.002135535 ;
	setAttr ".tk[342]" -type "float3" 0 0.8618449 0.0028295584 ;
	setAttr ".tk[343]" -type "float3" 0 0.8618449 0.0032751488 ;
	setAttr ".tk[344]" -type "float3" 0 0.8618449 0.0034286864 ;
	setAttr ".tk[345]" -type "float3" 0 0.8618449 0.0032751451 ;
	setAttr ".tk[346]" -type "float3" 0 0.8618449 0.0028295522 ;
	setAttr ".tk[347]" -type "float3" 0 0.8618449 0.0021355355 ;
	setAttr ".tk[348]" -type "float3" 0 0.8618449 0.0012610275 ;
	setAttr ".tk[349]" -type "float3" 0 0.8618449 0.00029164072 ;
	setAttr ".tk[350]" -type "float3" 0 0.8618449 -0.00067776395 ;
	setAttr ".tk[351]" -type "float3" 0 0.8618449 -0.0015522651 ;
	setAttr ".tk[352]" -type "float3" 0 0.8618449 -0.0022462804 ;
	setAttr ".tk[353]" -type "float3" 0 0.8618449 -0.002691875 ;
	setAttr ".tk[354]" -type "float3" 0 0.8618449 -0.0028454075 ;
	setAttr ".tk[355]" -type "float3" 0 0.8618449 -0.12712458 ;
	setAttr ".tk[356]" -type "float3" 0 0.8618449 -0.12667897 ;
	setAttr ".tk[357]" -type "float3" 0 0.8618449 -0.0015522698 ;
	setAttr ".tk[358]" -type "float3" 0 0.8618449 -0.00067775993 ;
	setAttr ".tk[359]" -type "float3" 0 0.8618449 0.00029164072 ;
	setAttr ".tk[360]" -type "float3" 0 0.9013325 0.00078237569 ;
	setAttr ".tk[361]" -type "float3" 0 0.9013325 0.0012250831 ;
	setAttr ".tk[362]" -type "float3" 0 0.9013325 0.0015764131 ;
	setAttr ".tk[363]" -type "float3" 0 0.9013325 0.0018019858 ;
	setAttr ".tk[364]" -type "float3" 0 0.9013325 0.0018796967 ;
	setAttr ".tk[365]" -type "float3" 0 0.9013325 0.0018019895 ;
	setAttr ".tk[366]" -type "float3" 0 0.9013325 0.0015764224 ;
	setAttr ".tk[367]" -type "float3" 0 0.9013325 0.001225083 ;
	setAttr ".tk[368]" -type "float3" 0 0.9013325 0.00078238308 ;
	setAttr ".tk[369]" -type "float3" 0 0.9013325 0.00029164072 ;
	setAttr ".tk[370]" -type "float3" 0 0.9013325 -0.00019910323 ;
	setAttr ".tk[371]" -type "float3" 0 0.9013325 -0.0006418078 ;
	setAttr ".tk[372]" -type "float3" 0 0.9013325 -0.00099313667 ;
	setAttr ".tk[373]" -type "float3" 0 0.9013325 -0.00121871 ;
	setAttr ".tk[374]" -type "float3" 0 0.9013325 -0.0012964305 ;
	setAttr ".tk[375]" -type "float3" 0 0.9013325 -0.0012187138 ;
	setAttr ".tk[376]" -type "float3" 0 0.9013325 -0.00099313667 ;
	setAttr ".tk[377]" -type "float3" 0 0.9013325 -0.00064180687 ;
	setAttr ".tk[378]" -type "float3" 0 0.9013325 -0.00019910309 ;
	setAttr ".tk[379]" -type "float3" 0 0.9013325 0.00029164072 ;
	setAttr ".tk[380]" -type "float3" -0.0077973912 1.8263402 0.00029164072 ;
	setAttr ".tk[381]" -type "float3" 0 0.91460365 0.00029164072 ;
	setAttr ".tk[382]" -type "float3" -0.0076218997 0.97069371 0.0010037345 ;
	setAttr ".tk[383]" -type "float3" -0.0073426459 1.0092407 0.0016803076 ;
	setAttr ".tk[384]" -type "float3" -0.0076189656 0.54707956 0.0014007548 ;
	setAttr ".tk[385]" -type "float3" -0.0076139015 0.97161168 0.0016892018 ;
	setAttr ".tk[386]" -type "float3" -0.0073285904 1.0104934 0.0025385516 ;
	setAttr ".tk[387]" -type "float3" -0.0076082586 0.55095005 0.0018408536 ;
	setAttr ".tk[388]" -type "float3" -0.0076024751 0.97289479 0.0018408452 ;
	setAttr ".tk[389]" -type "float3" -0.0073110703 0.54990882 0.002538556 ;
	setAttr ".tk[390]" -type "float3" -0.0075968257 0.55223286 0.0016892082 ;
	setAttr ".tk[391]" -type "float3" -0.0075921547 0.97405159 0.0014007554 ;
	setAttr ".tk[392]" -type "float3" -0.0072972449 0.97277761 0.0016803037 ;
	setAttr ".tk[393]" -type "float3" -0.0075884587 0.55043691 0.001003738 ;
	setAttr ".tk[394]" -type "float3" -0.0075869802 0.97464114 0.00053700793 ;
	setAttr ".tk[395]" -type "float3" -0.0072915941 0.55209601 0.00029164072 ;
	setAttr ".tk[396]" -type "float3" -0.0075869802 0.97464114 4.6267378e-005 ;
	setAttr ".tk[397]" -type "float3" -0.0075884587 0.55043691 -0.00042045393 ;
	setAttr ".tk[398]" -type "float3" -0.0072971983 0.97277778 -0.0010970376 ;
	setAttr ".tk[399]" -type "float3" -0.0075921547 0.55276442 -0.00081747759 ;
	setAttr ".tk[400]" -type "float3" -0.0075967293 0.55223286 -0.001105926 ;
	setAttr ".tk[401]" -type "float3" -0.007311055 0.67883092 -0.0019552871 ;
	setAttr ".tk[402]" -type "float3" -0.0076024788 0.54889387 -0.0012575649 ;
	setAttr ".tk[403]" -type "float3" -0.0076082442 1.4005972 -0.0012575679 ;
	setAttr ".tk[404]" -type "float3" -0.0073285904 1.3975992 -0.0019552794 ;
	setAttr ".tk[405]" -type "float3" -0.0076138806 0.97868347 -0.001105926 ;
	setAttr ".tk[406]" -type "float3" -0.0076188985 0.97362834 -0.00081747235 ;
	setAttr ".tk[407]" -type "float3" -0.0073428261 1.0112574 -0.0010970262 ;
	setAttr ".tk[408]" -type "float3" -0.0076219426 0.9732427 -0.00042045725 ;
	setAttr ".tk[409]" -type "float3" -0.0076238783 0.54649001 4.6267105e-005 ;
	setAttr ".tk[410]" -type "float3" -0.0073480308 1.0087636 0.00029164072 ;
	setAttr ".tk[411]" -type "float3" -0.0076239901 0.97049129 0.00053700648 ;
	setAttr ".tk[412]" -type "float3" -0.0066099185 0.6141116 0.0014884309 ;
	setAttr ".tk[413]" -type "float3" -0.0066037499 0.6146943 0.0025680738 ;
	setAttr ".tk[414]" -type "float3" -0.0065929294 0.61560225 0.0034248901 ;
	setAttr ".tk[415]" -type "float3" -0.0065802308 0.61674595 0.0039749821 ;
	setAttr ".tk[416]" -type "float3" -0.0065659597 0.61801434 0.0041645286 ;
	setAttr ".tk[417]" -type "float3" -0.22893044 1.5167595 0.22955392 ;
	setAttr ".tk[418]" -type "float3" -0.15868619 1.3964776 0.19357809 ;
	setAttr ".tk[419]" -type "float3" -0.10293995 1.3964776 0.13754462 ;
	setAttr ".tk[420]" -type "float3" -0.067148872 1.3964776 0.066938184 ;
	setAttr ".tk[421]" -type "float3" -0.05481619 1.3964776 -0.011329602 ;
	setAttr ".tk[422]" -type "float3" -0.067148872 1.3964776 -0.089597389 ;
	setAttr ".tk[423]" -type "float3" -0.10293995 1.3964776 -0.1602038 ;
	setAttr ".tk[424]" -type "float3" -0.15868625 1.3964776 -0.21623719 ;
	setAttr ".tk[425]" -type "float3" -0.2289305 1.5615396 -0.25221297 ;
	setAttr ".tk[426]" -type "float3" -0.0065659522 0.61801434 -0.0035812804 ;
	setAttr ".tk[427]" -type "float3" -0.0065802303 0.61674607 -0.0033916866 ;
	setAttr ".tk[428]" -type "float3" -0.0065929117 0.61560231 -0.0028415835 ;
	setAttr ".tk[429]" -type "float3" -0.006604135 0.61469424 -0.0019848435 ;
	setAttr ".tk[430]" -type "float3" -0.0066102743 0.61411154 -0.00090520841 ;
	setAttr ".tk[431]" -type "float3" -0.0066119758 0.61391026 0.00029164072 ;
	setAttr ".tk[432]" -type "float3" -0.0055181654 0.64248204 0 ;
	setAttr ".tk[433]" -type "float3" -0.0055092806 1.019912 0 ;
	setAttr ".tk[434]" -type "float3" -0.0054954537 0.82389736 0.0045696297 ;
	setAttr ".tk[435]" -type "float3" -0.0054777134 0.82545924 0.0053207185 ;
	setAttr ".tk[436]" -type "float3" -0.30642059 1.49009 0.3344872 ;
	setAttr ".tk[437]" -type "float3" -0.20010537 1.3254578 0.31756163 ;
	setAttr ".tk[438]" -type "float3" -0.10419736 1.3254578 0.268442 ;
	setAttr ".tk[439]" -type "float3" -0.028084157 1.3254561 0.19193637 ;
	setAttr ".tk[440]" -type "float3" 0.020783495 1.1702685 0.095533676 ;
	setAttr ".tk[441]" -type "float3" 0.037622217 1.1705486 -0.011329602 ;
	setAttr ".tk[442]" -type "float3" 0.020783495 1.1702685 -0.11819291 ;
	setAttr ".tk[443]" -type "float3" -0.028084148 1.3254561 -0.21459569 ;
	setAttr ".tk[444]" -type "float3" -0.10419742 1.3254578 -0.29110131 ;
	setAttr ".tk[445]" -type "float3" -0.20010538 1.490677 -0.34022099 ;
	setAttr ".tk[446]" -type "float3" -0.0054582693 0.54699445 -0.0049962392 ;
	setAttr ".tk[447]" -type "float3" -0.0054776631 0.54526299 -0.0047373995 ;
	setAttr ".tk[448]" -type "float3" -0.0054953573 0.54370117 -0.0039862981 ;
	setAttr ".tk[449]" -type "float3" -0.0055093835 1.019912 0 ;
	setAttr ".tk[450]" -type "float3" -0.005518279 1.0194278 0 ;
	setAttr ".tk[451]" -type "float3" -0.005521731 0.64208412 0 ;
	setAttr ".tk[452]" -type "float3" -0.0040989164 0.54865408 0 ;
	setAttr ".tk[453]" -type "float3" -0.0040876232 0.92729199 0 ;
	setAttr ".tk[454]" -type "float3" -0.0040705209 0.92822909 0 ;
	setAttr ".tk[455]" -type "float3" -0.0040485468 0.92941058 0 ;
	setAttr ".tk[456]" -type "float3" -0.30593368 1.4645153 0.41617841 ;
	setAttr ".tk[457]" -type "float3" -0.17378743 1.233508 0.3974714 ;
	setAttr ".tk[458]" -type "float3" -0.054576904 1.233508 0.33641723 ;
	setAttr ".tk[459]" -type "float3" 0.040029135 1.233508 0.24132323 ;
	setAttr ".tk[460]" -type "float3" 0.1007702 1.233508 0.12149774 ;
	setAttr ".tk[461]" -type "float3" 0.12169997 1.233508 -0.011329602 ;
	setAttr ".tk[462]" -type "float3" 0.1007702 1.233508 -0.14415707 ;
	setAttr ".tk[463]" -type "float3" 0.040029135 1.233508 -0.26398242 ;
	setAttr ".tk[464]" -type "float3" -0.054577019 1.233508 -0.35907611 ;
	setAttr ".tk[465]" -type "float3" -0.1737875 1.39887 -0.42013001 ;
	setAttr ".tk[466]" -type "float3" -0.0040240814 0.6505239 0 ;
	setAttr ".tk[467]" -type "float3" -0.0040484956 0.64921427 0 ;
	setAttr ".tk[468]" -type "float3" -0.0040703756 0.64803302 0 ;
	setAttr ".tk[469]" -type "float3" -0.0040875655 0.92729199 0 ;
	setAttr ".tk[470]" -type "float3" -0.0040987865 0.54865408 0 ;
	setAttr ".tk[471]" -type "float3" -0.0041025034 0.54816031 0 ;
	setAttr ".tk[472]" -type "float3" -0.0023868515 0.6763978 0 ;
	setAttr ".tk[473]" -type "float3" -0.0023736332 0.6780777 0 ;
	setAttr ".tk[474]" -type "float3" -0.0023532938 0.68069291 0 ;
	setAttr ".tk[475]" -type "float3" -0.0023272438 0.68398905 0 ;
	setAttr ".tk[476]" -type "float3" -0.0022989481 0.68764234 0 ;
	setAttr ".tk[477]" -type "float3" -0.0022705232 0.92234159 0 ;
	setAttr ".tk[478]" -type "float3" -0.0022448595 0.51473165 0.0065174974 ;
	setAttr ".tk[479]" -type "float3" 0.099722594 1.3165138 0.28448868 ;
	setAttr ".tk[480]" -type "float3" 0.17084101 1.3170128 0.14419135 ;
	setAttr ".tk[481]" -type "float3" 0.19534677 1.3171827 -0.011329602 ;
	setAttr ".tk[482]" -type "float3" 0.17084101 1.3170128 -0.16685057 ;
	setAttr ".tk[483]" -type "float3" 0.099722534 1.3165138 -0.30714798 ;
	setAttr ".tk[484]" -type "float3" -0.0022448166 0.51473171 -0.0059342729 ;
	setAttr ".tk[485]" -type "float3" -0.002270546 0.64214534 0 ;
	setAttr ".tk[486]" -type "float3" -0.0022989938 0.40744615 0 ;
	setAttr ".tk[487]" -type "float3" -0.0023272703 0.68398905 0 ;
	setAttr ".tk[488]" -type "float3" -0.0023532631 0.68069291 0 ;
	setAttr ".tk[489]" -type "float3" -0.0023737233 0.6780777 0 ;
	setAttr ".tk[490]" -type "float3" -0.002386794 0.67639804 0 ;
	setAttr ".tk[491]" -type "float3" -0.0023909989 0.67581916 0 ;
	setAttr ".tk[492]" -type "float3" -0.00042322633 0.2875905 0 ;
	setAttr ".tk[493]" -type "float3" -0.00040881746 0.28947318 0 ;
	setAttr ".tk[494]" -type "float3" -0.00038571184 0.29240626 0 ;
	setAttr ".tk[495]" -type "float3" -0.00035707321 0.29610205 0 ;
	setAttr ".tk[496]" -type "float3" -0.0003250094 0.30019861 0 ;
	setAttr ".tk[497]" -type "float3" -0.00029316221 0.68650126 0 ;
	setAttr ".tk[498]" -type "float3" -0.00026422265 0.20884115 0.0072726142 ;
	setAttr ".tk[499]" -type "float3" 0.14952612 1.1585871 0.32037044 ;
	setAttr ".tk[500]" -type "float3" 0.2292711 0.99633396 0.16305541 ;
	setAttr ".tk[501]" -type "float3" 0.25674918 0.99633157 -0.011329602 ;
	setAttr ".tk[502]" -type "float3" 0.2292711 0.99633396 -0.18571465 ;
	setAttr ".tk[503]" -type "float3" 0.14952612 1.1130623 -0.34302941 ;
	setAttr ".tk[504]" -type "float3" -0.00026428225 0.20884115 -0.0066894349 ;
	setAttr ".tk[505]" -type "float3" -0.00029316999 0.40630504 0 ;
	setAttr ".tk[506]" -type "float3" -0.00032502171 0.02000238 0 ;
	setAttr ".tk[507]" -type "float3" -0.00035704492 0.29610205 0 ;
	setAttr ".tk[508]" -type "float3" -0.00038573722 0.2924062 0 ;
	setAttr ".tk[509]" -type "float3" -0.00040862907 0.28947306 0 ;
	setAttr ".tk[510]" -type "float3" -0.00042312327 0.28759015 0 ;
	setAttr ".tk[511]" -type "float3" -0.00042886796 0.28694153 0 ;
	setAttr ".tk[512]" -type "float3" 0.0017422769 0.28651989 0 ;
	setAttr ".tk[513]" -type "float3" 0.0017583756 0.28855956 0 ;
	setAttr ".tk[514]" -type "float3" 0.001783082 0.29173803 0 ;
	setAttr ".tk[515]" -type "float3" 0.0018139628 0.29574275 0 ;
	setAttr ".tk[516]" -type "float3" 0.0018489294 0.30018163 0 ;
	setAttr ".tk[517]" -type "float3" 0.0018834964 0.30462074 0 ;
	setAttr ".tk[518]" -type "float3" 0.0019149624 0.3272236 0 ;
	setAttr ".tk[519]" -type "float3" 0.18821377 1.0520462 0.34808445 ;
	setAttr ".tk[520]" -type "float3" 0.27462134 1.0158079 0.17762545 ;
	setAttr ".tk[521]" -type "float3" 0.30439556 1.0845356 -0.011428636 ;
	setAttr ".tk[522]" -type "float3" 0.27462134 1.0158079 -0.20028466 ;
	setAttr ".tk[523]" -type "float3" 0.18821371 1.0520462 -0.37074366 ;
	setAttr ".tk[524]" -type "float3" 0.0019149471 0.166017 -0.0072726896 ;
	setAttr ".tk[525]" -type "float3" 0.0018835096 0.32554337 0 ;
	setAttr ".tk[526]" -type "float3" 0.0018489108 0.019985393 0 ;
	setAttr ".tk[527]" -type "float3" 0.001814042 0.015546456 0 ;
	setAttr ".tk[528]" -type "float3" 0.0017832952 0.29173815 0 ;
	setAttr ".tk[529]" -type "float3" 0.0017585015 0.28855968 0 ;
	setAttr ".tk[530]" -type "float3" 0.0017423367 0.28651953 0 ;
	setAttr ".tk[531]" -type "float3" 0.0017367793 0.28581655 0 ;
	setAttr ".tk[532]" -type "float3" 0.0040575191 0.28578472 0 ;
	setAttr ".tk[533]" -type "float3" 0.0040745921 0.2879324 0 ;
	setAttr ".tk[534]" -type "float3" 0.0041000098 0.29127681 0 ;
	setAttr ".tk[535]" -type "float3" 0.0041329814 0.29549176 0 ;
	setAttr ".tk[536]" -type "float3" 0 0.30019623 0 ;
	setAttr ".tk[537]" -type "float3" 0 0.019999996 0 ;
	setAttr ".tk[538]" -type "float3" 0 0.019999996 0 ;
	setAttr ".tk[539]" -type "float3" 0.0042647105 0.03219904 0 ;
	setAttr ".tk[540]" -type "float3" 0.0042813816 0.034346119 0 ;
	setAttr ".tk[541]" -type "float3" 0.0042873975 0.035086408 0 ;
	setAttr ".tk[542]" -type "float3" 0.0042813816 0.034346119 0 ;
	setAttr ".tk[543]" -type "float3" 0.0042645689 0.03219904 0 ;
	setAttr ".tk[544]" -type "float3" 0.0042384546 0.028854147 0 ;
	setAttr ".tk[545]" -type "float3" 0.0042057685 0.024639443 0 ;
	setAttr ".tk[546]" -type "float3" 0.0041695195 0.019967392 0 ;
	setAttr ".tk[547]" -type "float3" 0.0041329139 0.01529558 0 ;
	setAttr ".tk[548]" -type "float3" 0.0040999711 0.011080876 0 ;
	setAttr ".tk[549]" -type "float3" 0.0040745009 0.28793263 0 ;
	setAttr ".tk[550]" -type "float3" 0.004057446 0.28578472 0 ;
	setAttr ".tk[551]" -type "float3" 0.0040508984 0.28504479 0 ;
	setAttr ".tk[553]" -type "float3" 0.0063827145 0.014692917 0 ;
	setAttr ".tk[554]" -type "float3" 0.0063650906 0.012490943 0 ;
	setAttr ".tk[555]" -type "float3" 0.006338058 0.0090624392 0 ;
	setAttr ".tk[556]" -type "float3" 0.0063045775 0.0047412813 0 ;
	setAttr ".tk[557]" -type "float3" 0.0065793241 0.019948617 0 ;
	setAttr ".tk[558]" -type "float3" 0.0065418817 0.015158728 0 ;
	setAttr ".tk[559]" -type "float3" 0.0065079685 0.010837689 0 ;
	setAttr ".tk[560]" -type "float3" 0.0064809616 0.0074087679 0 ;
	setAttr ".tk[561]" -type "float3" 0.0064638034 0.28540313 0 ;
	setAttr ".tk[562]" -type "float3" 0.0064582257 0.28464389 0 ;
createNode polySplit -n "polySplit18";
	rename -uid "F07730FA-4A10-DA18-3E4A-478C7FADCB85";
	setAttr -s 11 ".e[0:10]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 11 ".d[0:10]"  -2147483099 -2147483098 -2147483097 -2147483096 -2147483095 -2147483094 
		-2147483093 -2147483092 -2147483091 -2147483090 -2147483089;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	rename -uid "AA64E80D-4C70-1082-3068-7888D89F52A5";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483128 -2147483127 -2147483126 -2147483125 -2147483124 -2147483123 
		-2147483122 -2147483121 -2147483120 -2147483119 -2147483118 -2147483117 -2147483116 -2147483115 -2147483114 -2147483113 -2147483112 -2147483111 
		-2147483110 -2147483109 -2147483128;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit16";
	rename -uid "E6A21F62-4262-36BD-B567-79BC089485E6";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483148 -2147483147 -2147483146 -2147483145 -2147483144 -2147483143 
		-2147483142 -2147483141 -2147483140 -2147483139 -2147483138 -2147483137 -2147483136 -2147483135 -2147483134 -2147483133 -2147483132 -2147483131 
		-2147483130 -2147483129 -2147483148;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	rename -uid "D47AD61B-4AE1-B816-9564-2193D853086A";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483168 -2147483167 -2147483166 -2147483165 -2147483164 -2147483163 
		-2147483162 -2147483161 -2147483160 -2147483159 -2147483158 -2147483157 -2147483156 -2147483155 -2147483154 -2147483153 -2147483152 -2147483151 
		-2147483150 -2147483149 -2147483168;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "6AD3AB17-4A3C-74D0-E952-9CB54689013D";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483188 -2147483187 -2147483186 -2147483185 -2147483184 -2147483183 
		-2147483182 -2147483181 -2147483180 -2147483179 -2147483178 -2147483177 -2147483176 -2147483175 -2147483174 -2147483173 -2147483172 -2147483171 
		-2147483170 -2147483169 -2147483188;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "27C76F06-4E16-A50E-7483-BF80025B538E";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483208 -2147483207 -2147483206 -2147483205 -2147483204 -2147483203 
		-2147483202 -2147483201 -2147483200 -2147483199 -2147483198 -2147483197 -2147483196 -2147483195 -2147483194 -2147483193 -2147483192 -2147483191 
		-2147483190 -2147483189 -2147483208;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "D8ED6E7F-40FF-5422-773D-258FE8698858";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483228 -2147483227 -2147483226 -2147483225 -2147483224 -2147483223 
		-2147483222 -2147483221 -2147483220 -2147483219 -2147483218 -2147483217 -2147483216 -2147483215 -2147483214 -2147483213 -2147483212 -2147483211 
		-2147483210 -2147483209 -2147483228;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "A1558AEF-4CB4-36B5-D610-F8B25A9762D8";
	setAttr -s 21 ".e[0:20]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5
		 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 21 ".d[0:20]"  -2147483248 -2147483247 -2147483246 -2147483245 -2147483244 -2147483243 
		-2147483242 -2147483241 -2147483240 -2147483239 -2147483238 -2147483237 -2147483236 -2147483235 -2147483234 -2147483233 -2147483232 -2147483231 
		-2147483230 -2147483229 -2147483248;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "58CA8A36-41AE-3307-6423-BE85B221AD47";
	setAttr -s 5 ".e[0:4]"  0 0.5 0.5 0.5 0;
	setAttr -s 5 ".d[0:4]"  -2147482890 -2147483630 -2147483249 -2147483629 -2147482889;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	rename -uid "8120E9DB-41DD-4F3A-A5B5-899A9BD82EA9";
	setAttr -s 5 ".e[0:4]"  0 0.5 0.5 0.5 0;
	setAttr -s 5 ".d[0:4]"  -2147482892 -2147483632 -2147483251 -2147483631 -2147482891;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "A4139B47-4F55-73CD-8F8F-D18C929423C9";
	setAttr -s 5 ".e[0:4]"  0 0.5 0.5 0.5 0;
	setAttr -s 5 ".d[0:4]"  -2147482894 -2147483634 -2147483253 -2147483633 -2147482893;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "D05D5812-4D48-CAC7-5ED1-FAA03DF2C4A5";
	setAttr -s 5 ".e[0:4]"  0 0.5 0.5 0.5 0;
	setAttr -s 5 ".d[0:4]"  -2147482896 -2147483636 -2147483255 -2147483635 -2147482895;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "4E6201FC-4BBC-B9E5-0B13-D19540BF62D5";
	setAttr -s 5 ".e[0:4]"  0 0.5 0.5 0.5 0;
	setAttr -s 5 ".d[0:4]"  -2147482898 -2147483638 -2147483257 -2147483637 -2147482897;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "924543CE-4203-F4CB-3987-52B3EBA566C8";
	setAttr -s 5 ".e[0:4]"  0 0.5 0.5 0.5 0;
	setAttr -s 5 ".d[0:4]"  -2147482900 -2147483640 -2147483259 -2147483639 -2147482899;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "4B8FA670-49B3-9630-EB5E-228A2D5914A4";
	setAttr -s 5 ".e[0:4]"  0 0.5 0.5 0.5 0;
	setAttr -s 5 ".d[0:4]"  -2147482902 -2147483642 -2147483261 -2147483641 -2147482901;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "ECF7B5E0-40F1-3F84-E41F-39A10DCAD709";
	setAttr -s 5 ".e[0:4]"  0 0.5 0.5 0.5 0;
	setAttr -s 5 ".d[0:4]"  -2147482904 -2147483644 -2147483263 -2147483643 -2147482903;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	rename -uid "04E780E1-478E-3736-07D5-4290CF699AD0";
	setAttr -s 5 ".e[0:4]"  0 0.5 0.5 0.5 0;
	setAttr -s 5 ".d[0:4]"  -2147482906 -2147483646 -2147483265 -2147483645 -2147482905;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit1";
	rename -uid "8A8BD0C7-48E6-4FAE-3FB6-1CAE818D1B9D";
	setAttr -s 5 ".e[0:4]"  0 0.5 0.5 0.5 0;
	setAttr -s 5 ".d[0:4]"  -2147482908 -2147483648 -2147483267 -2147483647 -2147482907;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySphere -n "polySphere1";
	rename -uid "3D47842E-4CEA-05C8-46F4-1E9FF7EB27C0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "EA1152CE-49F5-872A-0C30-6F88F98C2A5E";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "50DE8D67-4C80-CC1F-8F83-0A943056D285";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "25C51FBA-43D3-0266-9F52-428AB029CD03";
createNode displayLayerManager -n "layerManager";
	rename -uid "FA1D948C-4D33-AB7D-0ADD-10B302DB6AB9";
createNode displayLayer -n "defaultLayer";
	rename -uid "370CAD96-4578-9AD6-FEF4-BBBD59676BB7";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "878F094D-4F3D-F353-F0AF-1D9BD82E4330";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4AEA730B-4F48-913B-40A8-58A0B1686617";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B17F1FBA-47A6-1692-649E-46AB4C9220D6";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1541\n                -height 700\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1541\n            -height 700\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n"
		+ "                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n"
		+ "                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n"
		+ "                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1541\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1541\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "D418828C-4D7D-7A72-910A-9FB8D64FCA79";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "deleteComponent2.og" "pSphereShape1.i";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "polyTweak1.out" "deleteComponent1.ig";
connectAttr "polySplit18.out" "polyTweak1.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit15.out" "polySplit16.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit13.out" "polySplit14.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit2.out" "polySplit3.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySphere1.out" "polySplit1.ip";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
// End of DirtPile.ma
