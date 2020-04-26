**Descriptive analysis

**Code table 1

ameans dpcr if menarca3!=.
tabstat lndtrig if menarca3!=., stat(mean n iqr)

sum hemoglobina_glicada , d
bysort menarca3: sum( dECMICE)

tab sobrepeso menarca3, col chi

**Code table 2 

mean dpcr, over(menarca3)
oneway dsysmed menarca3, tab
oneway dsysmed menarca3, bonferroni
anova dsysmed menarca3
rvfplot, yline(0)
regress dsysmed i.menarca3

tab sobrepeso menarca3, col chi
prop sobrepeso if menarca3==2
prop sobrepeso if menarca3==1
prop sobrepeso if menarca3==3
tabodds sobrepeso menarca3
poisson sobrepeso i.menarca3, irr r

**Adjusted analysis

** Code Table 3 - multiple regress

regress dpwv i.menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr
testparm i.menarca3
regress dpwv menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr
testparm menarca3

regress lndtrig i.menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr
testparm i.menarca3
regress lndtrig menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr
testparm menarca3

poisson sobrepeso i.menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr, irr r
testparm i.menarca3
poisson sobrepeso menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr, irr r
testparm menarca3


**Mediation analysis

**Code table 4 

** Systolic blood pressure**

** mediador: BMI **
gformula dsysmed menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, mediation out (dsysmed) /// 
eq(dsysmed: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, dimc:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dsysmed:regress,dimc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimc) control(dimc:27.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimc) derrules(menar3dimc:menarca3*dimc) sample(10000) seed(0)

** mediador: fat mass index **
gformula dsysmed menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, mediation out (dsysmed) /// 
eq(dsysmed: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, dimgdxaaj:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dsysmed:regress,dimgdxaaj:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimgdxaaj) control(dimgdxaaj:11.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimgdxaaj) derrules(menar3dimgdxaaj:menarca3*dimgdxaaj) sample(10000) seed(0)

** mediador: Abdominal visceral fat layer thickness **
gformula dsysmed menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, mediation out (dsysmed) /// 
eq(dsysmed: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, dus_visc: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dsysmed:regress,dus_visc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dus_visc) control(dus_visc:5.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dus_visc) derrules(menar3dus_visc:menarca3*dus_visc) sample(10000) seed(0)

** mediador: Waist circumference **
gformula dsysmed menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, mediation out (dsysmed) /// 
eq(dsysmed: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, dantro32m: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dsysmed:regress,dantro32m:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dantro32m) control(dantro32m:82.8) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dantro32m) derrules(menar3dantro32m:menarca3*dantro32m) sample(10000) seed(0)

** mediador: Waist-to-hip ratio **
gformula dsysmed menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, mediation out (dsysmed) /// 
eq(dsysmed: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, drcq: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dsysmed:regress,drcq:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(drcq) control(drcq:77.6) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3drcq) derrules(menar3drcq:menarca3*drcq) sample(10000) seed(0)


** Diastolic blood pressure**

