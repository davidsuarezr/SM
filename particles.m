

ParticleDefinitions[GaugeES] = {
      {H0,  {    PDG -> {0},
                 Width -> 0, 
                 Mass -> Automatic,
                 FeynArtsNr -> 1,
                 LaTeX -> "H^0",
                 OutputName -> "H0" }},                         
      
      
      {Hp,  {    PDG -> {0},
                 Width -> 0, 
                 Mass -> Automatic,
                 FeynArtsNr -> 2,
                 LaTeX -> "H^+",
                 OutputName -> "Hp" }}, 
                 
               
    
      {VB,   { Description -> "B-Boson"}},                                                   
      {VBp,  { Description -> "B'-Boson"}},
      {VG,   { Description -> "Gluon"}},
      {VWB,  { Description -> "W-Bosons"}},          
      {gB,   { Description -> "B-Boson Ghost"}},                                                   
      {gBp,   { Description -> "B'-Boson Ghost"}},
      {gG,   { Description -> "Gluon Ghost" }},
      {gWB,  { Description -> "W-Boson Ghost"}},
      {s, {Description -> "BSM field S⁰",
			OutputName -> "S",
			ElectricCharge -> 0,
			LaTeX -> "S",
            FeynArtsNr -> 800
		}},

      {sg, {Description -> "BSM field SIGMA⁰",
			OutputName -> "SG",
			ElectricCharge -> 0,
			LaTeX -> "\\sigma",
            FeynArtsNr -> 801
		}},
      {sg2, {Description -> "BSM field SIGMA 2⁰",
			OutputName -> "SG2",
			ElectricCharge -> 0,
			LaTeX -> "\\sigma_2",
            FeynArtsNr -> 802
		}},
        {et0,  {  PDG -> 803,
                 Mass -> Automatic,
                 FeynArtsNr -> 803,
                 LaTeX -> "\\eta^0",
                 OutputName -> "ET0" }},


        {etm,  {    PDG -> 804,
                   Mass -> Automatic,
                   FeynArtsNr -> 804,
                   LaTeX -> "\\eta^-",
                   OutputName -> "ETM" }},
              {e20,  {  PDG -> 805,
                 Mass -> Automatic,
                 FeynArtsNr -> 805,
                 LaTeX -> "\\eta_2^0",
                 OutputName -> "E20" }},


        {e2m,  {    PDG -> 806,
                   Mass -> Automatic,
                   FeynArtsNr -> 806,
                   LaTeX -> "\\eta_2^-",
                   OutputName -> "E2M" }}
      };
      
      
      
      
  ParticleDefinitions[EWSB] = {
            
      
    {hh   ,  { Description -> "Higgs",
                 PDG -> {25,35},
                 Width -> Automatic,
                 Mass ->LesHouches,
                 FeynArtsNr -> 1,
                 LaTeX -> "h",
                 OutputName -> "h" }},

     {Ah   ,  {  Description -> "Pseudo-Scalar Higgs",
                 PDG -> {0,0},
                 Width -> {0, External},
                 Mass ->LesHouches,
                 FeynArtsNr -> 2,
                 LaTeX -> "A_h",
                 OutputName -> "Ah" }},
      
      
     {Hp,     { Description -> "Charged Higgs", 
                 PDG -> {0},
                 PDG.IX ->{0},
                 Width -> {0}, 
                 Mass -> {0},
                 LaTeX -> {"H^+","H^-"},
                 OutputName -> {"Hp","Hm"},
                 ElectricCharge->1
                 }},                                                   
      
      {VP,   { Description -> "Photon"}}, 
      {VZ,   { Description -> "Z-Boson",
      			 Goldstone -> Ah[{1}] }},
      {VG,   { Description -> "Gluon" }},          
      {VWp,  { Description -> "W+ - Boson",
      			Goldstone -> Hp }},
      {VZp,  { Description -> "Z'-Boson",
               Goldstone -> Ah[{2}] }},
      {gP,   { Description -> "Photon Ghost"}},                                                   
      {gWp,  { Description -> "Positive W+ - Boson Ghost"}}, 
      {gWpC, { Description -> "Negative W+ - Boson Ghost" }}, 
      {gZ,   { Description -> "Z-Boson Ghost" }},
      {gZp,  { Description -> "Z'-Boson Ghost",
               FeynArtsNr -> 900,
               OutputName -> "gZp",
               ElectricCharge->0}},
      {gZp,  { Description -> "Z'-Boson Ghost" }},
      {gG,   { Description -> "Gluon Ghost" }},
      {Fd,   { Description -> "Down-Quarks"}},
      {Fu,   { Description -> "Up-Quarks"}},   
      {Fe,   { Description -> "Leptons" }},
      {gWp,  { Description -> "Negative W+ - Boson Ghost",
               FeynArtsNr -> 901,
               OutputName -> "gWp",
               ElectricCharge->1}},
      {gWpC, { Description -> "Positive W+ - Boson Ghost",
               FeynArtsNr -> 902,
               OutputName -> "gWpC",
                ElectricCharge->-1}},
      {Fv,   { Description -> "Neutrinos",
      			PDG ->{12,14,16,8810012,8810014,8810016} }},
      {sg, {Description -> "BSM field SIGMA (EWSB)⁰",
			OutputName -> "SG",
			ElectricCharge -> 0,
			LaTeX -> "\\sigma",
            FeynArtsNr -> 903
		}},
      {sg2, {Description -> "BSM field SIGMA 2 (EWSB)⁰",
			OutputName -> "SG2",
			ElectricCharge -> 0,
			LaTeX -> "\\sigma_2",
            FeynArtsNr -> 904
		}},
        {et0, {Description -> "BSM field Eta 0 (EWSB)",
			OutputName -> "E0",
			ElectricCharge -> 0,
			LaTeX -> "\\eta^0",
            FeynArtsNr -> 905
		}},
      {etm, {Description -> "BSM field Eta m (EWSB)",
			OutputName -> "EM",
			ElectricCharge -> -1,
			LaTeX -> "\\eta^-",
            FeynArtsNr -> 906
		}},
		        {e20, {Description -> "BSM field Eta 2 0 (EWSB)",
			OutputName -> "E20",
			ElectricCharge -> 0,
			LaTeX -> "\\eta_2^0",
            FeynArtsNr -> 907
		}},
      {e2m, {Description -> "BSM field Eta m (EWSB)",
			OutputName -> "E2M",
			ElectricCharge -> -1,
			LaTeX -> "\\eta_2^-",
            FeynArtsNr -> 908
		}}

     
        };    
        
        
        
 WeylFermionAndIndermediate = {
     
    {H,      {   PDG -> {0},
                 Width -> 0, 
                 Mass -> Automatic,
                 LaTeX -> "H",
                 OutputName -> "" }},

   {dR,     {LaTeX -> "d_R" }},
   {eR,     {LaTeX -> "e_R" }},
   {lep,     {LaTeX -> "l" }},
   {uR,     {LaTeX -> "u_R" }},
   {q,     {LaTeX -> "q" }},
   {eL,     {LaTeX -> "e_L" }},
   {dL,     {LaTeX -> "d_L" }},
   {uL,     {LaTeX -> "u_L" }},
   {vL,     {LaTeX -> "\\nu_L" }},

   {DR,     {LaTeX -> "D_R" }},
   {ER,     {LaTeX -> "E_R" }},
   {UR,     {LaTeX -> "U_R" }},
   {EL,     {LaTeX -> "E_L" }},
   {DL,     {LaTeX -> "D_L" }},
   {UL,     {LaTeX -> "U_L" }}
        };       


