# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all
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

Service.delete_all
Service.create([{name: 'Trasporto',
                 description: '',
                 procedure: '',
                 image_url: 'trasporto.jpg',
                 service_type: 0},

                {name: 'Riparazione',
                 description: 'Per la riparazione di mobili e armadi di casa tua, con gli artigiani esperti di Home Furniture Co., puoi ottenere velocemente una risposta sul tipo di intervento che si può fare e che conviene fare nel tuo caso e, per l\'esecuzione della riparazione, puoi contare sulla professionalità e sull\'esperienza di artigiani che da anni lavorano su mobili e armadi. Quindi velocità nella risposta alla tua prima chiamata, rapidità nell\'intervento cercando di fare in modo che sia unico o comunque concentrato in pochi giorni e qualità del lavoro di riparazione, sono le caratteristiche che vogliamo contraddistinguano il nostro lavoro.',
                 procedure: 'Il servizio è disponibile previo contatto telefonico al numero riportato nella sezione contatti, oppure compilando apposito form. Sarete ricontattati e vi saranno fornite tutte le informazioni necessarie in base alla tipologia di prodotto da riparare.',
                 image_url: 'riparazione.jpg',
                 service_type: 0},

                {name: 'Ritiro e Smaltimento Usato',
                 description: '',
                 procedure: '',
                 image_url: 'ritiro.jpg',
                 service_type: 0},

                {name: 'Montaggio e Installazione',
                 description: 'L\'opzione prevede il montaggio e l\'installazione del prodotto acquistato, tutto il lavoro di manodopera sarà svolto dai nostri tecnici specializzati. Nel caso sia previsto dal prodotto acquistato, il servizio include anche l\'allacciamento all\'impianto elettrico, idrico o gas. Molti dei nostri prodotti possono essere acquistati con l\'opzione di montaggio e installazione, per avere un elenco completo dei servizi che possono essere applicati ad un determinato prodotto consultare il nostro catalogo on-line.',
                 procedure: 'L\'opzione prevede il pagamento di un importo pari al 5 percento del valore totale della merce acquistata e può essere richiesta all\'atto della vendita.',
                 image_url: 'montaggio.jpg',
                 service_type: 1},

                {name: 'Personalizzazione Mobili su Misura',
                 description: '',
                 procedure: '',
                 image_url: 'personalizzazione.jpg',
                 service_type: 1}
               ])

Category.delete_all
Category.create([{name: 'Mobili giorno', image_url: 'giorno.jpg'},
                {name: 'Mobili bagno',image_url: 'bagno.jpg'},
                {name: 'Divani e poltrone', image_url: 'divano.jpg'},
                {name: 'Cucine', image_url: 'cucina.jpg'},
                {name: 'Tavoli', image_url: 'tavolo.jpg'},
                {name: 'Sedie', image_url: 'sedia.jpg'},
                {name: 'Letti', image_url: 'letto.jpg'},
                {name: 'Armadi', image_url: 'armadio.jpg'}
               ])