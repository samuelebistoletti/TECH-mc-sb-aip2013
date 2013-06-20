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
                 description: '',
                 procedure: '',
                 image_url: 'riparazione.jpg',
                 service_type: 0},

                {name: 'Ritiro e Smaltimento Usato',
                 description: '',
                 procedure: '',
                 image_url: 'ritiro.jpg',
                 service_type: 0},

                {name: 'Montaggio e Installazione',
                 description: '',
                 procedure: '',
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