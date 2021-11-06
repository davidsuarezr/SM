OnlyLowEnergySPheno = True;


MINPAR={{1,LambdaINPUT},
        {2,Lambda1INPUT},
        {3,Lambda2INPUT},
        {4,Lambda3INPUT},
        {5,Lambda4INPUT},
        {6,Lambda5INPUT},
        {7,Lambda6INPUT},
        {8,Lambda7INPUT},
        {9,Lambda8INPUT},
        {10,Lambda9INPUT},
        {11,Lambda10INPUT},
        {12,Lambda11INPUT},
        {13,Lambda12INPUT},
        {14,Lambda13INPUT},
        {15,Lambda14INPUT},
        {16,Lambda15INPUT},
        {17, gXINPUT},
        {18, g1XINPUT},
        {19, gX1INPUT},
        {20, vSinput},
        {21, mSG2INPUT},
        {22, mSG22INPUT},
        {23, mET2INPUT},
        {23, mSG22INPUT},
        {24, YSINPUT},
        {25, LS4INPUT},
        {26, T3INPUT},
        {27, T4INPUT}
        };

ParametersToSolveTadpoles = {mS2,mu2};

DEFINITION[MatchingConditions]= {
 {Ye, YeSM},
 {Yd, YdSM},
 {Yu, YuSM},
 {g1, g1SM},
 {g2, g2SM},
 {g3, g3SM},
 {v, vSM}
 };


BoundaryLowScaleInput={
 {gX,gXINPUT},
 {g1X,g1XINPUT},
 {gX1,gX1INPUT},
 {\[Lambda],LambdaINPUT},
 {L1, Lambda1INPUT},
 {L2, Lambda2INPUT},
 {L3, Lambda3INPUT},
 {L4, Lambda4INPUT},
 {L5, Lambda5INPUT},
 {L6, Lambda6INPUT},
 {L7, Lambda7INPUT},
 {L8, Lambda8INPUT},
 {L9, Lambda9INPUT},
 {L10, Lambda10INPUT},
 {L11, Lambda11INPUT},
 {L12, Lambda12INPUT},
 {L13, Lambda13INPUT},
 {L14, Lambda14INPUT},
 {L15, Lambda15INPUT},
 {T1, LHInput[T1]},
 {T2, LHInput[T2]},
 {T3, T3INPUT},
 {T4, T4INPUT},
 {mSG2, mSG2INPUT},
 {mSG22, mSG22INPUT},
 {mET2, mET2INPUT},
 {YS, YSINPUT},
 {LS4, LS4INPUT},
 {vS,vSinput}
};

AddTreeLevelUnitarityLimits=True;


ListDecayParticles = {Fu,Fe,Fd,Fv,hh,VZp};
ListDecayParticles3B = {{Fv,"Fv.f90"},{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};


DefaultInputValues ={Lambda1INPUT -> -0.127, Lambda2INPUT -> -7.2*10^-5, g1pINPUT->0.5, vXinput->2500, Yx[a_,a_]-> 0.32, Yv[a_,a_]->10^-3};

