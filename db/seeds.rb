listings = [
  {
    name: 'Cozy Cottage',
    guests: 4,
    beds: 2,
    baths: 1.5,
    price: 100
  },
  {
    name: 'Luxury Condo',
    guests: 2,
    beds: 1,
    baths: 1,
    price: 200
  },
  {
    name: 'Spacious Villa',
    guests: 8,
    beds: 4,
    baths: 3,
    price: 400
  }
]

listings.each do |listing|
    Listing.create(listing)
    puts "Creating listing #{listing[:name]}"
  end
