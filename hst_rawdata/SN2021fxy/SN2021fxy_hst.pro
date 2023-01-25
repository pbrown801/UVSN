pro SN2021fxy_hst




;;;;; use error column/ data quality

readcol, 'SN2021fxy_nuv_20210329_1.dat', wave_opt1_1, flux_opt1_1, fluxerr_opt1_1, dq_opt1_1

readcol, 'SN2021fxy_muv_20210329_1.dat', wave_uv1_1, flux_uv1_1, fluxerr_uv1_1, dq_uv1_1

readcol, 'SN2021fxy_muv_20210329_2.dat', wave_uv1_2, flux_uv1_2, fluxerr_uv1_2, dq_uv1_2

readcol, 'SN2021fxy_muv_20210329_3.dat', wave_uv1_3, flux_uv1_3, fluxerr_uv1_3, dq_uv1_3

readcol, 'SN2021fxy_muv_20210330_1.dat', wave_uv1_4, flux_uv1_4, fluxerr_uv1_4, dq_uv1_4

readcol, 'SN2021fxy_muv_20210330_2.dat', wave_uv1_5, flux_uv1_5, fluxerr_uv1_5, dq_uv1_5


;;;;;;;; test error codes
cgplot,   wave_uv1_1[where(dq_uv1_1 ge 0)],   flux_uv1_1[where(dq_uv1_1 ge 0)],   psym=4, yrange=[0,2*10.0^(-14)]
;cgoplot,  wave_uv1_1[where(dq_uv1_1 eq 16)],  flux_uv1_1[where(dq_uv1_1 eq 16)],  psym=14, color='red'
;cgoplot,  wave_uv1_1[where(dq_uv1_1 eq 272)], flux_uv1_1[where(dq_uv1_1 eq 272)], psym=14, color='blue'


cgoplot,  wave_uv1_1[where(dq_uv1_1 eq 2564)],  flux_uv1_1[where(dq_uv1_1 eq 2564)],  psym=14, color='red'
;;  these cover the highest short wavelength point and most of the long wavelength scatter
cgoplot,  wave_uv1_1[where(dq_uv1_1 eq 2048)],  flux_uv1_1[where(dq_uv1_1 eq 2048)],  psym=14, color='blue'
;;  these cover the highest short wavelength point and most of the long wavelength scatter


cgplot,   wave_opt1_1[where(dq_opt1_1 ge 0)],   flux_opt1_1[where(dq_opt1_1 ge 0)],   psym=4, yrange=[0,2*10.0^(-14)]
cgoplot,  wave_opt1_1[where(dq_opt1_1 eq 16)],  flux_opt1_1[where(dq_opt1_1 eq 16)],  psym=14, color='red'
; lots of 16

;  cgplot,  wave_opt1_1[where(dq_opt1_1 ne 16)],  flux_opt1_1[where(dq_opt1_1 ne 16)],  psym=14, color='black'


cgoplot,  wave_opt1_1[where(dq_opt1_1 eq 272)], flux_opt1_1[where(dq_opt1_1 eq 272)], psym=14, color='blue'


cgoplot,  wave_opt1_1[where(dq_opt1_1 eq 528)],  flux_opt1_1[where(dq_opt1_1 eq 528)],  psym=14, color='purple'
;; this gets rid of a few bad points
cgoplot,  wave_opt1_1[where(dq_opt1_1 eq 2048)],  flux_opt1_1[where(dq_opt1_1 eq 2048)],  psym=14, color='blue'
cgoplot,  wave_opt1_1[where(dq_opt1_1 eq 2564)],  flux_opt1_1[where(dq_opt1_1 eq 2564)],  psym=14, color='red'
;; single late point


cgoplot,  wave_opt1_1[where(dq_opt1_1 eq 1024)],  flux_opt1_1[where(dq_opt1_1 eq 1024)],  psym=14, color='green'
; these look fine



