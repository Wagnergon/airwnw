listings = [
  {
    name: 'Cozy Cottage',
    guests: 4,
    beds: 2,
    baths: 1.5,
    price: 100,
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj_b9iBKUkpI_RnEGBPpbmbCXF5CgAEnJiOw&usqp=CAU'
  },
  {
    name: 'Luxury Condo',
    guests: 2,
    beds: 1,
    baths: 1,
    price: 200,
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9lZb3PBtYhy2S4pAIhY-SwGeeXlMIfsMTVw&usqp=CAU'
  },
  {
    name: 'Spacious Villa',
    guests: 8,
    beds: 4,
    baths: 3,
    price: 400,
    image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_--B2yN_iZ08wefDQLaIk_xxus03M-tyHKQ&usqp=CAU'
  }
]

listings.each do |listing|
  Listing.create(listing)
end


listings.each do |listing|
    Listing.create(listing)
    puts "Creating listing #{listing[:name]}"
  end
