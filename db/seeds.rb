puts "Destroy previous Kitas"
Kindergarden.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


kindergardens = Kindergarden.create([{name: "Sunshine Kita", address: "Leopoldstraße 50, Berlin", language: "English-German", capacity: 200, is_available: true, email: "info@sunshine.de", phone: "5047385949", photo: "https://images.unsplash.com/photo-1564429238817-393bd4286b2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", opening_hours: "08:00", closing_hours: "18:00", size: "more than 50", age_structure: "Mixed ages", edu_system: "Emmy Picker", aesthetic_edu: "Health",
                 description: "Sunshine kita offers the best environment for your child to develop and refine his communications skills, integrating the Emmy Picker system in mixed age groups, focusing on the health of the children"},
          {name: "Meine Erste Kita", address: "Brandenburgische Straße 22, Berlin", language: "English-German", capacity: 84, is_available: true, email: "info@mek.de", phone: "5028758789", photo: "https://images.unsplash.com/photo-1567746455504-cb3213f8f5b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", opening_hours: "08:00", closing_hours: "17:00", size: "more than 50", age_structure: "Mixed ages", edu_system: "Fröbel", aesthetic_edu: "Intercultural Edu.",
            description: "Come to Meine Erste Kita, the only KiTa in Berlin that offers an English-German teaching environment under the Fröbel rules according to the standards of the system. We focus primarly on the Intercultural education and welcome children from all over the world."},
          {name: "Charlotte", address: "Genslerstraße 21, Berlin", language: "German", capacity: 120, is_available: false, email: "charlotte@charlottekita.de", phone: "5073478346", photo: "https://images.unsplash.com/flagged/photo-1551887373-6edba6dacbb1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", opening_hours: "08:00", closing_hours: "19:00", size: "more than 50", age_structure: "Mixed ages", edu_system: "Situational", aesthetic_edu: "Natural and Environment",
            description: "Charlotte KiTa offers a full immersion in the german language for kids of mixed age. Locate in a beatiful green area of Berlin we focus on the environment and the understanding of the importance of nature for a healthy child development. Only for appointments."},
          {name: "Tutti Amici", address: "Leopoldßtraße 82, Berlin", language: "Italian-German", capacity: 64, is_available: true, email: "info@tuttiamici.com", phone: "5038974983", photo: "https://images.unsplash.com/photo-1541692641319-981cc79ee10a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", opening_hours: "09:00", closing_hours: "18:00", size: "less than 50", age_structure: "Mixed ages", edu_system: "Montessory", aesthetic_edu: "Theater Education",
            description: "We are one of the only Italian-German KiTa in Berlin, counting fewer than 50 children we specialized in communications skills by implementing theater education under the Montessory system. Our food is delivered  daily by a 4 stars italian restaurant located in Mitte. Send us an email and book and appointment."},
          {name: "Le Tour Eiffel", address: "Holteistraße 18, Berlin", language: "French-German", capacity: 35, is_available: false, email: "letour@lte.de", phone: "5079834224", photo: "https://images.unsplash.com/flagged/photo-1550706468-bedf630a1985?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", opening_hours: "09:00", closing_hours: "19:00", size: "more than 50", age_structure: "Mixed ages", edu_system: "Freinet", aesthetic_edu: "Body and Movement",
            description: "Le Tour Eiffel is serving french and german community since 1989 with a Freinet education system where physical activity is central for child development with extended gym session and -Athletic Fridays- at the Friedrich-Ludwig-Jahn SportPark located in PrenzlauerBerg. Every nationality is welcomed!"},
          {name: "Detsky Sad Kita", address: "Weisbachstraße 1-4, Berlin", language: "Russian-German", capacity: 65, is_available: false, email: "info@detskysk.com", phone: "64872634", photo: "https://images.unsplash.com/photo-1554721299-e0b8aa7666ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", opening_hours: "06:00", closing_hours: "16:00", size: "more than 50", age_structure: "Old homogenous", edu_system: "Open Work", aesthetic_edu: "Disabilitiy Integr.",
            description: "Detsky KiTa is proud to offer development for disabilities in an open work environmnet. We are open until 16.00 allowing children to spend time with their parents and enjoy the family as well as the friendly and stimulating activites of our KiTa. Give us a call!"},
          {name: "Stesti Kita", address: "Schulweg, Berlin", language: "Czech-German", capacity: 25, is_available: false, email: "info@stestikita.de", phone: "5083275892", photo: "https://images.unsplash.com/photo-1544780631-d7cc800ef62d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", opening_hours: "06:00", closing_hours: "17:00", size: "more than 50", age_structure: "Nest group", edu_system: "Reggio", aesthetic_edu: "Health",
            description: "We are the only Kita in Berlin and Brandenburg offering the Reggio educational system since 2003. We ahve two small groups and a lot of applications, therefore contact us as soon as you can. You will be put on a waiting list as we try to reply as fast as we can. Open day is every first Monday of the month."},
          {name: "Boldog Gyerekek Kita", address: "Lichtenberger Straße, Berlin", language: "Hungarian-German", capacity: 46, is_available: true, email: "info@bgk.de", phone: "50235436", photo: "https://images.unsplash.com/photo-1564429097439-e400382dc893?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", opening_hours: "10:00", closing_hours: "20:00", size: "less than 50", age_structure: "Mixed ages", edu_system: "Waldorf", aesthetic_edu: "Health",
            description: "Health is a crucial element in child development, at Boldog Gyerekek KiTa we believe it, and therefore thanks to the Waldorf educational system we train children to focus on healthy habits through a balanced diet and regular exercise. Book an appointment!"},
          {name: "Happikizzu", address: "Jacobystraße 5-6, Berlin", language: "Japanese-German", capacity: 38, is_available: true, email: "hattori@happikizzu.de", phone: "502343523", photo: "https://images.unsplash.com/flagged/photo-1570319736696-894f69f52bd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60", opening_hours: "07:00", closing_hours: "17:00", size: "more than 50", age_structure: "Nest group", edu_system: "Open Work", aesthetic_edu: "Health",
            description: "Happikizzu is an open work environmnet, where children divided in nest groups focus on learning and playing while we keep an eye on their healthy development. Our meals are approved by the German Council of Food and our big garden offers opportunities for fun and movement."},
          {name: "Szczescie", address: "Bornholmer Straße 2, Berlin", language: "Polish-German", capacity: 52, is_available: true, email: "info@polishkitaberlin.de", phone: "5023423467", photo: "https://images.unsplash.com/photo-1542810634-71277d95dcbb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60", opening_hours: "07:00", closing_hours: "18:00", size: "more than 50", age_structure: "Old homogenous", edu_system: "Open Work", aesthetic_edu: "Scientific experience",
            description: "Science is the most important field of development for present and future generations, therefore Szczescie KiTa puts it at the core of the educational system. We offer an open work environment in old omogenous classes. Due to the high number of applications, our waiting list might be long, be sure to keep in contact with us through the KiTa Butler app or by email."}])

