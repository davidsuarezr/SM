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
        {11, gXINPUT},
        {12, g1XINPUT},
        {13, gX1INPUT},
        {14, vSinput},
        {15, mSG2INPUT},
        {16, mSG22INPUT},
        {17, T3INPUT},
        {18, T4INPUT}
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
 {T1, LHInput[T1]},
 {T2, LHInput[T2]},
 {T3, T3INPUT},
 {T4, T4INPUT},
 {mSG2, mSG2INPUT},
 {mSG22, mSG22INPUT},
 {vS,vSinput}
};

AddTreeLevelUnitarityLimits=True;


ListDecayParticles = {Fu,Fe,Fd,Fv,hh,VZp};
ListDecayParticles3B = {{Fv,"Fv.f90"},{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};


DefaultInputValues ={Lambda1INPUT -> -0.127, Lambda2INPUT -> -7.2*10^-5, g1pINPUT->0.5, vXinput->2500, Yx[a_,a_]-> 0.32, Yv[a_,a_]->10^-3};

