/*

~ Nebulae_MorphingFM.csd ~

Two FM instruments that morph into a single instrument by interpolating 
between the amplitude and frequency of each FM instrument. The amplitudes 
and frequencies of FM#1 are interpolated with those of FM#2, depending 
on the values of kampint and kfrqint, respectively. Anything in between 
0 - 1 of each signal will interpolate amplitude and/or frequency of the 
two signals.

FM#1 Parameters
	; ~ fm#1 Frequency ~ 	[Speed]
	
	; ~ fm#1 Carrier ~ 	[Mix]
	
	; ~ fm#1 Modulator ~ 	[Loop Start]
	
	; ~ fm#1 Index ~ 	[Glide]

FM#2 Parameters
	; ~ fm#2 Frequency ~ 	[Pitch]
	
	; ~ fm#2 Carrier ~	[Grain Size]
	
	; ~ fm#2 Modulator ~	[Grain Rate] 
	
	; ~ fm#2 Index ~		[Loop Size]
	

	Christopher Konopka
	www.qubitelectronix.com
	cskonopka@gmail.com
	
*/

<CsoundSynthesizer>
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

sr			=		22050
ksmps			=		32
nchnls		=		2
0dbfs			=		1

instr 1

; [Nebulae Constants]
	kfreezeflag 	init 		0

	ksystem 		system 	1, "umount /dev/sda1 " ; unmounts flash drive
	ksystem 		system 	1, "/home/scripts/fileLoadFeedback" ; tells arduino .csd loaded (This MUST be called)
			
	kutility 		ctrl7 	1, 23, 0, 127

; [Nebulae Controls]
	; ~ fm#1 Frequency ~ 		[Speed]	
	kFM1freq 		ctrl14 	1, 1, 2, 0.01, 120

	; ~ fm#1 Carrier ~ 		[Mix]
				initc7 	1, 8, 1
	kFM1carrier 	ctrl7 	1, 8, 0.01, 8

	; ~ fm#1 Modulator ~ 		[Loop Start]
	kFM1modulator 	ctrl14 	1, 9, 10, 0.01, 8

	; ~ fm#1 Index ~ 		[Glide]
	kFM1index 		ctrl7 	1, 70, 0.01, 8

	; ~ fm#2 ~ 				[Pitch]
	kFM2freq 		ctrl14 	1, 15, 16, 0.01, 120	

	; ~ fm#2 Carrier ~		[Grain Size]
	kFM2carrier 	ctrl7 	1, 4, 0.01, 8

	; ~ fm#2 Modulator ~		[Grain Rate] 
	kFM2modulator 	ctrl7 	1, 5, 0.01, 8

	; ~ fm#2 Index ~			[Loop Size]
	kFM2index 		ctrl14 	1, 11, 12, 0.01, 8


; [Instrument]

	ifftsize		=		1024
	ioverlap		=		ifftsize / 4
	iwinsize		=		ifftsize
	iwinshape		=		1; von-Hann window

	; FM#1	
	asig1 		foscili 	.5, kFM1freq, kFM1carrier, kFM1modulator, kFM1index, 1
	
	; FM#2
	asig2			foscili 	.5, kFM2freq, kFM2carrier, kFM2modulator, kFM2index, 1
	
	; FFT-analysis of FM#1
	fftin1		pvsanal	asig1, ifftsize, ioverlap, iwinsize, iwinshape
	
	; FFT-analysis of FM#2
	fftin2		pvsanal	asig2, ifftsize, ioverlap, iwinsize, iwinshape 
	
	; Interpolation between FM31 and FM#2
	fmorph		pvsmorph	fftin1, fftin2, (kFM1freq*0.01)-0.2, (kFM2freq*0.01)-0.2
	
	; Added auditory blurring
	fblur			pvsblur 	fmorph, .4, 1
	
	; Resynthesize
	aout			pvsynth	fmorph

				outs 		aout, aout
			
endin 

</CsInstruments>
<CsScore>

f1   0  8192  10   1

i1 0 $INF

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
