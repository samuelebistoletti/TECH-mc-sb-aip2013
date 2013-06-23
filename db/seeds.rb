# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
Product.reset_primary_key
Product.create([{name: 'Graduate',
                 description: 'Scaffale dal design moderno e raffinato, adatto per soprammobili, libri e hi-fi. Si adatta a qualsiasi tipo di parete e ambiente, il suo design fine lo rende ideale per ogni casa moderna.',
                 image_url: 'armadio.jpg',
                 specifications: 'Piano di sostegno: alluminio anodizzato con bordo in multistrati<br/>Ripiani: alluminio anodizzato con bordo in multistrati<br/>Tiranti: acciaio inox</br>Portata massima delle librerie.<br/>Libreria L 2000 Kg 240<br/>Libreria L 3000 Kg 360<br/>Portata max. singolo ripiano Kg 25',
                 designer_id: 1,
                 category_id: 1,
                 partner_id: 0
                },

                {name: 'Hemnes',
                 description: 'Oggi le TV sono molto pi&ugrave; divertenti rispetto al passato. Giochi, film online e navigazione internet sono solo alcune delle possibilit&agrave; che offrono. A volte, per&ograve;, cavi, decoder, DVD e telecomandi sembrano impossessarsi di tutto il soggiorno. Ecco perch&egrave; i nostri mobili TV sono progettati per eliminare il caos e organizzare ogni cosa. Fanno spazio a tutto, hanno un pratico sistema per tenere in ordine i cavi e sono dotati di ante a vetro che non bloccano il segnale del telecomando. Non devi fare altro che rilassarti e goderti la tua TV, sia quando &egrave; accesa che quando &egrave; spenta!',
                 image_url: 'hemnes.jpg',
                 specifications: 'Piano di sostegno: alluminio anodizzato con bordo in multistrati<br/>Ripiani: alluminio anodizzato con bordo in multistrati<br/>Tiranti: acciaio inox',
                 designer_id: 0,
                 category_id: 1,
                 partner_id: 1
                },

                {name: 'Godmorgon',
                 description: 'Pensile a specchio, lucido grigio.',
                 image_url: 'godmorgon.jpg',
                 specifications: 'Maniglia e cerniere incluse. Sono inclusi 1 ripiano fisso e 5 regolabili, tre dei quali in vetro. Pareti di materiali diversi richiedono tipi diversi di accessori di fissaggio. Usa accessori di fissaggio (venduti a parte) adatti alle pareti della tua casa.',
                 designer_id: 0,
                 category_id: 2,
                 partner_id: 2
                },

                {name: 'Bjorken',
                 description: 'Specchio sia all\'esterno che all\'interno. I ripiani regolabili sono molto resistenti al calore e ai colpi e hanno un\'elevata capacit&agrave; di carico poich&egrave; sono in vetro temprato.',
                 image_url: 'bjorken.jpg',
                 specifications: 'Cornice dell\'anta: Betulla massiccia, Vernice acrilica, trasparente. Pannello dell\'anta: Vetro. Ripiano: Vetro tempratoPannello di fondo: Fibra di legno, Lacca acrilica',
                 designer_id: 2,
                 category_id: 2,
                 partner_id: 0
                },

                {name: 'Lillangen',
                 description: 'Mobile a specchio con 2 ante, bianco.',
                 image_url: 'bagno.jpg',
                 specifications: 'Anta: Truciolare, Plastica ABS, Lamina Specchio: Vetro Parti principali: Truciolare, Lamina, Plastica ABS Pannello: Fibra di legno, Lamina Lista: Acciaio, Rivestimento a polvere, pigmentato Ripiano: Vetro temprato',
                 designer_id: 0,
                 category_id: 2,
                 partner_id: 3
                },

                {name: 'Klobo',
                 description: 'Divano a 2 posti, Lussebo naturale',
                 image_url: 'klobo.jpg',
                 specifications: 'Composizione totale: 100% cotone Struttura: Truciolare, Acciaio, Fibra di legno Piede: Plastica propilenica Molle a zig-zag: Acciaio Tela di protezione: Tessuto non tessuto di polipropilene',
                 designer_id: 2,
                 category_id: 3,
                 partner_id: 0
                },

                {name: 'Faktum',
                 description: 'Mobile/ripiano/2 ante, Nexus impiallacciatura di betulla',
                 image_url: 'faktum.jpg',
                 specifications: 'Pareti di materiali diversi richiedono tipi diversi di accessori di fissaggio. Usa accessori di fissaggio (venduti a parte) adatti alle pareti della tua casa. La cerniera &egrave; regolabile in altezza, in profondit&agrave; e lateralmente. Le gambe vengono vendute a parte. Da completare con maniglie o pomelli. Coordinabile con l\'ammortizzatore per le cerniere INTEGRAL, per garantire una chiusura lenta e silenziosa dell\'anta.',
                 designer_id: 1,
                 category_id: 4,
                 partner_id: 0
                },

                {name: 'Perfekt',
                 description: 'Mobile alto con ante scorrevoli, Nexus impiallacciatura di betulla',
                 image_url: 'perfekt.jpg',
                 specifications: 'Pareti di materiali diversi richiedono tipi diversi di accessori di fissaggio. Usa accessori di fissaggio (venduti a parte) adatti alle pareti della tua casa.Le gambe vengono vendute a parte.',
                 designer_id: 0,
                 category_id: 4,
                 partner_id: 4
                },

                {name: 'Landscape',
                 description: 'Serie di imbottiti fissi e componibili caratterizzati dalla seduta sporgente rispetto alla struttura. Questo aspetto si evidenzia maggiormente nelle composizioni, quando elemento termin',
                 image_url: 'divano.jpg',
                 specifications: 'Interno struttura<br/>Telaio composto da legno massello di Abete e pannelli di particelle di legno, con cinghie elastiche.<br/><br/>Imbottitura struttura<br/>Poliuretano espanso ad alta portanza a densita variabile.<br/>Fodera in vellutino accoppiato.',
                 designer_id: 0,
                 category_id: 3,
                 partner_id: 2
                }


               ])

