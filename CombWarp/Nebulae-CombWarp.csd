o<CsoundSynthesizer>
<CsOptions>

-odac
;--sched
-d
;-+rtaudio=alsa
-Ma
-b512
-B1024
-m 0

</CsOptions>
<CsInstruments>

sr	=	22050	
ksmps	=	32
nchnls			=		1
0dbfs				=		1
		
gisine ftgen 1, 0, 8192, 10, 1
giRecaman  	ftgen 	2, 0, 8192, 10,  0.009,0.027,0.054,0.018,0.063,0.117,0.18,0.108,0.189, 0.099, 0.198, 0.09, 0.207, 0.081, 0.216, 0.072, 0.225, 0.387, 0.558, 0.378, 0.567, 0.369, 0.162, 0.378, 0.153, 0.387, 0.144, 0.396, 0.135, 0.405, 0.126, 0.414, 0.711, 1.017, 0.702, 1.026, 0.693, 0.351, 0.702, 0.342, 0.711, 0.333, 0.72, 0.324, 0.729, 0.315, 0.738, 0.306, 0.747, 0.297, 0.756, 0.288, 0.765, 0.279, 0.774, 0.27, 0.783, 0.261, 0.792, 0.252, 0.801, 0.243, 0.81, 0.234, 0.819, 1.413, 2.016, 1.404, 2.025, 1.395

giRecaman3  	ftgen 	3, 0, 8192, 10,  0.009,0.027,0.054,0.018,0.063,0.117,0.18,0.108,0.189, 0.099, 0.198, 0.09, 0.207, 0.081, 0.216, 0.072, 0.225, 0.387, 0.558, 0.378, 0.567, 0.369, 0.162, 0.378, 0.153, 0.387, 0.144, 0.396, 0.135, 0.405, 0.126, 0.414, 0.711, 1.017, 0.702, 1.026, 0.693, 0.351, 0.702, 0.342, 0.711, 0.333, 0.72, 0.324, 0.729, 0.315, 0.738, 0.306, 0.747, 0.297, 0.756, 0.288, 0.765, 0.279, 0.774, 0.27, 0.783, 0.261, 0.792, 0.252, 0.801, 0.243, 0.81, 0.234, 0.819, 1.413, 2.016, 1.404, 2.025, 1.395

giRecaman4		ftgen 	4, 0, 8192, 10, 0.010,0.030,0.060,0.020,0.070,0.130,0.200,0.120,0.210,0.110,0.220,0.100,0.230,0.090,0.240,0.080,0.250,0.430,0.620,0.420,0.630,0.410,0.180,0.420,0.170,0.430,0.160,0.440,0.150,0.450,0.140,0.460,0.790,1.130,0.780,1.140,0.770,0.390,0.780,0.380,0.790,0.370,0.800,0.360,0.810,0.350,0.820,0.340,0.830,0.330,0.840,0.320,0.850,0.310,0.860,0.300,0.870,0.290,0.880,0.280,0.890,0.270,0.900,0.260,0.910,1.570,2.240,1.560,2.250,1.550,0.000,0.010,0.030,0.060,0.020,0.070,0.130,0.200,0.120,0.210,0.110,0.220,0.100,0.230,0.090,0.240,0.080,0.250,0.430,0.620,0.420,0.630,0.410,0.180,0.420,0.170,0.430,0.160,0.440,0.150,0.450,0.140,0.460,0.790,1.130,0.780,1.140,0.770,0.390,0.780,0.380,0.790,0.370,0.800,0.360,0.810,0.350,0.820,0.340,0.830,0.330,0.840,0.320,0.850,0.310,0.860,0.300,0.870,0.290,0.880,0.280,0.890,0.270,0.900,0.260,0.910,1.570,2.240,1.560,2.250,1.550,0.000,0.010,0.030,0.060,0.020,0.070,0.130,0.200,0.120,0.210,0.110,0.220,0.100,0.230,0.090,0.240,0.080,0.250,0.430,0.620,0.420,0.630,0.410,0.180,0.420,0.170,0.430,0.160,0.440,0.150,0.450,0.140,0.460,0.790,1.130,0.780,1.140,0.770,0.390,0.780,0.380,0.790,0.370,0.800,0.360,0.810,0.350,0.820,0.340,0.830,0.330,0.840,0.320,0.850,0.310,0.860,0.300,0.870,0.290,0.880,0.280,0.890,0.270,0.900,0.260,0.910,1.570, 2.240,1.560,2.250,1.550 

