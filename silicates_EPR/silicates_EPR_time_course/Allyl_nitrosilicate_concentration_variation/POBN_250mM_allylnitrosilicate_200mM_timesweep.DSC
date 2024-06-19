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
XPTS	2000
XMIN	0.000000
XWID	1000.000000
*
*	Documentational Text:
*
TITL	'POBN_250mM_allylnitrosilicate_200mM_timesweep'
IRNAM	'Intensity'
XNAM	'Time'
IRUNI	''
XUNI	's'
*
************************************************************
*
#SPL	1.2 * STANDARD PARAMETER LAYER
*
OPER    zarko
DATE    05/03/24
TIME    16:58:23
CMNT    
SAMP    
SFOR    
STAG    C
EXPT    CW
OXS1    IADC
AXS1    ETIM
AXS2    NONE
AXS3    
MWFQ    9.855018e+09
MWPW    0.002
AVGS    1
SPTP    0.5
RCAG    30
RCHM    1
B0MA    0.0001
B0MF    100000
RCPH    0.0
RCOF    0.0
A1RS    2000
A1SW    1000
RCTC    1e-05
*
************************************************************
*
#DSL	1.0 * DEVICE SPECIFIC LAYER
*

.DVC     acqStart, 1.0


.DVC     fieldCtrl, 1.0

AllegroMode        True
Delay              0.0 s
FieldFlyback       On
FieldWait          Wait LED off
GFactor            2.000000
MeasuringHall      False
SetToSampleG       False
StaticField        3508.800 G
StaticFieldMon     3508.800 G
SweepDirection     Up
WidthTM            200.0 G

.DVC     freqCounter, 1.0

FrequencyMon       9.855018 GHz
QMonitBridge       On

.DVC     mwBridge, 1.0

AcqFineTuning      Never
AcqScanFTuning     Off
AcqSliceFTuning    Off
BridgeCalib        70.5
Power              2.000 mW
PowerAtten         20.0 dB
QValue             3700

.DVC     recorder, 1.0

BaselineCorr       Off
NbScansAcc         1
NbScansDone        1
NbScansToDo        1
ReplaceMode        On
SmoothMode         Manual
SmoothPoints       1

.DVC     signalChannel, 1.0

AFCTrap            True
AllegroMode        True
AllowShortCt       False
Calibrated         True
ConvFact           9.271e-09
ConvTime           500.00 ms
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
ModAmp             1.000 G
ModFreq            100.00 kHz
ModPhase           0.0
ModResol           10.000
Offset             0.0 %
PolyCof            {2;3,9;0} 0,0.99652,0,0,0.00737177,0,0,-0.00559614,0,0,-2.88221e-05,0,0,1.00404e-05,0,0,3.43695e-08,0,0,-5.0404e-09,0,0,-1.4783e-11,0,0,-1.29132e-12,0
QuadMode           False
ResCenter          62.5 mm
ResLength          40 mm
Resolution         2000
Resonator          1
SctNorm            True
SctRevision        Allegro
SpuExtension       False
SweepTime          1000.00 s
TimeConst          0.01 ms
TimeExp            True
TuneCaps           39

*
************************************************************
