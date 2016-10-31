/*

~ Nebulae_DownsampleBlur.csd ~

This instrument performs various spectral effects to a sample   (i.e.
frequency shifting, time stretching, and auditory blurring). Currently
only a single sample can be used for this instrument which is implemented
within ths .csd file. To change the sample, change the name in f-table 
#1 on the bottom of the file.

; Blurring
	; Average the amp/freq time functions of each analysis channel
	; for a specified period of time (truncated to number of frames).	
	
	; ~ kblur ~ 		[Loop Start]
		; Time in secs during which windows will be averaged.

; Frequency Shifting
	; Shift the frequency components of a pv stream, 
	; stretching/compressing its spectrum.

	; ~ kshift ~ 		[Loop Size]
		; Shift amount (in Hz, positive or negative).

	; ~ klowest ~ 		[Pitch]
		; Lowest frequency to be shifted.

; Smoothing
	; Smooth the amplitude and frequency time functions of a pv 
	; stream using parallel 1st order lowpass IIR filters with
	; time-varying cutoff frequency.

	; ~ kampcutoff ~ 	[Glide]
		; Amount of cutoff amplitude function filtering in fractions
		; of 1/2 frame-rate.
	; ~ kfreqcutoff ~ 	[Grain Rate]
		; Amount of cutoff frequency function filtering in fractions
		; of 1/2 frame-rate.	

; Sample Control
	; Various parameters which control the playback state of a
	; single sample.

	; ~ kpitch ~ 		[Grain Size]
		; Sample playback pitch control

	; ~ kloopsize ~ 		[Speed]
		; Determines the end-point of current sample

	; ~kmix ~ 			[Mix]
		; Wet/Dry mix between sample playback and spectral effects

	Christopher Konopka
	www.qubitelectronix.com
	cskonopka@gmail.com
*/