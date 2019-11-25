puts "Destroy previous Kitas"
Kita.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Kitas = [{name: "Sunshine Kita", address: "Leopoldstraße 50, Berlin", language: "English-German", availability: "Full", capacity: 200},
          {name: "Meine Erste Kita", address: "Brandenburgische Straße 22, Berlin", language: "English-German", availability: "Available", capacity: 84},
          {name: "Charlotte", address: "Genslerstraße 21, Berlin", language: "German", availability: "Avalilable", capacity: 120},
          {name: "Tutti Amici", address: "Leopoldßtraße 82, Berlin", language: "Italian-German", availability: "Available", capacity: 64},
          {name: "Le Tour Eiffel", address: "Holteistraße 18, Berlin", language: "French-German", availability: "Full", capacity: 35},
          {name: "Detsky Sad Kita", address: "Weisbachstraße 1-4, Berlin", language: "Russian-German", availability: "Available", capacity: 65},
          {name: "Stesti Kita", address: "Schulweg, Berlin", language: "Czech-German", availability: "Full", capacity: 25},
          {name: "Boldog Gyerekek Kita", address: "Lichtenberger Straße, Berlin", language: "Hungarian-German", availability: "Available", capacity: 46},
          {name: "Happikizzu", address: "Jacobystraße 5-6, Berlin", language: "Japanese-German", availability: "Full", capacity: 38},
          {name: "Szczescie", address: "Bornholmer Straße 2, Berlin", language: "Polish-German", availability: "Available", capacity: 52}]
