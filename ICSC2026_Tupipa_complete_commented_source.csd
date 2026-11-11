<CsoundSynthesizer>
<CsOptions>
; Run from this package directory:
;   csound -W -o render_test.wav ICSC2026_Tupipa_complete_commented_source.csd
-d -W
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 32
nchnls = 2
0dbfs = 1
giSine ftgen 1, 0, 16384, 10, 1
; GEN23 size 0 reads the number of values supplied by each data file.
giMonoH02 ftgen 402, 0, 0, -23, "data/recording_tables/mono_h02.dat"
giMonoH03 ftgen 403, 0, 0, -23, "data/recording_tables/mono_h03.dat"
giMonoH04 ftgen 404, 0, 0, -23, "data/recording_tables/mono_h04.dat"
giMonoH05 ftgen 405, 0, 0, -23, "data/recording_tables/mono_h05.dat"
giMonoH06 ftgen 406, 0, 0, -23, "data/recording_tables/mono_h06.dat"
giMonoH07 ftgen 407, 0, 0, -23, "data/recording_tables/mono_h07.dat"
giMonoH08 ftgen 408, 0, 0, -23, "data/recording_tables/mono_h08.dat"
giMonoH09 ftgen 409, 0, 0, -23, "data/recording_tables/mono_h09.dat"
giMonoH10 ftgen 410, 0, 0, -23, "data/recording_tables/mono_h10.dat"
giMonoH11 ftgen 411, 0, 0, -23, "data/recording_tables/mono_h11.dat"
giMonoH12 ftgen 412, 0, 0, -23, "data/recording_tables/mono_h12.dat"
giMonoH13 ftgen 413, 0, 0, -23, "data/recording_tables/mono_h13.dat"
giMonoH14 ftgen 414, 0, 0, -23, "data/recording_tables/mono_h14.dat"

