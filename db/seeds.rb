puts "Destroy previous Kitas"
Kindergarden.destroy_all
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


kindergardens = Kindergarden.create([{name: "Sunshine Kita", address: "Leopoldstraße 50, Berlin", language: "English-German", capacity: 200, photo: "https://images.unsplash.com/photo-1564429238817-393bd4286b2d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
          {name: "Meine Erste Kita", address: "Brandenburgische Straße 22, Berlin", language: "English-German", capacity: 84, photo: "https://images.unsplash.com/photo-1567746455504-cb3213f8f5b8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
          {name: "Charlotte", address: "Genslerstraße 21, Berlin", language: "German", capacity: 120, photo: "https://images.unsplash.com/flagged/photo-1551887373-6edba6dacbb1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
          {name: "Tutti Amici", address: "Leopoldßtraße 82, Berlin", language: "Italian-German", capacity: 64, photo: "https://images.unsplash.com/photo-1541692641319-981cc79ee10a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
          {name: "Le Tour Eiffel", address: "Holteistraße 18, Berlin", language: "French-German", capacity: 35, photo: "https://images.unsplash.com/flagged/photo-1550706468-bedf630a1985?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
          {name: "Detsky Sad Kita", address: "Weisbachstraße 1-4, Berlin", language: "Russian-German", capacity: 65, photo: "https://images.unsplash.com/photo-1554721299-e0b8aa7666ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
          {name: "Stesti Kita", address: "Schulweg, Berlin", language: "Czech-German", capacity: 25, photo: "https://images.unsplash.com/photo-1544780631-d7cc800ef62d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
          {name: "Boldog Gyerekek Kita", address: "Lichtenberger Straße, Berlin", language: "Hungarian-German", capacity: 46, photo: "https://images.unsplash.com/photo-1564429097439-e400382dc893?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
          {name: "Happikizzu", address: "Jacobystraße 5-6, Berlin", language: "Japanese-German", capacity: 38, photo: "https://images.unsplash.com/flagged/photo-1570319736696-894f69f52bd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"},
          {name: "Szczescie", address: "Bornholmer Straße 2, Berlin", language: "Polish-German", capacity: 52, photo: "https://images.unsplash.com/photo-1542810634-71277d95dcbb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60"}]
    )