Image.delete_all
Image.create([{product_id: '1', image_url: 'graduate1.jpg'},
              {product_id: '1', image_url: 'graduate2.jpg'},
              {product_id: '1', image_url: 'graduate3.jpg'},
              {product_id: '1', image_url: 'graduate4.jpg'}
             ])

Service.delete_all
Service.reset_primary_key
Service.create([{name: 'Trasporto',
                 description: 'Consegnamo dentro casa tua, nel locale di destinazione, entro il giorno successivo all\'acquisto in molti Comuni limitrofi. Il servizio &egrave; attivo in tutti i comuni d\'italia.',
                 procedure: 'Il servizio &egrave; disponibile previo contatto telefonico al numero riportato nella sezione contatti, oppure compilando apposito form.',
                 image_url: 'trasporto.jpg',
                 service_type: 0},

                {name: 'Riparazione',
                 description: 'Per la riparazione di mobili e armadi di casa tua, con gli artigiani esperti di Home Furniture Co., puoi ottenere velocemente una risposta sul tipo di intervento che si pu&ograve; fare e che conviene fare nel tuo caso e, per l\'esecuzione della riparazione, puoi contare sulla professionalit&agrave; e sull\'esperienza di artigiani che da anni lavorano su mobili e armadi. Quindi velocit&agrave; nella risposta alla tua prima chiamata, rapidit&agrave; nell\'intervento cercando di fare in modo che sia unico o comunque concentrato in pochi giorni e qualit&agrave; del lavoro di riparazione, sono le caratteristiche che vogliamo contraddistinguano il nostro lavoro.',
                 procedure: 'Il servizio &egrave; disponibile previo contatto telefonico al numero riportato nella sezione contatti, oppure compilando apposito form. Sarete ricontattati e vi saranno fornite tutte le informazioni necessarie in base alla tipologia di prodotto da riparare.',
                 image_url: 'riparazione.jpg',
                 service_type: 0},

                {name: 'Ritiro e Smaltimento Usato',
                 description: 'Noi siamo la risposta alle vostre esigenze. I nostri operai sono abili nello smontare velocemente i mobili e  nello smaltirli. Ma attenzione, non veniamo per raccogliere rifiuti e portarli alla discarica, n&egrave; siamo specializzati o interessati ad occuparci di eventuali traslochi. La nostra specialit&agrave; &egrave; il ritiro dei mobili vecchi smaltire: veniamo a casa vostra, smontiamo se ce ne &egrave; bisogno e ce ne andiamo. Un intervento conveniente per chi non sa come comportarsi ed intende preservare la sua incolumit&agrave; e quella del suo appartamento.',
                 procedure: 'Il servizio &egrave; disponibile previo contatto telefonico al numero riportato nella sezione contatti, oppure compilando apposito form.',
                 image_url: 'ritiro.jpg',
                 service_type: 0},

                {name: 'Montaggio e Installazione',
                 description: 'L\'opzione prevede il montaggio e l\'installazione del prodotto acquistato, tutto il lavoro di manodopera sar&agrave; svolto dai nostri tecnici specializzati. Nel caso sia previsto dal prodotto acquistato, il servizio include anche l\'allacciamento all\'impianto elettrico, idrico o gas. Molti dei nostri prodotti possono essere acquistati con l\'opzione di montaggio e installazione, per avere un elenco completo dei servizi che possono essere applicati ad un determinato prodotto consultare il nostro catalogo on-line.',
                 procedure: 'L\'opzione prevede il pagamento di un importo pari al 5 percento del valore totale della merce acquistata e pu&ograve; essere richiesta all\'atto della vendita.',
                 image_url: 'montaggio.jpg',
                 service_type: 1},

                {name: 'Personalizzazione Mobili su Misura',
                 description: 'L\'obiettivo ultimo di Home Furniture & Co. &egrave; quello di porsi come referente unico nei confronti del cliente per la realizzazione di una idea creativa, dalla fase di progettazione alla consegna e messa in opera del prodotto finito. In tal senso, Home Furniture & Co. offre una totale personalizzazione del prodotto, grazie alla flessibilit&agrave; della propria struttura produttiva e alla elevata esperienza del personale dipendente.L\'azienda, inoltre, &egrave; orgogliosa di collaborare con i migliori artigiani e specialisti per garantire alla clientela la lavorazione di una ampia gamma di materiali, dai p&ugrave; tradizionali, come vetro e pelle, ai pi&ugrave; innovativi, come acciaio e leghe speciali, in modo da poter rispondere a qualsiasi esigenza.',
                 procedure: 'Il servizio &egrave; disponibile previo contatto telefonico al numero riportato nella sezione contatti, oppure compilando apposito form.',
                 image_url: 'personalizzazione.jpg',
                 service_type: 1}
               ])