cgoplot,  wave_opt1_1[where(dq_opt1_1 eq 256)],  flux_opt1_1[where(dq_opt1_1 eq 256)],  psym=14, color='purple'
cgoplot,  wave_opt1_1[where(dq_opt1_1 eq 512)],  flux_opt1_1[where(dq_opt1_1 eq 512)],  psym=14, color='red'
;; cut these


cgoplot,  wave_opt1_1[where(dq_opt1_1 eq 1040)],  flux_opt1_1[where(dq_opt1_1 eq 1040)],  psym=14, color='purple'
; points seem okay

cgoplot,  wave_opt1_1[where(dq_opt1_1 eq 2560)],  flux_opt1_1[where(dq_opt1_1 eq 2560)],  psym=14, color='blue'
; cut this

cgoplot,  wave_opt1_1[where(dq_opt1_1 eq 8208)],  flux_opt1_1[where(dq_opt1_1 eq 8208)],  psym=14, color='red'
cgoplot,  wave_opt1_1[where(dq_opt1_1 eq 16912)],  flux_opt1_1[where(dq_opt1_1 eq 16912)],  psym=14, color='purple'



cgplot,  wave_uv1_1[where(dq_uv1_1 eq 0)], flux_uv1_1[where(dq_uv1_1 eq 0)], xrange=[1600,5800], yrange=[0,2.0*10.0^(-14)]
cgoplot, wave_uv1_2[where(dq_uv1_2 eq 0)], flux_uv1_2[where(dq_uv1_2 eq 0)], color='red'
cgoplot, wave_opt1_1[where(dq_opt1_1 eq 0)], flux_opt1_1[where(dq_opt1_1 eq 0)], color='blue'

cgplot,  wave_uv1_1[where(dq_uv1_1 eq 0)], flux_uv1_1[where(dq_uv1_1 eq 0)], xrange=[1600,3200], yrange=[-4.0*10.0^(-14),4.0*10.0^(-14)]
cgoplot, wave_uv1_2[where(dq_uv1_2 eq 0)], flux_uv1_2[where(dq_uv1_2 eq 0)], color='red'
cgoplot, wave_uv1_3[where(dq_uv1_3 eq 0)], flux_uv1_3[where(dq_uv1_3 eq 0)], color='orange'
cgoplot, wave_uv1_4[where(dq_uv1_4 eq 0)], flux_uv1_4[where(dq_uv1_4 eq 0)], color='purple'
cgoplot, wave_uv1_5[where(dq_uv1_5 eq 0)], flux_uv1_5[where(dq_uv1_5 eq 0)], color='maroon'
cgoplot, wave_opt1_1[where(dq_opt1_1 eq 0)], flux_opt1_1[where(dq_opt1_1 eq 0)], color='blue'


 mg2= [2796.0,2803] 
;; weak mg2 from MW, nothing obvious between z=0.02-0.03



;1600 - 5680 combining both spectra


wave=[wave_opt1_1, wave_uv1_1, wave_uv1_2, wave_uv1_3, wave_uv1_4, wave_uv1_5]
flux=[flux_opt1_1, flux_uv1_1, flux_uv1_2, flux_uv1_3, flux_uv1_4, flux_uv1_5]
fluxerr=[fluxerr_opt1_1, fluxerr_uv1_1, fluxerr_uv1_2, fluxerr_uv1_3, fluxerr_uv1_4, fluxerr_uv1_5]
dq=[dq_opt1_1, dq_uv1_1, dq_uv1_2, dq_uv1_3, dq_uv1_4, dq_uv1_5]


;;;
newwave=fltarr(800+1)
newflux=make_array(800+1,/double, value=!Values.F_NAN)
newfluxerr=make_array(800+1,/double, value=!Values.F_NAN)


for i=0,n_elements(newwave)-1 do newwave[i]=1600+i*5.0