; Confirmed single-string Tupipa parameters saved from the tuner on 2026-07-05.
#define WG_MONITOR_MODE #0#
#define WG_F0 #369#
; Valid performance-time p4 range: 247.8-1000 Hz.  The lower bound is the
; lowest measured pitch used in the validation set.  The upper bound is chosen
; for sr=44100: 20 * 1000 Hz = 20000 Hz, below the 22050-Hz Nyquist limit.
#define WG_MIN_F0 #247.8#
#define WG_MAX_F0 #1000#
#define WG_AMP #0.3#
#define WG_PLUCK_POS #0.22#
#define WG_PICKUP #0.4#
#define WG_REFL #0.624#
#define WG_CORE_GAIN #0.29#
#define WG_CORE_HPF #105#
#define WG_CORE_LPF #7100#
#define WG_CORE_BRIGHT_GAIN #0.06#
#define WG_CORE_BRIGHT_HPF #2100#
#define WG_CORE_BRIGHT_LPF #9200#
#define WG_PARTIAL_GAIN #1.5#
#define WG_HIGH_PARTIAL_FLOOR #0.06#
#define WG_CORE_ATTACK_LEVEL #0.8#
#define WG_CORE_RECOVER #0.055#
#define WG_TONE_HOLD #0.025#
#define WG_TONE_RISE #0.0125#
#define WG_TAIL_START #0.038#
#define WG_TAIL_LEVEL #0.34#
#define WG_TAIL_DECAY #0.04#
#define WG_ATTACK_SHOULDER_LEVEL #0.9#
#define WG_LONG_TAIL_START #0.26#
#define WG_LONG_TAIL_LEVEL #0.53#
#define WG_LONG_TAIL_DECAY #0.25#
#define WG_MID_DIP_START #0.5#
#define WG_MID_DIP_ATTACK #0.06#
; A level below 1 makes the mid-note dip an active amplitude contour.
#define WG_MID_DIP_LEVEL #0.85#
#define WG_MID_DIP_HOLD #0.22#
#define WG_MID_DIP_RELEASE #0.12#
#define WG_ULTRA_TAIL_START #1.5#
#define WG_ULTRA_TAIL_LEVEL #0.55#
#define WG_ULTRA_TAIL_DECAY #0.5#
#define WG_FINAL_ULTRA_TAIL_LEVEL #0.15#
#define WG_FINAL_ULTRA_TAIL_START #1.475#
#define WG_FINAL_ULTRA_TAIL_DECAY #0.24#
#define WG_BODY_GAIN #0.78#
#define WG_BODY_DRY #0.16#
#define WG_BODY_LOW #0.0017#
#define WG_BODY_MID #0.0032#
#define WG_BODY_HIGH #0.01195#
; Optional controls below are intentionally zero in the confirmed configuration.
; They remain available for diagnostic or extension renders.
#define WG_BODY_1300 #0#
#define WG_PEAK_650_GAIN #0.01#
#define WG_PEAK_650_HZ #650#
#define WG_PEAK_650_BW #160#
#define WG_PEAK_1700_GAIN #0.01#
#define WG_PEAK_1700_HZ #1700#
#define WG_PEAK_1700_BW #220#
#define WG_HARM2_GAIN #0.152#
#define WG_HARM2_BW #180#
#define WG_HARM3_GAIN #0.22#
#define WG_HARM3_BW #100#
#define WG_HARM4_GAIN #0.12#
#define WG_HARM4_BW #160#
#define WG_HARM4_DIRECT_GAIN #0.063#
#define WG_HARM5_GAIN #0.0535#
#define WG_HARM5_BW #320#
#define WG_HARM6_GAIN #0.13#
#define WG_HARM6_BW #580#
#define WG_HARM7_GAIN #0.025#
#define WG_HARM7_BW #560#
#define WG_HARM8_GAIN #0.12#
#define WG_HARM8_BW #720#
#define WG_HARM9_GAIN #0.0125#
#define WG_HARM9_BW #600#
#define WG_HARM10_GAIN #0.1#
#define WG_HARM10_BW #820#
#define WG_HARM11_GAIN #0.0075#
#define WG_HARM11_BW #680#
#define WG_HARM12_GAIN #0.11#
#define WG_HARM12_BW #700#
#define WG_HARM13_GAIN #0.095#
#define WG_HARM13_BW #680#
#define WG_HARM14_GAIN #0.003#
#define WG_HARM14_BW #780#
#define WG_HARM15_GAIN #0.003#
#define WG_HARM15_BW #900#
#define WG_HARM16_GAIN #0.003#
#define WG_HARM16_BW #900#
; H18 resonance controls are retained for extension renders; the confirmed
; configuration keeps this optional branch disabled and does not instantiate it.
#define WG_HARM18_GAIN #0#
#define WG_HARM18_BW #1000#
#define WG_HARM20_GAIN #0.0015#
#define WG_HARM20_BW #1200#
#define WG_BODY_LPF #8150#
#define WG_LOW_SUB_GAIN #0#
#define WG_LOW_BODY_GAIN #0.0004#
#define WG_LOW_BODY_DELAY #0.026#
#define WG_LOW_BODY_PEAK #0.04#
#define WG_LOW_BODY_TAIL #0.1#
#define WG_LOW_BODY_DECAY #0.11#
#define WG_CONTACT_GAIN #0.005#
#define WG_CONTACT_SKIP #0.004#
#define WG_CONTACT_DELAY #0.0085#
#define WG_CONTACT_HPF #600#
#define WG_CONTACT_LPF #7000#
#define WG_CONTACT_PRELEVEL #0.055#
#define WG_CONTACT_PEAK #0.24#
#define WG_CONTACT_TAIL #0.13#
#define WG_CONTACT_CENTER #1100#
#define WG_CONTACT_BW #1600#
#define WG_PRESS_GAIN #0.0015#
#define WG_PRESS_CENTER #1360#
#define WG_PRESS_BW #900#
#define WG_TIED_GAIN #0.0008#
#define WG_FRIC_GAIN #0.11#
#define WG_FRIC_AMP #0.0044#
#define WG_FRIC_DELAY #0.006#
#define WG_FRIC_PEAK #0.32#
#define WG_FRIC_TAIL #0.05#
#define WG_FRIC_HPF #800#
#define WG_FRIC_LPF #7750#
#define WG_FRIC_MID_HZ #1500#
#define WG_FRIC_MID_BW #700#
#define WG_FRIC_HIGH_HZ #3400#
#define WG_FRIC_HIGH_BW #1200#
#define WG_FINAL_GAIN #2.25#
#define WG_STEREO_DELAY #0.00085#

