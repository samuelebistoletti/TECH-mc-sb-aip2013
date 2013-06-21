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
                 category_id: 1
                },

                {name: 'Landscape',
                 description: 'Serie di imbottiti fissi e componibili caratterizzati dalla seduta sporgente rispetto alla struttura. Questo aspetto si evidenzia maggiormente nelle composizioni, quando elemento termin',
                 image_url: 'divano.jpg',
                 specifications: 'Interno struttura<br/>Telaio composto da legno massello di Abete e pannelli di particelle di legno, con cinghie elastiche.<br/><br/>Imbottitura struttura<br/>Poliuretano espanso ad alta portanza a densita variabile.<br/>Fodera in vellutino accoppiato.',
                 designer_id: 1,
                 category_id: 3
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
                 description: 'Consegnamo dentro casa tua, nel locale di destinazione, entro il giorno successivo all’acquisto in molti Comuni limitrofi. Il servizio &egrave; attivo in tutti i comuni d\'italia.',
                 procedure: 'Il servizio &egrave; disponibile previo contatto telefonico al numero riportato nella sezione contatti, oppure compilando apposito form.',
                 image_url: 'trasporto.jpg',
                 service_type: 0},

                {name: 'Riparazione',
                 description: 'Per la riparazione di mobili e armadi di casa tua, con gli artigiani esperti di Home Furniture Co., puoi ottenere velocemente una risposta sul tipo di intervento che si pu&ograve; fare e che conviene fare nel tuo caso e, per l\'esecuzione della riparazione, puoi contare sulla professionalit&agrave; e sull\'esperienza di artigiani che da anni lavorano su mobili e armadi. Quindi velocit&agrave; nella risposta alla tua prima chiamata, rapidit&agrave; nell\'intervento cercando di fare in modo che sia unico o comunque concentrato in pochi giorni e qualit&agrave; del lavoro di riparazione, sono le caratteristiche che vogliamo contraddistinguano il nostro lavoro.',
                 procedure: 'Il servizio &egrave; disponibile previo contatto telefonico al numero riportato nella sezione contatti, oppure compilando apposito form. Sarete ricontattati e vi saranno fornite tutte le informazioni necessarie in base alla tipologia di prodotto da riparare.',
                 image_url: 'riparazione.jpg',
                 service_type: 0},

                {name: 'Ritiro e Smaltimento Usato',
                 description: 'Noi siamo la risposta alle vostre esigenze. I nostri operai sono abili nello smontare velocemente i mobili e  nello smaltirli. Ma attenzione, non veniamo per raccogliere rifiuti e portarli alla discarica, né siamo specializzati o interessati ad occuparci di eventuali traslochi. La nostra specialit&agrave; &egrave; il ritiro dei mobili vecchi smaltire: veniamo a casa vostra, smontiamo se ce ne &egrave; bisogno e ce ne andiamo. Un intervento conveniente per chi non sa come comportarsi ed intende preservare la sua incolumit&agrave; e quella del suo appartamento.',
                 procedure: 'Il servizio &egrave; disponibile previo contatto telefonico al numero riportato nella sezione contatti, oppure compilando apposito form.',
                 image_url: 'ritiro.jpg',
                 service_type: 0},

                {name: 'Montaggio e Installazione',
                 description: 'L\'opzione prevede il montaggio e l\'installazione del prodotto acquistato, tutto il lavoro di manodopera sar&agrave; svolto dai nostri tecnici specializzati. Nel caso sia previsto dal prodotto acquistato, il servizio include anche l\'allacciamento all\'impianto elettrico, idrico o gas. Molti dei nostri prodotti possono essere acquistati con l\'opzione di montaggio e installazione, per avere un elenco completo dei servizi che possono essere applicati ad un determinato prodotto consultare il nostro catalogo on-line.',
                 procedure: 'L\'opzione prevede il pagamento di un importo pari al 5 percento del valore totale della merce acquistata e pu&ograve; essere richiesta all\'atto della vendita.',
                 image_url: 'montaggio.jpg',
                 service_type: 1},

                {name: 'Personalizzazione Mobili su Misura',
                 description: 'L’obiettivo ultimo di Home Furniture & Co. &egrave; quello di porsi come referente unico nei confronti del cliente per la realizzazione di una idea creativa, dalla fase di progettazione alla consegna e messa in opera del prodotto finito. In tal senso, Home Furniture & Co. offre una totale personalizzazione del prodotto, grazie alla flessibilit&agrave; della propria struttura produttiva e alla elevata esperienza del personale dipendente.L’azienda, inoltre, &egrave; orgogliosa di collaborare con i migliori artigiani e specialisti per garantire alla clientela la lavorazione di una ampia gamma di materiali, dai p&ugrave; tradizionali, come vetro e pelle, ai pi&ugrave; innovativi, come acciaio e leghe speciali, in modo da poter rispondere a qualsiasi esigenza.',
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
                 description: '',
                 external_link: 'http://www.unifor.it/',
                 image_url: 'unifor.jpg'},

                {name: 'Dada',
                 description: '',
                 external_link: 'http://www.dadaweb.it/',
                 image_url: 'dada.jpg'},

                {name: 'Molteni & C.',
                 description: '',
                 external_link: 'http://molteni.it/',
                 image_url: 'molteni.jpg'},

                {name: 'Saporiti Italia',
                 description: 'Saporiti Italia is one of the leading Italian interior design and furniture companies.<br>Since 1950, the Saporiti Italia Group setsup furnishing collections for home, office and public spaces.<br>The Saporiti products have always been distinguished by avant-garde design, advanced technology and the exclusivity of their matrrials and details.<br/>These products, designed by some of the most important architects of the world,have been exhibited in the most prestigious design and art museums.',
                 external_link: 'http://www.saporiti.com/',
                 image_url: 'saporiti.jpg'},

               ])