weights=2D
for i=0,n_elements(newwave)-1 do begin

	match=where(abs(wave - newwave[i]) le 5 and dq eq 0 and finite(flux) eq 1,count)
	if count gt 0 then	weights=1.0/(fluxerr[match]^2.0)
	if count gt 0 then	newflux[i]=total( flux[match]*weights ) / total(weights)
	if count gt 0 then	newfluxerr[i]=sqrt(1.0/total( weights) )

endfor

print, 'begin first epoch'
for i=0,n_elements(newwave)-1 do print, newwave[i], newflux[i], newfluxerr[i]
print, 'end first epoch'

;;;;; epoch 2

readcol, 'SN2021fxy_nuv_20210401_1.dat', wave_opt2_1, flux_opt2_1, fluxerr_opt2_1, dq_opt2_1

readcol, 'SN2021fxy_muv_20210401_1.dat', wave_uv2_1, flux_uv2_1, fluxerr_uv2_1, dq_uv2_1




cgplot,  wave_uv2_1[where(dq_uv2_1 eq 0)], flux_uv2_1[where(dq_uv2_1 eq 0)], xrange=[1600,5800], yrange=[0,2.0*10.0^(-14)], psym=4
cgoplot, wave_opt2_1[where(dq_opt2_1 eq 0)], flux_opt2_1[where(dq_opt2_1 eq 0)], color='red', psym=4

cgplot,  wave_uv2_1[where(dq_uv2_1 eq 0)], flux_uv2_1[where(dq_uv2_1 eq 0)], xrange=[1600,3200], yrange=[0,2.0*10.0^(-15)]
cgoplot, wave_opt2_1[where(dq_opt2_1 eq 0)], flux_opt2_1[where(dq_opt2_1 eq 0)], color='red'

wave=[wave_opt2_1, wave_uv2_1]
flux=[flux_opt2_1, flux_uv2_1]
fluxerr=[fluxerr_opt2_1, fluxerr_uv2_1]
dq=[dq_opt2_1, dq_uv2_1]


newwave2=fltarr(800+1)
newflux2=make_array(800+1,/double, value=!Values.F_NAN)
newfluxerr2=make_array(800+1,/double, value=!Values.F_NAN)


for i=0,n_elements(newwave2)-1 do newwave2[i]=1600+i*5.0

weights=2D
for i=0,n_elements(newwave)-1 do begin

	match=where(abs(wave - newwave2[i]) le 5 and dq eq 0 and finite(flux) eq 1,count)
	if count gt 0 then	weights=1.0/(fluxerr[match]^2.0)
	if count gt 0 then	newflux2[i]=total( flux[match]*weights ) / total(weights)
	if count gt 0 then	newfluxerr2[i]=sqrt(1.0/total( weights) )

endfor

print, 'begin epoch 2'
for i=0,n_elements(newwave2)-1 do print, newwave2[i], newflux2[i], newfluxerr2[i]
print, 'end epoch 2'



;;;;;; 

readcol, '$SNFOLDER/UVSPECTRA/hst/SN2011fe/SN2011fe_sullivan/ptf11kly_20110913.obs.dat', fewave, feflux, feerr
readcol, '$SNFOLDER/github/SN2017erp/hstspec/SN2017erp_hst_20170629.dat', erpwave, erpflux, erperr               
readcol, 'SN2021fxy_hst_20210329.dat', fxywave, fxyflux, fxyerr                                                  
cgplot, fxywave, fxyflux        

cgoplot, fewave, feflux*3.0*10.0^(-2), color='blue'                                                           
cgoplot, fewave, feflux*2.5*10.0^(-2), color='blue'
cgoplot, erpwave, erpflux*0.8, color='red'         
cgoplot, erpwave, erpflux*0.7, color='red'
cgplot, fxywave, fxyflux                           
cgoplot, erpwave, erpflux*0.7, color='red'
cgoplot, fewave, feflux*2.5*10.0^(-2), color='blue'
cgplot, fxywave, fxyflux, xrange=[1600,3600]       
cgoplot, fewave, feflux*2.5*10.0^(-2), color='blue'
cgoplot, erpwave, erpflux*0.7, color='red'         
cgplot, fxywave, fxyflux, xrange=[1600,3000]       
cgoplot, erpwave, erpflux*0.7, color='red'  
cgplot, fxywave, fxyflux, xrange=[1600,2600]
cgoplot, erpwave, erpflux*0.7, color='red'  
cgoplot, fewave, feflux*2.5*10.0^(-3), color='blue'


