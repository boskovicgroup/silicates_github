#DESC	1.2 * DESCRIPTOR INFORMATION ***********************
*
*	Dataset Type and Format:
*
DSRC	EXP
BSEQ	BIG
IKKF	REAL
XTYP	IDX
YTYP	NODATA
ZTYP	NODATA
*
*	Item Formats:
*
IRFMT	D
*
*	Data Ranges and Resolutions:
*
XPTS	1502
XMIN	3432.300000
XWID	149.900133
*
*	Documentational Text:
*
TITL	'methylnitrosilicate_mecn_500mM_dark_new_silicate_3'
IRNAM	'Intensity'
XNAM	'Field'
IRUNI	''
XUNI	'G'
*
************************************************************
*
#SPL	1.2 * STANDARD PARAMETER LAYER
*
OPER    zarko
DATE    05/10/24
TIME    19:55:10
CMNT    
SAMP    
SFOR    
STAG    C
EXPT    CW
OXS1    IADC
AXS1    B0VL
AXS2    NONE
AXS3    
A1CT    0.35073
A1SW    0.015
MWFQ    9.857393e+09
MWPW    0.002
AVGS    1
SPTP    0.01505
RCAG    30
RCHM    1
B0MA    0.0003994
B0MF    100000
RCPH    0.0
RCOF    0.0
A1RS    1502
RCTC    0.01024
*
************************************************************
*
#DSL	1.0 * DEVICE SPECIFIC LAYER
*

.DVC     acqStart, 1.0


.DVC     ezcw, 1.0

MetalIonsDef       False
OrgRadicalsDef     False

.DVC     fieldCtrl, 1.0

AllegroMode        True
CenterField        3507.30 G
Delay              2.5 s
FieldFlyback       On
FieldWait          Given delay
GFactor            2.000000
MeasuringHall      False
SetToSampleG       False
StaticFieldMon     3432.300 G
SweepDirection     Up
SweepWidth         150.0 G
WidthTM            200.0 G

.DVC     fieldSweep, 1.0


.DVC     freqCounter, 1.0

FrequencyMon       9.857393 GHz
QMonitBridge       On

.DVC     mwBridge, 1.0

AcqFineTuning      Never
AcqScanFTuning     Off
AcqSliceFTuning    Off
BridgeCalib        70.5
Power              2.000 mW
PowerAtten         20.0 dB
QValue             4200

.DVC     recorder, 1.0

BaselineCorr       Off
NbScansAcc         1
NbScansDone        1
NbScansToDo        1
ReplaceMode        Off
SmoothMode         Manual
SmoothPoints       0

.DVC     scanEnd, 1.0


.DVC     signalChannel, 1.0

AFCTrap            True
AllegroMode        True
AllowShortCt       False
Calibrated         True
ConvFact           9.271e-09
ConvTime           15.05 ms
DModDetectSCT      First
DualDetect         OFF
EliDelay           1.0 us
EnableImag         Disable
ExtLockIn          False
ExtTrigger         False
Gain               30 dB
Harmonic           1
HighPass           True
Integrator         False
IsCalibExp         False
ModAmp             3.994 G
ModFreq            100.00 kHz
ModPhase           0.0
ModResol           40.000
Offset             0.0 %
PolyCof            {2;3,9;0} 0,0.99652,0,0,0.00737177,0,0,-0.00559614,0,0,-2.88221e-05,0,0,1.00404e-05,0,0,3.43695e-08,0,0,-5.0404e-09,0,0,-1.4783e-11,0,0,-1.29132e-12,0
QuadMode           False
ResCenter          62.5 mm
ResLength          40 mm
Resolution         1502
Resonator          1
SctNorm            True
SctRevision        Allegro
SpuExtension       False
SweepTime          22.61 s
TimeConst          10.24 ms
TimeExp            False
TuneCaps           39

*
************************************************************
