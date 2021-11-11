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
        {17,Lambda16INPUT},
        {18,Lambda17INPUT},
        {19,Lambda18INPUT},
        {20,Lambda19INPUT},
        {21,Lambda20INPUT},
        {22,Lambda21INPUT},
        {23,Lambda22INPUT},
        {24, gXINPUT},
        {25, g1XINPUT},
        {26, gX1INPUT},
        {27, vSinput},
        {28, mSG2INPUT},
        {29, mSG22INPUT},
        {30, mET2INPUT},
        {31, mSG22INPUT},
        {32, YSINPUT},
        {33, YS1INPUT},
        {34, LS4INPUT},
        {35, mCLINPUT},
        {36, mCRINPUT},
        {37, mCL2INPUT},
        {38, mCR2INPUT},
        {39, YINPUT},
        {40, Y1INPUT},
        {41, Y3INPUT},
        {42, Y4INPUT}
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
 {L16, Lambda16INPUT},
 {L17, Lambda17INPUT},
 {L18, Lambda18INPUT},
 {L19, Lambda19INPUT},
 {L20, Lambda20INPUT},
 {L21, Lambda21INPUT},
 {L22, Lambda22INPUT},
 {mSG2, mSG2INPUT},
 {mSG22, mSG22INPUT},
 {mET2, mET2INPUT},
 {mET22, mET22INPUT},
 {mNR, LHInput[mNR]},
 {YS, YSINPUT},
 {YS1, YS1INPUT},
 {LS4, LS4INPUT},
 {vS,vSinput},
 {mCL, mCLINPUT},
 {mCR, mCRINPUT},
 {mCL2, mCL2INPUT},
 {mCR2, mCR2INPUT},
 {Y, YINPUT},
 {Y1, Y1INPUT},
 {Y2, LHInput[Y2]},
 {Y3, Y3INPUT},
 {Y4, Y4INPUT}
 {Y5, LHInput[Y5]}
 };

AddTreeLevelUnitarityLimits=True;


ListDecayParticles = {Fu,Fe,Fd,Fv,hh,VZp};
ListDecayParticles3B = {{Fv,"Fv.f90"},{Fu,"Fu.f90"},{Fe,"Fe.f90"},{Fd,"Fd.f90"}};

