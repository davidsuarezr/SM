Off[General::spell]

Model`Name = "SM";
Model`NameLaTeX ="Standard Model";
Model`Authors = "F.Staub";
Model`Date = "2014-11-06";

(* 2013-01-24: changed normalization of lambda term to convention of hep-ph/0207271 *)
(* 2013-06-24: using new name conventions (without inital "S" and "F" for scalar and matter fields) *)
(* 2013-09-01: changing to new conventions for FermionFields/MatterFields *)
(* 2014-11-06: Changed sign in Lagrangian to fit standard conventions *)
(* 2016-05-03: Changed sign of Yu *)



(*-------------------------------------------*)
(*   Particle Content*)
(*-------------------------------------------*)

Global[[1]] = {Z[2], Z2};

(* Gauge Groups *)

Gauge[[1]]={B,   U[1], hypercharge, g1,False, 1};
Gauge[[2]]={WB, SU[2], left,        g2,True, 1};
Gauge[[3]]={G,  SU[3], color,       g3,False, 1};
Gauge[[4]]={Bp,  U[1], Uchi,        gX,False,1};

(* Matter Fields *)

FermionFields[[1]] = {q, 3, {uL, dL},     1/6, 2,  3,  1/3, 1};
FermionFields[[2]] = {l, 3, {vL, eL},    -1/2, 2,  1,  -1, 1};
FermionFields[[3]] = {d, 3, conj[dR],     1/3, 1, -3,  -1/3, 1};
FermionFields[[4]] = {u, 3, conj[uR],    -2/3, 1, -3,  -1/3, 1};
FermionFields[[5]] = {e, 3, conj[eR],       1, 1,  1,  1, 1};
FermionFields[[6]] = {NR, 3, conj[nr],      0, 1,  1,  1, 1};

ScalarFields[[1]] =  {H,   1,   {Hp, H0},  1/2, 2,  1,  0,  1};
ScalarFields[[2]] =  {ET,  1, {et0, etm}, -1/2, 2,  1,  2, -1};
ScalarFields[[3]] =  {ET2, 1, {e20, e2m}, -1/2, 2,  1, -1, -1};
ScalarFields[[4]] =  {SG,  1,         sg,    0, 1,  1,  2, -1};
ScalarFields[[5]] =  {SG2, 1,        sg2,    0, 1,  1, -1, -1};
ScalarFields[[6]] =  {S,   1,          s,    0, 1,  1, -2,  1};

(*----------------------------------------------*)
(*   DEFINITION                                 *)
(*----------------------------------------------*)

NameOfStates={GaugeES, EWSB};

(* ----- Before EWSB ----- *)

DEFINITION[GaugeES][LagrangianInput]= {
	{LagSMHC, {AddHC->True}},
	{LagSMNoHC,{AddHC->False}},
    {LagS,{AddHC->False}},
    {LagNR,{AddHC->False}},
    {LagSG,{AddHC->False}},
    {LagSG2,{AddHC->False}},
    {LagET,{AddHC->False}},
    {LagET2,{AddHC->False}},
    {LagS3,{AddHC->True}},
    {LagS4,{AddHC->False}},
    {LagT,{AddHC->True}}
};


LagSMNoHC = -mu2 conj[H].H - 1/2 \[Lambda] conj[H].H.conj[H].H;
LagSMHC =  -(Yd conj[H].d.q + Ye conj[H].e.l + Yu u.q.H);
LagS = - mS2 conj[S].S - L1 conj[S].S.conj[S].S - L2 conj[H].H.conj[S].S;
LagSG = - mSG2 conj[SG].SG - L3 conj[SG].SG.conj[SG].SG - L4 conj[H].H.conj[SG].SG - L5 conj[S].S.conj[SG].SG;
LagSG2 = - mSG22 conj[SG2].SG2 - L6 conj[SG2].SG2.conj[SG2].SG2 - L7 conj[H].H.conj[SG2].SG2 - L8 conj[S].S.conj[SG2].SG2 - L9 conj[SG].SG.conj[SG2].SG2;
LagET = - mET2 conj[ET].ET - L10 conj[ET].ET.conj[ET].ET - L11 conj[H].H.conj[ET].ET - L12 conj[S].S.conj[ET].ET - L13 conj[SG].SG.conj[ET].ET - L14 conj[SG2].SG2.conj[ET].ET - L15 conj[H].ET.conj[ET].H;
LagET2 = - mET22 conj[ET2].ET2 - L16 conj[ET2].ET2.conj[ET2].ET2 - L17 conj[H].H.conj[ET2].ET2 - L18 conj[S].S.conj[ET2].ET2 - L19 conj[SG].SG.conj[ET2].ET2 - L20 conj[SG2].SG2.conj[ET2].ET2 - L21 conj[H].ET2.conj[ET2].H - L22 conj[ET].ET.conj[ET2].ET2;
LagNR = - mNR conj[NR].NR;
LagS3 = - YS H.ET.conj[SG] - YS1 H.ET2.conj[SG2];
LagS4 = - LS4 conj[ET2].ET.conj[SG].SG2;
LagT = - T1 NR.NR.S - T2 H.l.NR -T3 SG.SG.S.S -T4 SG2.SG2.conj[S] -T5 H.ET2.conj[S].SG2


(* Gauge Sector *)

DEFINITION[EWSB][GaugeSector] =
{ 
  {{VB,VWB[3],VBp},{VP,VZ,VZp},ZZ},
  {{VWB[1],VWB[2]},{VWp,conj[VWp]},ZW}
};     
        
        
          	

(* ----- VEVs ---- *)

DEFINITION[EWSB][VEVs]= 
{    {H0, {v, 1/Sqrt[2]},  {ih, \[ImaginaryI]/Sqrt[2]},{rh, 1/Sqrt[2]}},
     {s,  {vS, 1/Sqrt[2]}, {is, \[ImaginaryI]/Sqrt[2]},{rs, 1/Sqrt[2]}}     };
 

DEFINITION[EWSB][MatterSector]=   
    {{{rh,rs},{hh,ZH}},
     {{ih,is},{Ah,ZA}},
     {{{dL}, {conj[dR]}}, {{DL,Vd}, {DR,Ud}}},
     {{{uL}, {conj[uR]}}, {{UL,Vu}, {UR,Uu}}},
     {{{eL}, {conj[eR]}}, {{EL,Ve}, {ER,Ue}}},
     {{vL,conj[nr]}, {VL,ZM}}
     };


(*------------------------------------------------------*)
(* Dirac-Spinors *)
(*------------------------------------------------------*)

DEFINITION[EWSB][DiracSpinors]={
 Fd ->{  DL, conj[DR]},
 Fe ->{  EL, conj[ER]},
 Fu ->{  UL, conj[UR]},
 Fv ->{  VL, conj[VL]}};

DEFINITION[EWSB][GaugeES]={
 Fd1 ->{  FdL, 0},
 Fd2 ->{  0, FdR},
 Fu1 ->{  Fu1, 0},
 Fu2 ->{  0, Fu2},
 Fe1 ->{  Fe1, 0},
 Fe2 ->{  0, Fe2}};