Category.delete_all
Category.reset_primary_key
Category.create([{name: 'Mobili giorno', image_url: 'giorno.jpg'},
                {name: 'Mobili bagno',image_url: 'bagno.jpg'},
                {name: 'Divani e poltrone', image_url: 'divano.jpg'},
                {name: 'Cucine', image_url: 'cucina.jpg'},
                {name: 'Tavoli', image_url: 'tavolo.jpg'},
                {name: 'Sedie', image_url: 'sedia.jpg'},
                {name: 'Letti', image_url: 'letto.jpg'},
                {name: 'Armadi', image_url: 'armadio.jpg'}
               ])

Partner.delete_all
Partner.reset_primary_key
Partner.create([{name: 'Unifor',
                 description: 'Industria e laboratorio. Ricerca, innovazione e grande flessibilit&agrave; produttiva. Luogo del progetto e della produzione, dove, processi di lavorazione avanzati, sperimentazione e costante controllo dei livelli qualitativi, convivono con il sapere artigianale e la capacit&agrave; di adattamento alle esigenze del committente.Prodotti di serie e lavori su disegno. Grandi quantitativi e forniture personalizzate. Servizi integrati di progettazione, assistenza, montaggio, realizzazione integrale. Costi competitivi e posizionamento stabile nel mercato.Presenza prevalente a livello internazionale e specializzazione nell\'ambito dei grandi interventi.',
                 external_link: 'http://www.unifor.it/',
                 image_url: 'unifor.jpg'},

                {name: 'Dada',
                 description: 'Dada, azienda appartenente al Gruppo Molteni dal 1979, &egrave; un\'azienda italiana di mobili da cucina di alta gamma. Tra i designer che hanno collaborato con l\'azienda: Michele De Lucchi, Norman Foster, Ferruccio Laviani, Dante Bonuccelli, Studio Cerri & Associati, Luca Meda. Dada ha ricevuto segnalazioni e premi internazionali nel corso degli anni, in particolare la Segnalazione Premio Compasso d\'Oro 1987 per il pensile Futura e Segnalazione Premio Compasso d\'Oro 2004 per la cucina Nomis.',
                 external_link: 'http://www.dadaweb.it/',
                 image_url: 'dada.jpg'},

                {name: 'Molteni & C.',
                 description: 'Molteni&C &egrave; un\'azienda di avanzata tecnologia e antica tradizione. Dagli anni 70 ha sviluppato la ricerca nel settore dei mobili componibili, elaborando soluzioni adatte a tutti gli ambienti della casa. I suoi sistemi, come 505, Gliss5th e Pass, sono progetti di grande successo e in costante evoluzione. Dagli anni \'80 Molteni&C ha proposto una collezione di mobili singoli capaci d\'articolare con i sistemi una casa elegante e funzionale. Dalle tipologie legate alla memoria collettiva dell\'abitare, con Aldo Rossi, si &egrave; giunti negli anni 90 ai mobili disegnati da Jean Nouvel, dove l\'essenzialit&agrave; si fonde con un contenuto tecnologico avanzato. Nel 2004 &egrave; stata creata una specifica "Divisione Imbottiti" che opera sulla base di una forte spinta all\'innovazione di prodotto, affiancata da un controllo di tutte le attivit&agrave; produttive e da un\'attenta ricerca nel settore dei materiali e rivestimenti. Gli arredi Molteni incorporano la sapienza di una lunga tradizione artigianale insieme a un\'innovativa qualit&agrave; tecnologica, utile ma non ostentata. A proposito di Molteni si parla di qualit&agrave; nascosta, la qualit&agrave; tecnica, funzionale, dei materiali, presente ma spesso invisibile nei suoi mobili.',
                 external_link: 'http://molteni.it/',
                 image_url: 'molteni.jpg'},

                {name: 'Saporiti Italia',
                 description: 'Saporiti Italia is one of the leading Italian interior design and furniture companies.<br>Since 1950, the Saporiti Italia Group setsup furnishing collections for home, office and public spaces.<br>The Saporiti products have always been distinguished by avant-garde design, advanced technology and the exclusivity of their matrrials and details.<br/>These products, designed by some of the most important architects of the world,have been exhibited in the most prestigious design and art museums.',
                 external_link: 'http://www.saporiti.com/',
                 image_url: 'saporiti.jpg'},
               ])