; Study-specific UDO: broad body filtering plus harmonic resonances.
; Input: a-rate string signal and i-rate fundamental frequency.
opcode TupipaBodyWg2, a, ai
  ain, iCps xin
  aDry tone ain, $WG_BODY_LPF
  a154 reson ain, 154, 90
  a218 reson ain, 218, 105
  a317 reson ain, 317, 130
  a363 reson ain, 363, 145
  a539 reson ain, 539, 190
  a719 reson ain, 719, 260
  a891 reson ain, 891, 320
  a1194 reson ain, 1194, 420
  a1300 reson ain, 1300, 260
  a650 butbp ain, $WG_PEAK_650_HZ, $WG_PEAK_650_BW
  a1700 butbp ain, $WG_PEAK_1700_HZ, $WG_PEAK_1700_BW
  aH2 butbp ain, iCps * 2, $WG_HARM2_BW
  aH3 butbp ain, iCps * 3, $WG_HARM3_BW
  aH4 butbp ain, iCps * 4, $WG_HARM4_BW
  aH5 butbp ain, iCps * 5, $WG_HARM5_BW
  aH6 butbp ain, iCps * 6, $WG_HARM6_BW
  aH7 butbp ain, iCps * 7, $WG_HARM7_BW
  aH8 butbp ain, iCps * 8, $WG_HARM8_BW
  aH9 butbp ain, iCps * 9, $WG_HARM9_BW
  aH10 butbp ain, iCps * 10, $WG_HARM10_BW
  aH11 butbp ain, iCps * 11, $WG_HARM11_BW
  aH12 butbp ain, iCps * 12, $WG_HARM12_BW
  aH13 butbp ain, iCps * 13, $WG_HARM13_BW
  aH14 butbp ain, iCps * 14, $WG_HARM14_BW
  aH15 butbp ain, iCps * 15, $WG_HARM15_BW
  aH16 butbp ain, iCps * 16, $WG_HARM16_BW
  aH20 butbp ain, iCps * 20, $WG_HARM20_BW
  aOut = (aDry * $WG_BODY_DRY) \
    + ((a154 * 0.42 + a218 * 0.58) * $WG_BODY_LOW) \
    + ((a317 * 0.48 + a363 * 0.38 + a539 * 0.28) * $WG_BODY_MID) \
    + ((a719 * 0.30 + a891 * 0.18 + a1194 * 0.12) * $WG_BODY_HIGH) \
    + (a1300 * $WG_BODY_1300) \
    + (a650 * $WG_PEAK_650_GAIN) \
    + (a1700 * $WG_PEAK_1700_GAIN) \
    + (aH2 * $WG_HARM2_GAIN) \
    + (aH3 * $WG_HARM3_GAIN) \
    + (aH4 * $WG_HARM4_GAIN) \
    + (aH5 * $WG_HARM5_GAIN) \
    + (aH6 * $WG_HARM6_GAIN) \
    + (aH7 * $WG_HARM7_GAIN) \
    + (aH8 * $WG_HARM8_GAIN) \
    + (aH9 * $WG_HARM9_GAIN) \
    + (aH10 * $WG_HARM10_GAIN) \
    + (aH11 * $WG_HARM11_GAIN) \
    + (aH12 * $WG_HARM12_GAIN) \
    + (aH13 * $WG_HARM13_GAIN) \
    + (aH14 * $WG_HARM14_GAIN) \
    + (aH15 * $WG_HARM15_GAIN) \
    + (aH16 * $WG_HARM16_GAIN) \
    + (aH20 * $WG_HARM20_GAIN)
  xout dcblock2(aOut)
endop

; Study-specific UDO: shapes the muted-plectrum contact transient.
; Input: a-rate muted-pick signal, k-rate gain, and i-rate F0.
opcode PlectrumContactWg2, a, aki
  aExc, kGain, iCps xin
  aHp buthp aExc, $WG_CONTACT_HPF
  aLp tone aHp, $WG_CONTACT_LPF
  aContact reson aLp, $WG_CONTACT_CENTER, $WG_CONTACT_BW
  aPress reson aLp, $WG_PRESS_CENTER, $WG_PRESS_BW
  aTied comb aHp, 0.030, 1 / iCps
  aTied buthp aTied, 620
  aTied tone aTied, 4300
  xout (aContact * kGain) + (aPress * $WG_PRESS_GAIN) + (aTied * $WG_TIED_GAIN)