;;;;; use error column/ data quality

readcol, 'SN2021fxy_nuv_20210408_1.dat', wave_opt4_1, flux_opt4_1, fluxerr_opt4_1, dq_opt4_1

readcol, 'SN2021fxy_muv_20210408_1.dat', wave_uv4_1, flux_uv4_1, fluxerr_uv4_1, dq_uv4_1

readcol, 'SN2021fxy_muv_20210408_2.dat', wave_uv4_2, flux_uv4_2, fluxerr_uv4_2, dq_uv4_2

readcol, 'SN2021fxy_muv_20210408_3.dat', wave_uv4_3, flux_uv4_3, fluxerr_uv4_3, dq_uv4_3




cgplot,  wave_uv4_1[where(dq_uv4_1 eq 0)], flux_uv1_1[where(dq_uv4_1 eq 0)], xrange=[1600,5800], yrange=[0,2.0*10.0^(-14)]
cgoplot, wave_uv4_2[where(dq_uv4_2 eq 0)], flux_uv1_2[where(dq_uv4_2 eq 0)], color='red'
cgoplot, wave_opt4_1[where(dq_opt4_1 eq 0)], flux_opt1_1[where(dq_opt4_1 eq 0)], color='blue'

cgplot,  wave_uv4_1[where(dq_uv4_1 eq 0)], flux_uv4_1[where(dq_uv4_1 eq 0)], xrange=[1600,3200], yrange=[0,4.0*10.0^(-16)]
cgoplot, wave_uv4_2[where(dq_uv4_2 eq 0)], flux_uv4_2[where(dq_uv4_2 eq 0)], color='red'
cgoplot, wave_uv4_3[where(dq_uv4_3 eq 0)], flux_uv4_3[where(dq_uv4_3 eq 0)], color='orange'
cgoplot, wave_opt4_1[where(dq_opt4_1 eq 0)], flux_opt4_1[where(dq_opt4_1 eq 0)], color='blue'

;1600 - 5680 combining both spectra


wave=[wave_opt4_1, wave_uv4_1, wave_uv4_2, wave_uv4_3]
flux=[flux_opt4_1, flux_uv4_1, flux_uv4_2, flux_uv4_3]
fluxerr=[fluxerr_opt4_1, fluxerr_uv4_1, fluxerr_uv4_2, fluxerr_uv4_3]
dq=[dq_opt4_1, dq_uv4_1, dq_uv4_2, dq_uv4_3]


;;;
newwave4=fltarr(800+1)
newflux4=make_array(800+1,/double, value=!Values.F_NAN)
newfluxerr4=make_array(800+1,/double, value=!Values.F_NAN)


for i=0,n_elements(newwave4)-1 do newwave4[i]=1600+i*5.0

weights=2D
for i=0,n_elements(newwave)-1 do begin

	match=where(abs(wave - newwave4[i]) le 5 and dq eq 0 and finite(flux) eq 1,count)
	if count gt 0 then	weights=1.0/(fluxerr[match]^2.0)
	if count gt 0 then	newflux4[i]=total( flux[match]*weights ) / total(weights)
	if count gt 0 then	newfluxerr4[i]=sqrt(1.0/total( weights) )

endfor

print, 'begin epoch 4'
for i=0,n_elements(newwave4)-1 do print, newwave4[i], newflux4[i], newfluxerr4[i]
print, 'end epoch 4'


cgplot, newwave, newflux              
cgoplot, newwave2, newflux2, color='red'
cgoplot, newwave4, newflux4, color='blue'

print, 'final stop'
stop
end