giRecaman5 		ftgen 	5, 0, 8192, 10, 0.062,0.186,0.372,0.124,0.433,0.805,1.238,0.743,1.3, 0.681, 1.362, 0.619, 1.424, 0.557, 1.486, 0.495, 1.548, 2.663, 3.839, 2.601, 3.901, 2.539, 1.115, 2.601, 1.053, 2.663, 0.991, 2.724, 0.929, 2.786, 0.867, 2.848, 4.892, 6.997, 4.83, 7.059, 4.768, 2.415, 4.83, 2.353, 4.892, 2.291, 4.954, 2.229, 5.016, 2.167, 5.077, 2.105, 5.139, 2.043, 5.201, 1.981, 5.263, 1.92, 5.325, 1.858, 5.387, 1.796, 5.449, 1.734, 5.511, 1.672, 5.573, 1.61, 5.635, 9.721, 13.87, 9.66, 13.932, 9.598
 				

instr 2

kCutoff init 1200
kResonance init .3
kENVstretch init 1
kLowShift init 10
kVerbMix init .3

; [Nebulae Constants]
	kfreezeflag 	init 		0

	ksystem 		system 	1, "umount /dev/sda1 " ; unmounts flash drive
	ksystem 		system 	1, "/home/scripts/fileLoadFeedback" ; tells arduino .csd loaded (This MUST be called)
			
	kutility 		ctrl7 	1, 23, 0, 127

; [Nebulae Controls]
	; ~ ENV Stretch ~ 		[Speed]
	kENVstretch 	ctrl14 	1, 1, 2, 0.001, 5
	kENVstretch 	portk 	kENVstretch, 0.08

	; ~ Cutoff ~ 		[Pitch]
	kCutoff 	ctrl14 	1, 15, 16, 0.001, 4000
	kCutoff 	portk 	kCutoff, 0.08	

	; ~ Resonance ~ 		[Glide]
	kResonance 		ctrl7 	1, 70, 0.001, .7	
	kResonance 		portk 	kResonance, 0.08

	; ~ CombReverb ~ 	[Mix]
				initc7 	1, 8, 1
	kVerbMix 		ctrl7 	1, 8, 0.001, 1
	kVerbMix 		portk 	kVerbMix, 0.08	

	; ~ Frequency ~ 		[Loop Start]
	kFrequency 		ctrl14 	1, 9, 1, 0.001, 880	
	kFrequency 		portk 	kFrequency, 0.08	
	
	; ~ BankOscFreq1 ~ 		[Grain Size]
	kBnkOSCf1 	ctrl7 	1, 5, 0.001, 1
	kBnkOSCf1 	portk 	kBnkOSCf1, 0.08

	; ~ BankOscFreq2 ~ 		[Loop Size]
	kBnkOSCf2 		ctrl14 	1, 11, 12, 0.001, 1
	kBnkOSCf2 		portk 	kBnkOSCf2, 0.08	

	; ~ Low Shift ~ 			[Grain Rate]
	kLowShift 		ctrl7 	1, 4, 0.001, 100
	kLowShift 		portk 	kLowShift, 0.08
				
		kosc oscil .6, kBnkOSCf2, giRecaman
		
		kosc1 oscil .6, kBnkOSCf1, giRecaman
		kosc2 oscil .6, kBnkOSCf2, giRecaman				
		kosc3 oscil .6, kBnkOSCf1, giRecaman
		kosc4 oscil .6, kBnkOSCf2, giRecaman
						
		aosc1 oscil .6, (kFrequency+120)*kosc1, gisine
		aosc2 oscil .6, (kFrequency+64)*kosc2-2, giRecaman5
		aosc3 oscil .6, (kFrequency+28)*kosc3-6, giRecaman4
		aosc4 oscil .6, (kFrequency)*kosc4-4, giRecaman3
		
		aosc = aosc1+aosc2+aosc3+aosc4
		aComb combinv aosc, kVerbMix, .1 





ifftsize  = 1024
ioverlap  = ifftsize / 4
iwinsize  = ifftsize
iwinshape = 1		

fsig    pvsanal 	aComb*.8, ifftsize, ioverlap, iwinsize, iwinshape

fs 		pvswarp 	fsig, kENVstretch, 1, (4000+kosc)-(40*kLowShift), 1, .3, 100

asig pvsynth    fs                    ; resynthesise it

ares moogvcf2 asig, kCutoff, kResonance

outs ares, ares



endin




</CsInstruments>
<CsScore>
;f0 36000000
i2 0 $INF

</CsScore>
</CsoundSynthesizer>
<bsbPanel>
 <label>Widgets</label>
 <objectName/>
 <x>100</x>
 <y>100</y>
 <width>320</width>
 <height>240</height>
 <visible>true</visible>
 <uuid/>
 <bgcolor mode="nobackground">
  <r>255</r>
  <g>255</g>
  <b>255</b>
 </bgcolor>
</bsbPanel>
<bsbPresets>
</bsbPresets>