Event.delete_all
Event.reset_primary_key
Event.create([{name: 'Salone Internazionale del Mobile',
                 description: 'L\'appuntamento con il prossimo Salone Internazionale del Mobile &egrave; per il 9 aprile 2014 presso la Zona Fiere di Rho. I Saloni 2013 Salone Internazionale del Mobile, Euroluce, SaloneUfficio, Salone Internazionale del Complemento d\'Arredo, SaloneSatellite',
                 date: '09-04-2014',
                 image_url: 'salone_mobile.jpg',
                 location: 'Fiera Milano, Rho Ingressi: Porta Sud, Porta Est, Porta Ovest, Cargo 5 (solo SaloneSatellite)',
                 extra_notes: 'Gli studenti possono visitare la fiera durante tutto il periodo di svolgimento. La tessera studenti valida 1 ingresso da Euro 18,00 pu&ograve; essere acquistata in fiera. Tessere per il pubblico, in vendita solo sabato e domenica presso la fiera.'},

                {name: 'Sorarreda 2013',
                 description: 'Veniteci a trovare alla Sorarreda 2013.',
                 date: '20-04-2013',
                 image_url: 'sorarreda.jpg',
                 location: 'Via Barca S. Domenico, 1 - 03039 Sora (FR)',
                 extra_notes: 'La Fiera di Sora si appresta a confermare il suo ruolo primario tra le rassegne fieristiche del centro sud. Noi guardiamo con fiducia al prossimo avvenire investendo sempre piu nella crisi che attanaglia il nostro paese da molto tempo. Vi partecipano importanti aziende provenienti da tutta Italia consapevoli di trovare a Sora sia uno strumento di penetrazione, soprattutto nelle zone interne del mezzogiorno, diversamente non raggiungibili, sia una valida opportunita commerciale e promozionale di prodotti che vogliono inserirsi in un mercato globale sempre piu competitivo'},

                {name: 'Fiera della Casa 2013',
                 description: 'Veniteci a trovare alla Fiera della Casa 2013 il 23 giugno 2013.',
                 date: '23-06-2013',
                 image_url: 'fiera_casa.jpg',
                 location: '',
                 extra_notes: ''},
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
Reseller.create([{name: 'Centro Arredamento Tosi',
                  region: 'Lombardia',
                  province: 'Varese',
                  address: 'Via G. Fanti 6',
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