endop

; Study-specific UDO: band-limited friction/noise excitation.
; Input: k-rate noise amplitude.
opcode FrictionNoiseWg2, a, k
  kAmp xin
  aN rand kAmp
  aPre tone aN, $WG_FRIC_LPF
  aPre buthp aPre, $WG_FRIC_HPF
  aMid reson aPre, $WG_FRIC_MID_HZ, $WG_FRIC_MID_BW
  aHigh reson aPre, $WG_FRIC_HIGH_HZ, $WG_FRIC_HIGH_BW
  xout (aMid * 0.60) + (aHigh * 0.40)
endop

; Study-specific UDO: optional low-frequency body transient coloration.
opcode LowBodyTransientWg2, a, a
  ain xin
  aPre tone ain, 720
  aPre buthp aPre, 45
  a87 reson aPre, 87, 34
  a114 reson aPre, 114, 42
  a155 reson aPre, 155, 58
  a218 reson aPre, 218, 78
  a246 reson aPre, 246, 90
  xout dcblock2((a87 * (0.30 + $WG_LOW_SUB_GAIN)) + (a114 * 0.28) + (a155 * 0.24) + (a218 * 0.16) + (a246 * 0.12))
endop

instr 1
  iAmp = $WG_AMP
  ; p4 is the performance-time pitch in Hz.  The confirmed 369-Hz
  ; open-string setting is used by the standard score event below.
  iRequestedCps = p4
  if iRequestedCps > 0 then
    iCps = iRequestedCps
  else
    iCps = $WG_F0
  endif
  ; Keep the requested pitch inside the documented range. This also keeps
  ; the 20th pitch-dependent body band below Nyquist at the declared sr.
  iCps limit iCps, $WG_MIN_F0, $WG_MAX_F0

  aString wgpluck2 $WG_PLUCK_POS, iAmp, iCps, $WG_PICKUP, $WG_REFL
  aString dcblock2 aString
  aString buthp aString, $WG_CORE_HPF
  aString tone aString, $WG_CORE_LPF
  aStringBright buthp aString, $WG_CORE_BRIGHT_HPF
  aStringBright tone aStringBright, $WG_CORE_BRIGHT_LPF
  aToneGate linseg 0, $WG_TONE_HOLD, 0, $WG_TONE_RISE, $WG_CORE_ATTACK_LEVEL, $WG_CORE_RECOVER, 1, 8.0, 1
  aTailShape linseg 1, $WG_TAIL_START, 1, $WG_TAIL_DECAY, $WG_TAIL_LEVEL, 8.0, $WG_TAIL_LEVEL
  aLongTail linseg 1, $WG_LONG_TAIL_START, 1, $WG_LONG_TAIL_DECAY, $WG_LONG_TAIL_LEVEL, 8.0, $WG_LONG_TAIL_LEVEL
  aUltraTail linseg 1, $WG_ULTRA_TAIL_START, 1, $WG_ULTRA_TAIL_DECAY, $WG_ULTRA_TAIL_LEVEL, 8.0, $WG_ULTRA_TAIL_LEVEL
  aCoreBase = aString * aToneGate * aTailShape * aLongTail * aUltraTail * $WG_CORE_GAIN
  aCoreBright = aStringBright * aToneGate * aTailShape * aLongTail * aUltraTail * $WG_CORE_BRIGHT_GAIN
  ; Map the complete measured envelope trajectory across the active note.
  ; p3 is the score duration, so the mapping remains correct if the note
  ; duration is changed for a separate render.
  iDur = p3
  kPos limit timeinsts() / iDur, 0, 0.999
  kH2  tablei kPos, giMonoH02, 1, 0, 1
  kH3  tablei kPos, giMonoH03, 1, 0, 1
  kH4  tablei kPos, giMonoH04, 1, 0, 1
  kH5  tablei kPos, giMonoH05, 1, 0, 1
  kH6  tablei kPos, giMonoH06, 1, 0, 1
  kH7  tablei kPos, giMonoH07, 1, 0, 1
  kH8  tablei kPos, giMonoH08, 1, 0, 1
  kH9  tablei kPos, giMonoH09, 1, 0, 1
  kH10 tablei kPos, giMonoH10, 1, 0, 1
  kH11 tablei kPos, giMonoH11, 1, 0, 1
  kH12 tablei kPos, giMonoH12, 1, 0, 1
  kH13 tablei kPos, giMonoH13, 1, 0, 1
  kH14 tablei kPos, giMonoH14, 1, 0, 1
  kBend linseg 1.004, 0.050, 1.0, 2.350, 1.0
  aPartialEnv linseg 0, $WG_TONE_HOLD, 0, $WG_TONE_RISE, 1, 0.060, 0.45, 0.120, 0.22, 0.620, 0.06, 1.450, 0
  aP2  poscil iAmp * kH2  * $WG_HARM2_GAIN  * $WG_PARTIAL_GAIN * 1.20, iCps * 2  * kBend, giSine, 0.43
  aP3  poscil iAmp * kH3  * $WG_HARM3_GAIN  * $WG_PARTIAL_GAIN * 2.00, iCps * 3  * kBend, giSine, 0.61
  aP4  poscil iAmp * kH4  * $WG_HARM4_GAIN  * $WG_PARTIAL_GAIN * 2.50, iCps * 4  * kBend, giSine, 0.29
  aP4Direct poscil iAmp * $WG_HARM4_DIRECT_GAIN * $WG_PARTIAL_GAIN * 6.00, iCps * 4 * kBend, giSine, 0.41
  aP5  poscil iAmp * kH5  * $WG_HARM5_GAIN  * $WG_PARTIAL_GAIN * 2.80, iCps * 5  * kBend, giSine, 0.78
  aP6  poscil iAmp * kH6  * $WG_HARM6_GAIN  * $WG_PARTIAL_GAIN * 3.20, iCps * 6  * kBend, giSine, 0.12
  aP7  poscil iAmp * (kH7 + $WG_HIGH_PARTIAL_FLOOR)  * $WG_HARM7_GAIN  * $WG_PARTIAL_GAIN * 9.60, iCps * 7  * kBend, giSine, 0.67
  aP8  poscil iAmp * kH8  * $WG_HARM8_GAIN  * $WG_PARTIAL_GAIN * 9.80, iCps * 8  * kBend, giSine, 0.36
  aP9  poscil iAmp * (kH9 + $WG_HIGH_PARTIAL_FLOOR)  * $WG_HARM9_GAIN  * $WG_PARTIAL_GAIN * 9.70, iCps * 9  * kBend, giSine, 0.55
  aP10 poscil iAmp * kH10 * $WG_HARM10_GAIN * $WG_PARTIAL_GAIN * 9.20, iCps * 10 * kBend, giSine, 0.22
  aP11 poscil iAmp * (kH11 + $WG_HIGH_PARTIAL_FLOOR) * $WG_HARM11_GAIN * $WG_PARTIAL_GAIN * 9.20, iCps * 11 * kBend, giSine, 0.74
  aP12 poscil iAmp * (kH12 + $WG_HIGH_PARTIAL_FLOOR) * $WG_HARM12_GAIN * $WG_PARTIAL_GAIN * 8.80, iCps * 12 * kBend, giSine, 0.18
  aP13 poscil iAmp * kH13 * $WG_HARM13_GAIN * $WG_PARTIAL_GAIN * 8.40, iCps * 13 * kBend, giSine, 0.49
  aP14 poscil iAmp * (kH14 + ($WG_HIGH_PARTIAL_FLOOR * 0.50)) * $WG_HARM14_GAIN * $WG_PARTIAL_GAIN * 7.80, iCps * 14 * kBend, giSine, 0.31
  aPartials = (aP2 + aP3 + aP4 + aP4Direct + aP5 + aP6 + aP7 + aP8 + aP9 + aP10 + aP11 + aP12 + aP13 + aP14) * aPartialEnv * aUltraTail
  aPartials tone aPartials, $WG_CORE_BRIGHT_LPF
  aCore = aCoreBase + aCoreBright + aPartials

  ; The explicit partial layer carries the measured time-varying harmonic
  ; amplitudes. The body UDO below applies body filtering and resonance
  ; coloration to the assembled core; its harmonic bands are not extra
  ; independent source oscillators.
  aBody TupipaBodyWg2 aCore, iCps
  aBody = aBody * $WG_BODY_GAIN

  aMutedRaw diskin2 "data/recording_tables/mono_muted_pick.wav", 1, $WG_CONTACT_SKIP, 0
  aMuted delay aMutedRaw, $WG_CONTACT_DELAY
  aLowMuted delay aMutedRaw, $WG_LOW_BODY_DELAY
  aLowBodyEnv linseg 0, 0.006, $WG_LOW_BODY_PEAK, $WG_LOW_BODY_DECAY, $WG_LOW_BODY_TAIL, 0.320, 0, 8.0, 0
  aLowBody LowBodyTransientWg2 aLowMuted * aLowBodyEnv
  aLowBody = aLowBody * $WG_LOW_BODY_GAIN
  ; The optional low-frequency resonator bank and synthesized low tails are
  ; disabled in the confirmed configuration; the measured low-body transient
  ; above is the active low-frequency contribution.
  aContactEnv linseg 0, 0.005, $WG_CONTACT_PRELEVEL, 0.018, $WG_CONTACT_PEAK, 0.044, $WG_CONTACT_TAIL, 0.076, 0, 8.0, 0
  aContact PlectrumContactWg2 aMuted * aContactEnv, $WG_CONTACT_GAIN, iCps

  aFricEnv linseg 0, $WG_FRIC_DELAY, 0.04, 0.018, $WG_FRIC_PEAK, 0.052, $WG_FRIC_TAIL, 0.082, 0, 8.0, 0
  aFric FrictionNoiseWg2 iAmp * $WG_FRIC_AMP
  aFric = aFric * aFricEnv * $WG_FRIC_GAIN

  iMonitor = $WG_MONITOR_MODE
  if iMonitor == 1 then
    aOut = aCore
  elseif iMonitor == 2 then
    aOut = aBody + aLowBody
  elseif iMonitor == 3 then
    aOut = aContact
  elseif iMonitor == 4 then
    aOut = aFric
  else
    aOut = aBody + aLowBody + aContact + aFric
  endif

  aAttackShoulder linseg 1, 0.050, 1, 0.008, $WG_ATTACK_SHOULDER_LEVEL, 0.017, $WG_ATTACK_SHOULDER_LEVEL, 0.015, 1, 8.0, 1
  aOut = aOut * aAttackShoulder
  ; WG_MID_DIP_LEVEL=0.85 makes this a real, controlled mid-note reduction.
  aMidDip linseg 1, $WG_MID_DIP_START, 1, $WG_MID_DIP_ATTACK, $WG_MID_DIP_LEVEL, $WG_MID_DIP_HOLD, $WG_MID_DIP_LEVEL, $WG_MID_DIP_RELEASE, 1, 8.0, 1
  aOut = aOut * aMidDip
  aFinalUltraTail linseg 1, $WG_FINAL_ULTRA_TAIL_START, 1, $WG_FINAL_ULTRA_TAIL_DECAY, $WG_FINAL_ULTRA_TAIL_LEVEL, 8.0, $WG_FINAL_ULTRA_TAIL_LEVEL
  aOut = aOut * aFinalUltraTail
  aOut dcblock2 aOut
  ; The standard score event lasts 2.4 s. Fade the final 10 ms to zero to
  ; avoid an abrupt event boundary and leave no audible hard stop.
  aFinalFade linseg 1, p3 - 0.010, 1, 0.010, 0
  aOut = aOut * aFinalFade
  outs aOut * $WG_FINAL_GAIN, delay(aOut, $WG_STEREO_DELAY) * $WG_FINAL_GAIN * 0.94
endin
</CsInstruments>
<CsScore>
; The confirmed audit render is a 2.4-s note.  p4 sets the requested
; fundamental frequency in Hz.  Use 247.8-1000 Hz; values outside this range
; are limited internally.  The standard render below uses the 369-Hz setting.
; This source renders isolated plucks. Tremolo is a future performance-technique
; extension and is not implemented by the present instrument definition.
i 1 0 2.4 369
e
</CsScore>
</CsoundSynthesizer>