Event.delete_all
Event.reset_primary_key
events = Event.create([
                {name: 'Salone Internazionale del Mobile',
                 description: 'L\'appuntamento con il prossimo Salone Internazionale del Mobile &egrave; per il 9 aprile 2014 presso la Zona Fiere di Rho. I Saloni 2013 Salone Internazionale del Mobile, Euroluce, SaloneUfficio, Salone Internazionale del Complemento d\'Arredo, SaloneSatellite',
                 date: '09-04-2014',
                 image_url: 'salone_mobile.jpg',
                 location: 'Fiera Milano Rho',
                 extra_notes: 'Ingressi: Porta Sud, Porta Est, Porta Ovest, Cargo 5 (solo SaloneSatellite).<br>Gli studenti possono visitare la fiera durante tutto il periodo di svolgimento. La tessera studenti valida 1 ingresso da Euro 18,00 pu&ograve; essere acquistata in fiera. Tessere per il pubblico, in vendita solo sabato e domenica presso la fiera.'},

                {name: 'Sorarreda 2013',
                 description: 'Veniteci a trovare alla Sorarreda 2013.',
                 date: '20-04-2013',
                 image_url: 'sorarreda.jpg',
                 location: 'Via Barca S. Domenico, Sora',
                 extra_notes: 'La Fiera di Sora si appresta a confermare il suo ruolo primario tra le rassegne fieristiche del centro sud. Noi guardiamo con fiducia al prossimo avvenire investendo sempre piu nella crisi che attanaglia il nostro paese da molto tempo. Vi partecipano importanti aziende provenienti da tutta Italia consapevoli di trovare a Sora sia uno strumento di penetrazione, soprattutto nelle zone interne del mezzogiorno, diversamente non raggiungibili, sia una valida opportunita commerciale e promozionale di prodotti che vogliono inserirsi in un mercato globale sempre piu competitivo'},

                {name: 'Fiera della Casa 2013',
                 description: 'Veniteci a trovare alla Fiera della Casa 2013 il 23 giugno 2013.',
                 date: '23-06-2013',
                 image_url: 'fiera_casa.jpg',
                 location: 'Via Pascoli, Milano',
                 extra_notes: 'Nessun\'altra indicazione'},
               ])