** mediador: BMI**
gformula ddiamed menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, mediation out (ddiamed) /// 
eq(ddiamed: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, dimc:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(ddiamed:regress,dimc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimc) control(dimc:27.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimc) derrules(menar3dimc:menarca3*dimc) sample(10000) seed(0)

** mediador: fat mass index **
gformula ddiamed menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, mediation out (ddiamed) /// 
eq(ddiamed: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, dimgdxaaj:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(ddiamed:regress,dimgdxaaj:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimgdxaaj) control(dimgdxaaj:11.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimgdxaaj) derrules(menar3dimgdxaaj:menarca3*dimgdxaaj) sample(10000) seed(0)

** mediador: Abdominal visceral fat layer thickness **
gformula ddiamed menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, mediation out (ddiamed) /// 
eq(ddiamed: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, dus_visc: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(ddiamed:regress,dus_visc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dus_visc) control(dus_visc:5.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dus_visc) derrules(menar3dus_visc:menarca3*dus_visc) sample(10000) seed(0)

** mediador: Waist circumference **
gformula ddiamed menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, mediation out (ddiamed) /// 
eq(ddiamed: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, dantro32m: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(ddiamed:regress,dantro32m:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dantro32m) control(dantro32m:82.8) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dantro32m) derrules(menar3dantro32m:menarca3*dantro32m) sample(10000) seed(0)

** mediador: Waist-to-hip ratio **
gformula ddiamed menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, mediation out (ddiamed) /// 
eq(ddiamed: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, drcq: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(ddiamed:regress,drcq:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(drcq) control(drcq:77.6) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3drcq) derrules(menar3drcq:menarca3*drcq) sample(10000) seed(0)


**Carotid intima-media thickness**

** mediador: BMI **
gformula ECMICmicro menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, mediation out (ECMICmicro) /// 
eq(ECMICmicro: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, dimc:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(ECMICmicro:regress,dimc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimc) control(dimc:27.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimc) derrules(menar3dimc:menarca3*dimc) sample(10000) seed(0)

** mediador: fat mass index **
gformula ECMICmicro menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, mediation out (ECMICmicro) /// 
eq(ECMICmicro: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, dimgdxaaj:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(ECMICmicro:regress,dimgdxaaj:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimgdxaaj) control(dimgdxaaj:11.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimgdxaaj) derrules(menar3dimgdxaaj:menarca3*dimgdxaaj) sample(10000) seed(0)

** mediador: Abdominal visceral fat layer thickness **
gformula ECMICmicro menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, mediation out (ECMICmicro) /// 
eq(ECMICmicro: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, dus_visc: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(ECMICmicro:regress,dus_visc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dus_visc) control(dus_visc:5.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dus_visc) derrules(menar3dus_visc:menarca3*dus_visc) sample(10000) seed(0)

** mediador: Waist circumference **
gformula ECMICmicro menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, mediation out (ECMICmicro) /// 
eq(ECMICmicro: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, dantro32m: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(ECMICmicro:regress,dantro32m:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dantro32m) control(dantro32m:82.8) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dantro32m) derrules(menar3dantro32m:menarca3*dantro32m) sample(10000) seed(0)

** mediador: Waist-to-hip ratio **
gformula ECMICmicro menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, mediation out (ECMICmicro) /// 
eq(ECMICmicro: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, drcq: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(ECMICmicro:regress,drcq:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(drcq) control(drcq:77.6) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3drcq) derrules(menar3drcq:menarca3*drcq) sample(10000) seed(0)


**Pulse wave velocity**

** mediador: BMI **
gformula dpwv menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, mediation out (dpwv) /// 
eq(dpwv: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, dimc:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dpwv:regress,dimc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimc) control(dimc:27.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimc) derrules(menar3dimc:menarca3*dimc) sample(10000) seed(0)

** mediador: fat mass index **
gformula dpwv menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, mediation out (dpwv) /// 
eq(dpwv: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, dimgdxaaj:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dpwv:regress,dimgdxaaj:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimgdxaaj) control(dimgdxaaj:11.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimgdxaaj) derrules(menar3dimgdxaaj:menarca3*dimgdxaaj) sample(10000) seed(0)

** mediador: Abdominal visceral fat layer thickness **
gformula dpwv menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, mediation out (dpwv) /// 
eq(dpwv: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, dus_visc: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dpwv:regress,dus_visc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dus_visc) control(dus_visc:5.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dus_visc) derrules(menar3dus_visc:menarca3*dus_visc) sample(10000) seed(0)

** mediador: Waist circumference **
gformula dpwv menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, mediation out (dpwv) /// 
eq(dpwv: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, dantro32m: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dpwv:regress,dantro32m:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dantro32m) control(dantro32m:82.8) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dantro32m) derrules(menar3dantro32m:menarca3*dantro32m) sample(10000) seed(0)

** mediador: Waist-to-hip ratio **
gformula dpwv menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, mediation out (dpwv) /// 
eq(dpwv: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, drcq: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dpwv:regress,drcq:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(drcq) control(drcq:77.6) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3drcq) derrules(menar3drcq:menarca3*drcq) sample(10000) seed(0)


** Total cholesterol **

** mediador: BMI **
gformula dcolesterol menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, mediation out (dcolesterol) /// 
eq(dcolesterol: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, dimc:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dcolesterol:regress,dimc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimc) control(dimc:27.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimc) derrules(menar3dimc:menarca3*dimc) sample(10000) seed(0)

** mediador: fat mass index **
gformula dcolesterol menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, mediation out (dcolesterol) /// 
eq(dcolesterol: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, dimgdxaaj:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dcolesterol:regress,dimgdxaaj:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimgdxaaj) control(dimgdxaaj:11.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimgdxaaj) derrules(menar3dimgdxaaj:menarca3*dimgdxaaj) sample(10000) seed(0)

** mediador: Abdominal visceral fat layer thickness **
gformula dcolesterol menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, mediation out (dcolesterol) /// 
eq(dcolesterol: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, dus_visc: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dcolesterol:regress,dus_visc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dus_visc) control(dus_visc:5.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dus_visc) derrules(menar3dus_visc:menarca3*dus_visc) sample(10000) seed(0)

** mediador: Waist circumference **
gformula dcolesterol menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, mediation out (dcolesterol) /// 
eq(dcolesterol: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, dantro32m: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dcolesterol:regress,dantro32m:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dantro32m) control(dantro32m:82.8) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dantro32m) derrules(menar3dantro32m:menarca3*dantro32m) sample(10000) seed(0)

** mediador: Waist-to-hip ratio **
gformula dcolesterol menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, mediation out (dcolesterol) /// 
eq(dcolesterol: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, drcq: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dcolesterol:regress,drcq:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(drcq) control(drcq:77.6) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3drcq) derrules(menar3drcq:menarca3*drcq) sample(10000) seed(0)


** HDL **

** mediador: BMI **
gformula dhdl menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, mediation out (dhdl) /// 
eq(dhdl: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, dimc:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dhdl:regress,dimc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimc) control(dimc:27.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimc) derrules(menar3dimc:menarca3*dimc) sample(10000) seed(0)

** mediador: fat mass index**
gformula dhdl menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, mediation out (dhdl) /// 
eq(dhdl: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, dimgdxaaj:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dhdl:regress,dimgdxaaj:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimgdxaaj) control(dimgdxaaj:11.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimgdxaaj) derrules(menar3dimgdxaaj:menarca3*dimgdxaaj) sample(10000) seed(0)

** mediador: Abdominal visceral fat layer thickness **
gformula dhdl menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, mediation out (dhdl) /// 
eq(dhdl: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, dus_visc: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dhdl:regress,dus_visc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dus_visc) control(dus_visc:5.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dus_visc) derrules(menar3dus_visc:menarca3*dus_visc) sample(10000) seed(0)

** mediador: Waist circumference **
gformula dhdl menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, mediation out (dhdl) /// 
eq(dhdl: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, dantro32m: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dhdl:regress,dantro32m:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dantro32m) control(dantro32m:82.8) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dantro32m) derrules(menar3dantro32m:menarca3*dantro32m) sample(10000) seed(0)

** mediador: Waist-to-hip ratio **
gformula dhdl menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, mediation out (dhdl) /// 
eq(dhdl: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, drcq: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dhdl:regress,drcq:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(drcq) control(drcq:77.6) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3drcq) derrules(menar3drcq:menarca3*drcq) sample(10000) seed(0)


** LDL **

** mediador: BMI **
gformula dldl menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, mediation out (dldl) /// 
eq(dldl: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, dimc:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dldl:regress,dimc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimc) control(dimc:27.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimc) derrules(menar3dimc:menarca3*dimc) sample(10000) seed(0)

** mediador: fat mass index **
gformula dldl menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, mediation out (dldl) /// 
eq(dldl: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, dimgdxaaj:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dldl:regress,dimgdxaaj:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimgdxaaj) control(dimgdxaaj:11.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimgdxaaj) derrules(menar3dimgdxaaj:menarca3*dimgdxaaj) sample(10000) seed(0)

** mediador: Abdominal visceral fat layer thickness **
gformula dldl menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, mediation out (dldl) /// 
eq(dldl: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, dus_visc: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dldl:regress,dus_visc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dus_visc) control(dus_visc:5.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dus_visc) derrules(menar3dus_visc:menarca3*dus_visc) sample(10000) seed(0)

** mediador: Waist circumference **
gformula dldl menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, mediation out (dldl) /// 
eq(dldl: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, dantro32m: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dldl:regress,dantro32m:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dantro32m) control(dantro32m:82.8) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dantro32m) derrules(menar3dantro32m:menarca3*dantro32m) sample(10000) seed(0)

** mediador: Waist-to-hip ratio **
gformula dldl menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, mediation out (dldl) /// 
eq(dldl: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, drcq: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dldl:regress,drcq:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(drcq) control(drcq:77.6) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3drcq) derrules(menar3drcq:menarca3*drcq) sample(10000) seed(0)


** log triglycerides **

** mediador: BMI **
gformula lndtrig menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, mediation out (lndtrig) /// 
eq(lndtrig: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, dimc:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(lndtrig:regress,dimc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimc) control(dimc:27.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimc) derrules(menar3dimc:menarca3*dimc) sample(10000) seed(0)

** mediador: fat mass index **
gformula lndtrig menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, mediation out (lndtrig) /// 
eq(lndtrig: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, dimgdxaaj:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(lndtrig:regress,dimgdxaaj:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimgdxaaj) control(dimgdxaaj:11.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimgdxaaj) derrules(menar3dimgdxaaj:menarca3*dimgdxaaj) sample(10000) seed(0)

** mediador: Abdominal visceral fat layer thickness **
gformula lndtrig menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, mediation out (lndtrig) /// 
eq(lndtrig: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, dus_visc: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(lndtrig:regress,dus_visc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dus_visc) control(dus_visc:5.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dus_visc) derrules(menar3dus_visc:menarca3*dus_visc) sample(10000) seed(0)

** mediador: Waist circumference **
gformula lndtrig menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, mediation out (lndtrig) /// 
eq(lndtrig: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, dantro32m: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(lndtrig:regress,dantro32m:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dantro32m) control(dantro32m:82.8) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dantro32m) derrules(menar3dantro32m:menarca3*dantro32m) sample(10000) seed(0)

** mediador: Waist-to-hip ratio **
gformula lndtrig menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, mediation out (lndtrig) /// 
eq(lndtrig: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, drcq: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(lndtrig:regress,drcq:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(drcq) control(drcq:77.6) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3drcq) derrules(menar3drcq:menarca3*drcq) sample(10000) seed(0)



** log C-reactive protein **

** mediador: BMI **
gformula lndpcr10 menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, mediation out (lndpcr10) /// 
eq(lndpcr10: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, dimc:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(lndpcr10:regress,dimc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimc) control(dimc:27.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimc) derrules(menar3dimc:menarca3*dimc) sample(10000) seed(0)

** mediador: fat mass index **
gformula lndpcr10 menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, mediation out (lndpcr10) /// 
eq(lndpcr10: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, dimgdxaaj:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(lndpcr10:regress,dimgdxaaj:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimgdxaaj) control(dimgdxaaj:11.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimgdxaaj) derrules(menar3dimgdxaaj:menarca3*dimgdxaaj) sample(10000) seed(0)

** mediador: Abdominal visceral fat layer thickness **
gformula lndpcr10 menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, mediation out (lndpcr10) /// 
eq(lndpcr10: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, dus_visc: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(lndpcr10:regress,dus_visc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dus_visc) control(dus_visc:5.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dus_visc) derrules(menar3dus_visc:menarca3*dus_visc) sample(10000) seed(0)

** mediador: Waist circumference **
gformula lndpcr10 menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, mediation out (lndpcr10) /// 
eq(lndpcr10: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, dantro32m: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(lndpcr10:regress,dantro32m:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dantro32m) control(dantro32m:82.8) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dantro32m) derrules(menar3dantro32m:menarca3*dantro32m) sample(10000) seed(0)

** mediador: Waist-to-hip ratio **
gformula lndpcr10 menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, mediation out (lndpcr10) /// 
eq(lndpcr10: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, drcq: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(lndpcr10:regress,drcq:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(drcq) control(drcq:77.6) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3drcq) derrules(menar3drcq:menarca3*drcq) sample(10000) seed(0)


** Plasma glucose **

** mediador: BMI **
gformula dglicose menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, mediation out (dglicose) /// 
eq(dglicose: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, dimc:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dglicose:regress,dimc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimc) control(dimc:27.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimc) derrules(menar3dimc:menarca3*dimc) sample(10000) seed(0)

** mediador: fat mass index **
gformula dglicose menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, mediation out (dglicose) /// 
eq(dglicose: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, dimgdxaaj:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dglicose:regress,dimgdxaaj:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimgdxaaj) control(dimgdxaaj:11.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimgdxaaj) derrules(menar3dimgdxaaj:menarca3*dimgdxaaj) sample(10000) seed(0)

** mediador: Abdominal visceral fat layer thickness **
gformula dglicose menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, mediation out (dglicose) /// 
eq(dglicose: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, dus_visc: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dglicose:regress,dus_visc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dus_visc) control(dus_visc:5.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dus_visc) derrules(menar3dus_visc:menarca3*dus_visc) sample(10000) seed(0)

** mediador: Waist circumference **
gformula dglicose menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, mediation out (dglicose) /// 
eq(dglicose: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, dantro32m: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dglicose:regress,dantro32m:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dantro32m) control(dantro32m:82.8) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dantro32m) derrules(menar3dantro32m:menarca3*dantro32m) sample(10000) seed(0)

** mediador: Waist-to-hip ratio **
gformula dglicose menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, mediation out (dglicose) /// 
eq(dglicose: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, drcq: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(dglicose:regress,drcq:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(drcq) control(drcq:77.6) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3drcq) derrules(menar3drcq:menarca3*drcq) sample(10000) seed(0)



** Glycated hemoglobin **

** mediador: BMI **
gformula hemoglobina_glicada menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, mediation out (hemoglobina_glicada) /// 
eq(hemoglobina_glicada: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimc menar3dimc drenda_limpa pgsatvetnova dativolazdes, dimc:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(hemoglobina_glicada:regress,dimc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimc) control(dimc:27.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimc) derrules(menar3dimc:menarca3*dimc) sample(10000) seed(0)

** mediador: fat mass index **
gformula hemoglobina_glicada menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, mediation out (hemoglobina_glicada) /// 
eq(hemoglobina_glicada: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dimgdxaaj menar3dimgdxaaj drenda_limpa pgsatvetnova dativolazdes, dimgdxaaj:menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(hemoglobina_glicada:regress,dimgdxaaj:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dimgdxaaj) control(dimgdxaaj:11.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dimgdxaaj) derrules(menar3dimgdxaaj:menarca3*dimgdxaaj) sample(10000) seed(0)

** mediador: Abdominal visceral fat layer thickness **
gformula hemoglobina_glicada menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, mediation out (hemoglobina_glicada) /// 
eq(hemoglobina_glicada: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dus_visc menar3dus_visc drenda_limpa pgsatvetnova dativolazdes, dus_visc: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(hemoglobina_glicada:regress,dus_visc:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dus_visc) control(dus_visc:5.5) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dus_visc) derrules(menar3dus_visc:menarca3*dus_visc) sample(10000) seed(0)

** mediador: Waist circumference **
gformula hemoglobina_glicada menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, mediation out (hemoglobina_glicada) /// 
eq(hemoglobina_glicada: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr dantro32m menar3dantro32m drenda_limpa pgsatvetnova dativolazdes, dantro32m: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(hemoglobina_glicada:regress,dantro32m:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(dantro32m) control(dantro32m:82.8) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3dantro32m) derrules(menar3dantro32m:menarca3*dantro32m) sample(10000) seed(0)

** mediador: Waist-to-hip ratio **
gformula hemoglobina_glicada menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, mediation out (hemoglobina_glicada) /// 
eq(hemoglobina_glicada: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drcq menar3drcq drenda_limpa pgsatvetnova dativolazdes, drcq: menarca3 prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr drenda_limpa pgsatvetnova dativolazdes, drenda_limpa:prenda pescmaeg, pgsatvetnova:prenda pescmaeg, dativolazdes:prenda pescmaeg) ///
command(hemoglobina_glicada:regress,drcq:regress,drenda_limpa:regress, pgsatvetnova:regress, dativolazdes:regress) ex(menarca3) mediator(drcq) control(drcq:77.6) obe /// 
post_confs(drenda_limpa pgsatvetnova dativolazdes) base_confs(prenda xbensnv pescmaeg pfumogra ppn4cat afr zlmgr) derived(menar3drcq) derrules(menar3drcq:menarca3*drcq) sample(10000) seed(0)
