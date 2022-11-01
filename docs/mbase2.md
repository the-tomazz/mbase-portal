mbase1 - na novom repozitorijumu (https://gitlab.com/tomazzi/mbase1)
  meni
    data
      query data - ne pitaj
    biometry / mortality
      administration
        lists
          3 metašifrana (nepotrebno naravno)
          3 prava šifranta (napraviti analizu)
        users
          to je u mbase2l rešeno
      biometry (ulazna tabela koja vodi računa o pristupnim pravima i grupama korisnika)
        find (search)
        mapa sa pregledom podataka
        tabela sa pregledom podataka (isti koji su prikazani na mapi)
        add
        edit
        delete
        export to xls

mbase2 - na Tomaževom repozitorijumu
mbase2l - na našem repozitorijumu koji je sada public (https://github.com/iljubin/mbase2l)
  dva docker okruzenja (ne dva dockera!) koja se medjusobno vide!
    laravel sail
    mbase2 docker sa konfiguracijom za non-standalone
      mbase2/source-code/docker$ cat docker-compose.yml 
      
      # docker-compose.yml
      version: '3'
      services:
        web:
          build:
          context: .
          volumes:
            - ./html:/var/www/html
            - ../backend:/backend
          ports:
            - "8082:80"
          tty: true
          stdin_open: true
          extra_hosts:
           - "host.docker.internal:host-gateway
           
  Namera je bila 
    1. da se u dashboard na prvu stranicu uključi mbase2 modul "query data" i to je rok uspešno uradio, ali Tomaž nije uspeo da reši svoje probleme sa javaskriptom
    2. da se negde u menije uključi modul damages kao i drugi moduli kasnije
    
  Ciljevi:
    1. restrukturiranje tabela povezanih sa mbase1 u normiranu bazu skladno sa do sadašnjim razvojem na mbase2l (struktura geopodataka i korisnika)
    2. migracija podataka od 1.1.2022 do momenta prenosa u produkciju
    3. popravke na funkcionalnosti unosne maske za Sloveniju (radi se samo Slovenija, HR zaboravi ALI OMOGUĆI razne maske u zavisnosti od države (mala komplikacija)) i omogućavanje CRUD
    4. prenos funkcionalnosti "ulazne tabele" 
    5. omogućavanje exporta u XLS
    
  Zahtevi:
    struktura podataka
      Životinje (trenutno šifrant animal_identifier) imaju takozvana "rukovanja" (handling). To sada nije podržano u bazi, jer je baza loše strukturirana, ali treba da ima
      Svaka životinja ima barem jedan handling
      Svaki handling ima barem jednu ili više biometriksnij podataka
      Šta tačno treba da se nadje u tabelama handling i bio_data nisam siguran i predmet je analize trenutnog stanja u bazi 
    promena funkcionalnosti
      uvodna tabela treba da sadrži dva načina pregleda
        1. animals
        2. handlings
      uvodna tabela treba da sadrži switch (filter) kojim se gledaju žive / mrtve / sve životinje
      posledično ta tabela onda ima CRUD za animal i za handling
      soft delete na svim šifrantima
      forma za CU treba (kao na damages) da bude razdeljena u više koraka i da se onda koraci koji moraju biti uneseni označe sa * i crveno dok nisu unešeni a plavo kada se unesu
      postoje 3 seta podataka za sloveniju
        1. batch import (to radi Tomaž) podaci. Tabelu nam može proslediti naručilac
        2. CU 
        3. export to XLS
        1 i 3 nisu zavisni od države

  ! verovatno ce trebati da se sredi i neki api access o kom sada nemam podatka, ali RADI na mbase1
  ! sadržaj tabele izvoza je nejasan naručiocu i verovatno ga treba ignorisati i nabaviti novu specifikaciju
  ! pre nego što se bilo šta počne raditi treba 
    1. omogućiti add animal funkcionalnost na mbase1 lokalno
    2. napraviti analizu CU i uraditi u figmi predlog novog formulara
  
  !! pogledaj trenutno ponašanje korisnika!
  
! Načrt (uporabniki in biometrija + (odvisno od Tomaža) query + škode, cilj pa je čimveč):
  Ponovitev analize strukture podatkov   8.9.2022
  Ponovitev analize form   		 8.9.2022 - Nives in Igor naredita screenshote med sestankom
  Design form				 8.9.2022
  Postavitev okolij	 		 9.9.2022 - nisu nam dali okruzenja (kasne!)
  Postavitev v testno okolje		16.9.2022 
  Postavitev v predprodukcijsko okolje  23.9.2022
  Produkcijska uvedba 			30.9.2022
  
! Lists
  Predlagam ukinitev direktnega dostopa s strani mbase2 administratorja
  Prosim za analizo
  
  - *_table pozabi... oz vprašaj Tomaža
  - za ostale pa uporabi tomaževo administracijo najprej se dogovori s Tomažem na sestanku (mbase2 - system administration - modules/lists...)
  
! Ali mi lahko omogočite dostop/print screen do forme na podlagi katere bi da naredim forme za biometrijo (škode, ...)
  
! Gremo skozi forme
! Design form - danes popoldan
  - na levi strani imaš * in so rdeči dokler se ne izpolni
  - kontrola smiselnega vnosa datumov (da ne moreš vnašati v naprej, ...)
  - obvezne stvari, ki so pravilno vnešene se pobarvajo modro
  - modul za zemljevide je openstreetmaps
  - obstaja problem s shapes - podatki v modulu škode na produkciji niso enaki kot podatki v shapes katere jaz imam v svojem okolju
     Shapes v mbase1 niso enaki kot mbase2. V mbase2 so pravilni. Do sedaj podatkov niso prenašali, zato je treba najti rešitev tega problema.
     MasterSoft so vzdrževalci in oni so dejansko že popravili fajle.
     ! Igor da preveri s Tomažem, kako se dejansko podatki mapirajo na shapes. Nujno zelo dobro razčistiti!
  - Nujno je uporabljati softdelete za podatke v šifrantih... Ti podatki veljajo takšni kot so, v momentu, ko je podatek nastal.
  - Shape lahko izbereš kar v zemljevidu, če pa vnašaš ročno bi najprej moral imeti koordinatni...
  - iskanje po prilogah
  - Nives (okvirno) pove, da rabimo migrirati podatke iz 2022, za pred 1.1.2022 ne rabimo, ostalo bodo vnesli skozi batchimport. Finalno sporočiš do 23.9.

Tomaž:
  - Administracija modulov - please clarify
  - Kje natanko se konfigurirajo vsebine exportov
  - Postavi okruzenje kod sebe

  

! Debata na temo postavitve okolij
! Matej Bartolj je dejansko končni uporabnik

! Obstaja razlika med batchimporti 
  - Enkratni vnos v aplikacijo prinaša bistveno več podatkov
  - Nives bo sčistila vse XLS podatke za vnazaj in bomo naredili batch importe
  - Export je dejansko namenjen vsem ljudjem, ki naprej procesuirajo podatke iz MBase. 
  - 5 ali 6 je osnovnih podatkov brez katerih podatka ne moreš vnesti v MBase (Tomaž da ponovi, drugače je poslal na mail to spremenjeno strukturo)
  - batch import ima konfiguacijo (zmeni se z zagarjem)
  - export v xls je širši kot prikaz v vstopni tabeli
    - kaj se nahaja v eni in drugi tabeli je definirano v vstopni tabeli
      - za začetek bomo prevzeli to kar je v mbase1, nato bomo pa verjetno dopolnjevali (za namene prehoda v produkcijo Nives dopolni nabor stolpcev do 23.9.)
  - tabela prikazuje živali in rokovanja (predlog, da naredimo dva)
  - rokovanje je osnovni podatek
  - dva tipa uporabnikov (to naj bo element filtra)
    - smrtnost
    - samo žive živali
  - rokovanje ima nabor nujnih podatkov in LAHKO ima biometrijske podatke
  - rokovanje je lahko rokovanje z mrtvo živaljo
  - nives lahko pripravi import inicialnih podatkov skozi batchimport!!!
  - Nives pravi, da je en del teh šifrantov dejansko neuporabnih (!)
  - Šifranti se načeloma uporabljajo uvesti je treba POVSOD soft delete
  - Elementi šifrantov lahko 
    - sodijo v eno ali več držav
    - imajo veljavnost
    - trenutno samo slovenija uporablja aplikacijo
    - hrvaškega formularja ni potrebe pripraviti
  - 
  
  (!!! Interno, pripravi tako, da se lahko formularji deljo po državah)
   
    
Biometry/mortality
  Administration
    Lists
      bears_biometry_animal_table	bears_biometry_animal_table (! metašifrant ! Nives: ali si to kadarkoli spreminjala? Jaz iskreno predlagam, da dostop do tega se ukine administratorju)
        zivalska_vrsta			Animal species			Animal species
        obmocje_medveda			Bear presence area
        cas_vnosa			cas_vnosa			cas_vnosa
        datum_ocenjen			Date evaluated
        datum				Date
        hr_broj				hr_broj
        id_lovisca			Hunting ground identification
        ime_lovisca			Hunting ground name
        lat				lat
        lng				Lng
        loo_adr	loo_adr			loo_adr
        loo_email			loo_email			loo_email
        loo_fax	loo_fax			loo_fax
        loo_fun	loo_fun			loo_fun
        loo_osoba			loo_osoba			loo_osoba
        loo_posbroj			loo_posbroj			loo_posbroj
        loo_tel	loo_tel			loo_tel
        vzrok_izgube_pogin		Loss reason death
        vzrok_izgube			Loss reason			Loss reason
        luo				Luo
        mesto_meka			mesto_meka
        mesto_odvzema			mesto_odvzema
        mesto_opis			mesto_opis
        mesto_podrocje_2		mesto_podrocje_2
        mesto_podrocje			mesto_podrocje
        stevilka_dovoljenja		Number of permit
        drugi_tip_mesta			Other location type
        oznaka_telemetrije		oznaka_telemetrije		oznaka_telemetrije
        preparator_ime			preparator_ime			preparator_ime
        preparator_priimek		preparator_priimek		preparator_priimek
        ime_projekta			Project name			Project name
        spremljevalec_ime		Spremljevalec name		Spremljevalec name
        spremljevalec_priimek		Spremljevalec surname		Spremljevalec surname
        status				status				Status
        identifikacija_osebka		Subject identifier
        id				Table indentification		Table indentification
        tip_mesta			tip_mesta
        uplenitelj_adr			Uplenitelj_adr
        uplenitelj_drzava		Uplenitelj country		Uplenitelj country
        uplenitelj_ime			uplenitelj_ime
        uplenitelj_drzava_drugo		Uplenitelj other country	Uplenitelj other country
        uplenitelj_priimek		uplenitelj_priimek
        uplenitelj_tel			Uplenitelj telephone number
        vnasalec_drzava			vnasalec_drzava			vnasalec_drzava
        vnasalec_id			vnasalec_id			vnasalec_id
        vzorec_bubreg			vzorec_bubreg			vzorec_bubreg
        vzorec_dlake			vzorec_dlake			vzorec_dlake
        vzorec_jetra			vzorec_jetra			vzorec_jetra
        vzorec_krvi			vzorec_krvi			vzorec_krvi
        vzorec_misica			vzorec_misica			vzorec_misica
        vzorec_osit			vzorec_osit			vzorec_osit
        vzorec_pluca			vzorec_pluca			vzorec_pluca
        vzorec_slezena			vzorec_slezena			vzorec_slezena
        vzorec_srca			vzorec_srca			vzorec_srca
        vzorec_tkivo			vzorec_tkivo			vzorec_tkivo
        vzorec_vzet			vzorec_vzet			vzorec_vzet
        vzorec_zoba			vzorec_zoba			vzorec_zoba
        nacin_odvzema			Way of extraction		Way of extraction
        x				x
        y				y
        zoom				Zoom        
      bears_biometry_data_table		bears_biometry_data_table (! metašifrant ! Nives: ali si to kadarkoli spreminjala? Jaz iskreno predlagam, da dostop do tega se ukine administratorju)
        barva_id			barva_id			barva_id
        boja_barve			boja_barve			boja_barve
        cas_biometrije			cas_biometrije			cas_biometrije
        cas_vnosa			cas_vnosa			cas_vnosa
        depot				depot				depot
        dg				dg				dg
        dio				dio				dio
        dnpp				dnpp				dnpp
        dolzina_copkov			dolzina_copkov			dolzina_copkov
        dolzina_repa_druga_meritev	dolzina_repa_druga_meritev	dolzina_repa_druga_meritev
        dolzina_repa_prva_meritev	dolzina_repa_prva_meritev	dolzina_repa_prva_meritev
        dolzina_seskov			dolzina_seskov			dolzina_seskov
        dolzina_spolne_kosti		dolzina_spolne_kosti		dolzina_spolne_kosti
        dolzina_usesov			dolzina_usesov			dolzina_usesov
        dps_desna			dps_desna			dps_desna
        dps_leva			dps_leva			dps_leva
        dsp_desna			dsp_desna			dsp_desna
        dsp_leva			dsp_leva			dsp_leva
        dzp_desna			dzp_desna			dzp_desna
        dzp_leva			dzp_leva			dzp_leva
        dzs_desna			dzs_desna			dzs_desna
        dzs_leva			dzs_leva			dzs_leva
        hrbtna_dolzina			hrbtna_dolzina			hrbtna_dolzina
        id				id				id
        kds				kds				kds
        ktv				ktv				ktv
        lds				lds				lds
        ltv				ltv				ltv
        masa_bruto			masa_bruto			masa_bruto
        masa_mesa			masa_mesa			masa_mesa
        masa_neto			masa_neto			masa_neto
        meritve_opravil_drzava		meritve_opravil_drzava		meritve_opravil_drzava
        meritve_opravil_id		meritve_opravil_id		meritve_opravil_id
        meritve_opravil_ime		meritve_opravil_ime		meritve_opravil_ime
        meritve_opravil_priimek		meritve_opravil_priimek		meritve_opravil_priimek
        obraba_sekalcev			obraba_sekalcev			obraba_sekalcev
        obrabljenost_seskov		obrabljenost_seskov		obrabljenost_seskov
        obseg_glave			obseg_glave			obseg_glave
        obseg_prsnega_kosa		obseg_prsnega_kosa		obseg_prsnega_kosa
        obseg_trebuha			obseg_trebuha			obseg_trebuha
        obseg_vratu			obseg_vratu			obseg_vratu
        opce_stanje			opce_stanje			opce_stanje
        opombe				opombe				opombe
        ostala_opazanja			ostala_opazanja			ostala_opazanja
        ovratnica			ovratnica			ovratnica
        plecna_visina			plecna_visina			plecna_visina
        spol				spol				spol
        sps_desna			sps_desna			sps_desna
        sps_leva			sps_leva			sps_leva
        sp_spodaj			sp_spodaj			sp_spodaj
        sp_zgoraj			sp_zgoraj			sp_zgoraj
        stanje_lesine			stanje_lesine			stanje_lesine
        stare_ozljede			stare_ozljede			stare_ozljede
        starost				starost	starost
        status				status_biometrija		status
        szs_desna			szs_desna			szs_desna
        szs_leva			szs_leva			szs_leva
        tco_adresa			tco_adresa			tco_adresa
        tco_ime				tco_ime				tco_ime
        tco_naziv			tco_naziv			tco_naziv
        tco_prezime			tco_prezime			tco_prezime
        trebusna_dolzina		trebusna_dolzina		trebusna_dolzina
        udt				udt				udt
        zdt				zdt				zdt
        zival_id			zival_id			zival_id
      bears_biometry_samples_table	bears_biometry_samples_table (! metašifrant ! Nives: ali si to kadarkoli spreminjala? Jaz iskreno predlagam, da dostop do tega se ukine administratorju)
        cas_vnosa			cas_vnosa			cas_vnosa
        id				id				id
        koda_vzorca			koda_vzorca			koda_vzorca
        zival_id			zival_id			zival_id
      animal_identifier			ID animal (! Ocitno gre za pravi in ne za meta šifrant ! Opazam, da tukaj imamo tip živali)
        Aida - lynx			Aida - lynx
        Alojzije			Alojzije			Alojzije-lynx
        Bojan				Bojan				Bojan-lynx
        Boris				Boris				Boris-lynx
        Bor - lynx			Bor - lynx			Bor - lynx
        Doru				Doru				Doru-lynx
        Goru				Goru				Goru-lynx
        Igi - lynx			Igi - lynx			Igi - lynx
        Jelko	Jelko			Jelko - wolf
        Julija - lynx			Julija - lynx
        Katalin	Katalin			Katalin-lynx
        Klif - lynx			Klif - lynx			Klif - lynx
        Lenka - lynx			Lenka - lynx
        Maks				Maks				Maks-lynx
        Mala				Mala				Mala-lynx
        Martina				Martina				Martina - lynx
        Mihec				Mihec				Mihec-lynx
        Neža - lynx			Neža - lynx			Neža - lynx
        Nives				Nives				Nives - bear
        Petra - lynx			Petra - lynx			Petra - lynx
        Pino				Pino				Pino-lynx
        Rok				Rok				Rok - bear
        Teja				Teja				Teja-lynx
        Tinček				Tinček				Tinček - bear
        Tris - lynx			Tris - lynx
        Valentina - lynx		Valentina - lynx		Valentina - lynx
        Viva - lynx			Viva - lynx			Viva - lynx
        Zois - lynx			Zois - lynx
      biometry_loss_reason		Loss reason
        Death at capture		Death at capture	Animal died after capturing or when handling
        Highway mortality		Highway mortality
        Poaching			Illegal killing
        Intraspecific agression		Intraspecific agression
        Natural causes			Natural causes		drowning, disease, parasites, starvation, exhaustion, old age, fall over the cliff
        Not known			Not known		e.g. skeletons or too decomposed corpses, non-identifiable cause of death
        Other				Other			suspecting poaching (but without the result of investigation), self-defence, trial...
        Railway mortality		Railway mortality
        Road mortality			Road mortality		all types of roads, except highways
      collar				Biometry collar (! Ocitno gre za pravi in ne za meta šifrant)
        No				No
        Yes				Yes
      color				Colour
        Black				Black
        Brown				Brown
        Light brown			Light brown
        Dark brown			Dark brown
      country_of_hunter_finder_withdrawal	Country of hunter/finder withdrawal module (! Ocitno gre za pravi in ne za meta šifrant)
        Austria				Austria
        Croatia				Croatia
        Italy				Italy
        Other				Other
        Slovenia			Slovenia
      incisors_wear			Biometry incisors wear (! Ocitno gre za pravi in ne za meta šifrant)
        Low				Low
        Medium				Medium
        Strong				Strong
      place_type			Place type (! Ocitno gre za pravi in ne za meta šifrant)
        Clearing			Clearing
        Feeding place			Feeding place
        Other				Other
        Railway				Railway
        Road				Road
        Settlement			Settlement
      sex				Sex (! Ocitno gre za pravi in ne za meta šifrant)
        Female				Female
        Male				Male
        Not known			Not known
      species				Species (! Ocitno gre za pravi in ne za meta šifrant)
        Golden jackal			Golden jackal		Canis aureus
        Brown bear			Brown bear		Ursus arctos
        Eurasian lynx			Eurasian lynx		Lynx lynx
        Wolf				Wolf			Canis lupus
      teats_wear			Nipple use (! Ocitno gre za pravi in ne za meta šifrant)
        Low			Low
        Medium			Medium
        Strong			Strong
      tooth_type			Tooth type (! Ocitno gre za pravi in ne za meta šifrant)
        Lower P1			Lower P1
        Lower P2			Lower P2
        Lower P3			Lower P3
        Lower P4			Lower P4
        Upper P1			Upper P1
        Upper P2			Upper P2
        Upper P3			Upper P3
        Upper P4			Upper P4
      way_of_withdrawal			Type of removal (! Ocitno gre za pravi in ne za meta šifrant)
        Loss	Loss
        Live-capture			Radio-telemetry				Animal released back to the same population alive after radio-collaring
        Translocation out of population	Translocation out of population		Translocation to another population, translocation into an enclosure (alive) ...
        Conflict animal removal		Conflict animal removal
        Regular cull			Regular cull				Exception "e" of the Habitat's Directive: selective, limited cull under strictly...
    Users (! To je že urejeno centralno. Morda predlagam, da nekje znotraj modula imamo link na uporabnike modula)
      List
        Username	First name	Last name	E-mail address		Country of a user
        Adolf Trebec	Adolf		Trebec		Adolf.Trebec@zgs.si	Slovenia
        ...
      Add
        E-mail address *
        First name *
        Last name *
        Country *
        Define user roles * (! here more than one rola can be assigned)
          Telemetry manager
          Biometry administrator
          Biometry data entry CRO
          Biometry data entry SLO
        Notify user about the new account 
  Biometry
    Map (! Kateri podatki so natanko prikazani) 
    Table view (! Kateri podatki so natanko prikazani ! Razlika po državah? )
      Table structure
        ID (! I guess this is "Table indentification")
        Insert date (! explain the rest)
        Date of removal
        Species
        Hunting ground
        Sex
        Author
        Country of a user
        Add biometry
        Biometry
        Edit
    Add animal (! ROK: kam naj damo opis strukture podatkov ! Nives: Kaj natanko so razlike in katere razlike natanko pričakuje) 
      si
      cro (! Nives: ne rabimo za zdaj)
    export (! Nives: podpri možnost, da so razlike po državah v eksportu)
      Table structure
        Table indentification
        Subject identifier
        Animal species
        number_of_removal_in_LUO
        Way of extraction
        Number of permit
        Project name
        Receiving country and institutions
        Conflict animal removal
        oznaka_telemetrije
        Loss reason
        Loss reason death
        Date
        Date evaluated
        mesto_odvzema
        tip_mesta
        Other location type
        Bear presence area
        lat
        Lng
        Zoom
        x
        y
        Luo
        Hunting ground identification
        Hunting ground name
        uplenitelj_ime
        uplenitelj_priimek
        Uplenitelj_adr
        Uplenitelj telephone number
        Uplenitelj country
        Uplenitelj other country
        Spremljevalec name
        Spremljevalec surname
        vzorec_vzet
        vzorec_dlake
        vzorec_krvi
        vzorec_zoba
        vzorec_pluca
        preparator_ime
        preparator_priimek
        vnasalec_id
        vnasalec_drzava
        cas_vnosa
        status
        id
        zival_id
        spol
        starost
        masa_bruto
        masa_neto
        hrbtna_dolzina
        trebusna_dolzina
        plecna_visina
        obseg_glave
        obseg_vratu
        obseg_prsnega_kosa
        obseg_trebuha
        dolzina_spolne_kosti
        dolzina_seskov
        obrabljenost_seskov
        dolzina_repa_prva_meritev
        dolzina_repa_druga_meritev
        dolzina_usesov
        dolzina_copkov
        zadnja_leva_sapa_dolzina
        zadnja_desna_sapa_dolzina
        prednja_desna_sapa_dolzina
        prednja_leva_sapa_dolzina
        zadnja_leva_sapa_sirina
        zadnja_desna_sapa_sirina
        prednja_leva_sapa_sirina
        prednja_desna_sapa_sirina
        dolzina_levih_podocnikov_zgoraj
        dolzina_desnih_podocnikov_zgoraj
        dolzina_levih_podocnikov_spodaj
        dolzina_desnih_podocnikov_spodaj
        stevilo_predeljakov_zgoraj
        stevilo_predeljakov_spodaj
        obraba_sekalcev
        barva_id
        ovratnica
        meritve_opravil_id
        meritve_opravil_ime
        meritve_opravil_priimek
        meritve_opravil_drzava
        ostala_opazanja
        opombe
        cas_biometrije
        status_biometrija
    delete animals (sprobaj skupaj z Nives)
    delete biometrics (sprobaj skupaj z Nives)
    
! Obstajajo partnerji z vlogam _data in oni lahko prenašajo podatke iz večjih držav
! Obstajajo eksporti znotraj aplikacije in obstajajo exporti v data queriju
! Biometrija ima ljudi na terenu in oni delajo na tablicah (verjetno mobilna verzija)

! OBSTAJA MOBILNA APLIKACIJA SMRTNOST-DINAR-BEAR!!!
OBSTAJA NEK API ZA IMPORT
Nives, da prečekira, če uporabljajo tablice.

! Stari zapisniki
! Status certifikata

Nujno se sklicuj za številko pogodbe, ko boš izdajal račun.
oz tako po 8 členu pogodbe - številka projekta, številka pogodbe.