Designer.delete_all
Designer.reset_primary_key
Designer.create([{name: 'Ichiro Iwasaki',
                  description: 'Product Designer, &egrave; nato a Tokyo nel 1965. Ha lavorato per il Sony Design Center, per poi trasferirsi in Italia. Al ritorno in Giappone, nel 1995 ha fondato Iwasaki Design Studio. Ha collaborato fin da subito con diversi clienti giapponesi e internazionali, per progetti di varia scala e tipologia. Ha ricevuto numerosi premi nazionali e internazionali, tra cui: German Design Award, IF Design Award, RedDot Design Award e il giapponese G-Mark Special Award. &Egrave; anche docente alla Tokyo University of the Arts e alla Tama Art University.',
                  image_url: 'ichiro.jpg'
                 },
                 {name: 'Dordoni Rodolfo',
                  description: 'Rodolfo Dordoni &egrave; cortese ed elegante, come i suoi progetti, che vanno dalla direzione artistica all\'industrial design, dalle ristrutturazioni all\'allestimento di mostre e showroom.Dopo la laurea in Architettura al Politecnico di Milano nel 1979, Dordoni inizia a lavorare nel mondo del design. Si specializza nelle strategie d\'immagine, dal prodotto sino alla comunicazione. &Egrave; stato responsabile della direzione artistica di aziende come Artemide, per la collezione vetro, Cappellini, FontanaArte (per la collezione arredo), Foscarini, Minotti e Roda. Accanto alla sua passione per le strategie di comunicazione, Dordoni non ha mai smesso di disegnare mobili e oggetti d\'arredamento per grandi aziende italiane e straniere.',
                  image_url: 'dordoni.jpg'
                 }
                ])

Reseller.delete_all
Reseller.reset_primary_key
resellers = Reseller.create([
                 {name: 'Centro Arredamento Tosi',
                  region: 'Lombardia',
                  province: 'Varese',
                  address: 'Via G. Fanti 6, Varese',
                  email: 'info@arredamentitosi.com',
                  telephone: '+39 0331 635110',
                  image_url: 'tosi.jpg'
                 },

                 {name: 'Berto Salotti',
                  region: 'Lombardia',
                  province: 'Monza',
                  address: 'Via Piave 18, Meda 20036',
                  email: 'info@bertos.it',
                  telephone: '+39 02 3564236',
                  image_url: 'berto.jpg'
                 },

                 {name: 'Domus Arredi',
                  region: 'Lombardia',
                  province: 'Monza',
                  address: 'Via Pascoli 39, 20035 Lissone',
                  email: 'info@domusarredi.it',
                  telephone: '+39 02 2132435',
                  image_url: 'domus.jpg'
                 },

                 {name: 'Elite Architettura Interni',
                  region: 'Lombardia',
                  province: 'Monza',
                  address: 'Via Piave 23, 20036 Meda',
                  email: 'info@eliteinterni.it',
                  telephone: '+39 02 3561136',
                  image_url: 'interni.jpg'
                 }
                ])

Contact.delete_all
Contact.reset_primary_key
Contact.create([{name: 'Paolo',
                surname: 'Rossi',
                email: 'paolo.rossi@gmail.com',
                message: 'Buonasera, sarei interessato all\'acquisto di un vostro prodotto ("Indigo", categoria "Mobili giorno") che tuttavia &egrave; stato da pochi giorni rimosso dal catalogo. E\' per caso possibile sapere se vi sono delle rimanenze di magazzino o se il prodotto &egrave; ancora disponibile presso qualche rivenditore?'}
               ])

events[0].partners << Partner.first(2)
events[1].partners << Partner.last(3)
events[2].partners << Partner.first(1)

resellers[0].products << Product.order('RANDOM()').first(5)
resellers[1].products << Product.order('RANDOM()').first(5)
resellers[2].products << Product.order('RANDOM()').first(5)
resellers[3].products << Product.order('RANDOM()').first(5)