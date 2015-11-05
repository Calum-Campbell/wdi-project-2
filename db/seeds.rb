User.destroy_all
Bike.destroy_all
Feature.destroy_all

## Users##
u1 = User.create!(name:"Chris Brady", username:"Chris123", bio:"London cyclist who has a couple of spare bike lying around that I'm happy to rent!", image:"chris.jpg", password: "password", email:"chris@chris.com")
u2 = User.create!(name:"Jack Johnes", username:"Jack13", bio:"London cyclist who has a couple of spare bike lying around that I'm happy to rent!", image:"jackb.jpg", password: "password", email:"matt@matt.com")
u3 = User.create!(name:"Ciaran Davies", username:"Ciaz13", bio:"London cyclist who has a couple of spare bike lying around that I'm happy to rent!", image:"ciaran.jpg", password: "password", email:"ciaran@ciaran.com")
u4 = User.create!(name:"Jack Morely", username:"Jack1", bio:"London cyclist who has a couple of spare bike lying around that I'm happy to rent!", image:"jackm.jpg", password: "password", email:"jackm@jackm.com")
u5 = User.create!(name:"Max Marky", username:"Max12", bio:"London cyclist who has a couple of spare bike lying around that I'm happy to rent!", image:"max.jpg", password: "password", email:"maxw@maxw.com")
u6 = User.create!(name:"Max Sharp", username:"Maxy1", bio:"This is Susies bio all about him..salsfkasdkl", image:"max.jpg", password: "password", email:"maxs@maxs.com")

##Bikes##
b1 = u1.bikes.create!({name: "Patricia the Peugeot", image:"http://jinqiaojs.com/hd/bicycle-art-hd-wallpaper-tl3.jpg",short_description:"Lovely new Peugeot located in East London close to Bethnal Green", description:"This is the full description of my Bike. The bike is an extremely reliable bike that come with numerouse features, including inflated tyres and extreme style. The perfect bike if you want to avoide looking like Boris Johnson and rent something with a bit of style. I am listing the bike as I currently have no need for my second bike and hope others can enjoy it as much as me!", address:"26 Old Jewry, London EC2R, UK", bike_image: File.open(Rails.root + "app/assets/images/bike1.jpg")})

b2 = u2.bikes.create!({name: "Bianca Bike", image:"https://hdwallpapers.cat/wallpaper_mirror/bicycle_with_basket_photography_flowers_hd-wallpaper-1573873.jpg",short_description:"Lovely new bianca located in East London close to Bethnal Green", description:"This is the full description of my Bike. The bike is an extremely reliable bike that come with numerouse features, including inflated tyres and extreme style. The perfect bike if you want to avoide looking like Boris Johnson and rent something with a bit of style. I am listing the bike as I currently have no need for my second bike and hope others can enjoy it as much as me!", address:" 202 Shaftesbury Ave, Charing Cross, London WC2H 8JL ", bike_image: File.open(Rails.root + "app/assets/images/bike2.jpg")})

b3 = u3.bikes.create!({name: "Generic Vintage", image:"https://s-media-cache-ak0.pinimg.com/736x/5c/d2/da/5cd2da34ff92d6f2875ebb95de75cefc.jpg",short_description:"Lovely new vintage located in East London close to Bethnal Green", description:"This is the full description of my Bike. The bike is an extremely reliable bike that come with numerouse features, including inflated tyres and extreme style. The perfect bike if you want to avoide looking like Boris Johnson and rent something with a bit of style. I am listing the bike as I currently have no need for my second bike and hope others can enjoy it as much as me!", address:"1 Undershaft, London EC3A 8EE, UK", bike_image: File.open(Rails.root + "app/assets/images/bike3.jpg")})

b4 = u4.bikes.create!({name: "Racer bike", image:"http://www.theracingbicycle.com/images/Eagle_Quad_full.bmp",short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"This is the full description of my Bike. The bike is an extremely reliable bike that come with numerouse features, including inflated tyres and extreme style. The perfect bike if you want to avoide looking like Boris Johnson and rent something with a bit of style. I am listing the bike as I currently have no need for my second bike and hope others can enjoy it as much as me!", address:"35 The, Jubilee Market Hall, 30 Tavistock Ct, London WC2E 8RF", bike_image: File.open(Rails.root + "app/assets/images/bike4.jpg")})

b5 = u5.bikes.create!({name: "Something bike", image:"http://www.roadbikereview.com/reviews/wp-content/uploads/2012/11/25A_4_a.jpg",short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"This is the full description of my Bike. The bike is an extremely reliable bike that come with numerouse features, including inflated tyres and extreme style. The perfect bike if you want to avoide looking like Boris Johnson and rent something with a bit of style. I am listing the bike as I currently have no need for my second bike and hope others can enjoy it as much as me!",address:"City Hall The Queen’s Walk More London London SE1 2AA", bike_image: File.open(Rails.root + "app/assets/images/bike5.jpg")})

b6 = u6.bikes.create!({name: "Another bike", image:"http://www.theracingbicycle.com/images/1950_Helyett_Speciale.JPG", short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"This is the full description of my Bike. The bike is an extremely reliable bike that come with numerouse features, including inflated tyres and extreme style. The perfect bike if you want to avoide looking like Boris Johnson and rent something with a bit of style. I am listing the bike as I currently have no need for my second bike and hope others can enjoy it as much as me!", address:"Bressenden Place,
London, SW1E 5DU ", bike_image: File.open(Rails.root + "app/assets/images/bike6.jpg")})

b7 = u4.bikes.create!({name: "Jack's second bike", image:"http://www.single-speed.co.uk/wp-content/uploads/2011/08/single_speed_bike_115-1.jpg",short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"This is the full description of my Bike. The bike is an extremely reliable bike that come with numerouse features, including inflated tyres and extreme style. The perfect bike if you want to avoide looking like Boris Johnson and rent something with a bit of style. I am listing the bike as I currently have no need for my second bike and hope others can enjoy it as much as me!", address:"House of Commons, Westminster London SWIA OAA", bike_image: File.open(Rails.root + "app/assets/images/bike7.jpg")})

b8 = u6.bikes.create!({name: "Max's second bike", image:"https://vintageairuk.files.wordpress.com/2012/08/guvnor-1.jpg", short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"This is the full description of my Bike. The bike is an extremely reliable bike that come with numerouse features, including inflated tyres and extreme style. The perfect bike if you want to avoide looking like Boris Johnson and rent something with a bit of style. I am listing the bike as I currently have no need for my second bike and hope others can enjoy it as much as me!", address:"16 New Burlington Place, London WIS 2HX ", bike_image: File.open(Rails.root + "app/assets/images/bike8.jpg")})

b9 = u3.bikes.create!({name: "Ciaran's second bike", image:"http://www.lekkerbikes.com/wp-content/uploads/2014/10/cafe_racer_bike.jpg", short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"This is the full description of my Bike. The bike is an extremely reliable bike that come with numerouse features, including inflated tyres and extreme style. The perfect bike if you want to avoide looking like Boris Johnson and rent something with a bit of style. I am listing the bike as I currently have no need for my second bike and hope others can enjoy it as much as me!", address:"Buckingham Palace,London SW1A 1AA", bike_image: File.open(Rails.root + "app/assets/images/bike9.jpg")})

### Bookings###
#<Booking id: 1, start_time: "2018-11-04 09:00:00", end_time: "2018-11-04 10:59:00", length: 2, bike_id: 3, rider_id: 2>,

bookings = Booking.create!([{start_time: "2015-11-06 09:00:00", end_time: "2015-11-06 10:59:00", length: 2, bike_id: 1, rider_id: 2},
  {start_time: "2015-11-08 011:00:00", end_time: "2015-11-08 15:59:00", length: 5, bike_id: 1, rider_id: 2},{start_time: "2015-11-09 011:00:00", end_time: "2015-11-09 15:59:00", length: 5, bike_id: 2, rider_id: 1},
  {start_time: "2015-11-12 09:00:00", end_time: "2015-11-12 10:59:00", length: 2, bike_id: 3, rider_id: 2},{start_time: "2015-11-13 011:00:00", end_time: "2015-11-13 15:59:00", length: 5, bike_id: 3, rider_id: 4},{start_time: "2015-11-14 011:00:00", end_time: "2015-11-14 15:59:00", length: 5, bike_id: 4, rider_id: 3},
  {start_time: "2015-11-15 09:00:00", end_time: "2015-11-15 10:59:00", length: 2, bike_id: 5, rider_id: 6},
    {start_time: "2015-11-16 011:00:00", end_time: "2015-11-16 15:59:00", length: 5, bike_id: 6, rider_id: 5},
    {start_time: "2015-11-17 011:00:00", end_time: "2015-11-17 15:59:00", length: 5, bike_id: 7, rider_id: 3},
    {start_time: "2015-11-18 09:00:00", end_time: "2015-11-18 10:59:00", length: 2, bike_id: 8, rider_id: 4},{start_time: "2015-11-19 011:00:00", end_time: "2015-11-19 15:59:00", length: 5, bike_id: 3, rider_id: 4},{start_time: "2015-11-20 011:00:00", end_time: "2015-11-20 15:59:00", length: 5, bike_id: 9, rider_id: 5},
    {start_time: "2015-12-12 011:00:00", end_time: "2015-12-12 15:59:00", length: 5, bike_id: 1, rider_id: 3},
    {start_time: "2015-11-20 011:00:00", end_time: "2015-11-20 15:59:00", length: 5, bike_id: 2, rider_id: 5},
    {start_time: "2015-12-21 011:00:00", end_time: "2015-12-21 15:59:00", length: 5, bike_id: 4, rider_id: 3},
    {start_time: "2015-12-26 011:00:00", end_time: "2015-12-26 15:59:00", length: 5, bike_id: 5, rider_id: 1},
    {start_time: "2015-12-27 011:00:00", end_time: "2015-12-27 15:59:00", length: 5, bike_id: 6, rider_id: 2},
    {start_time: "2015-12-28 011:00:00", end_time: "2015-12-28 15:59:00", length: 5, bike_id: 7, rider_id: 3},
    {start_time: "2015-12-29 011:00:00", end_time: "2015-12-29 15:59:00", length: 5, bike_id: 8, rider_id: 4},
    {start_time: "2016-12-28 011:00:00", end_time: "2016-12-28 15:59:00", length: 5, bike_id: 9, rider_id: 5},
  ])

## Features
helmet    = Feature.create!([{name: "Helmet"}])
lights    = Feature.create!([{name: "Lights"}])
mud_guard = Feature.create!([{name: "Mud_guard"}])
lock      = Feature.create!([{name: "Lock"}])
flask      = Feature.create!([{name: "Flask"}])

b1.features << helmet
b1.features << lights
b1.features << flask
b1.save

b2.features << helmet
b2.features << lights
b2.features << mud_guard
b2.features << flask
b2.save

b3.features << helmet
b3.features << lights
b3.features << mud_guard
b3.save

b4.features << helmet
b4.features << lights
b4.features << lock
b4.save

b5.features << helmet
b5.features << lights
b5.features << lock
b5.features << flask
b5.save

b6.features << helmet
b6.features << lights
b6.features << lock
b6.save

b7.features << helmet
b7.features << lights
b7.features << lock
b7.save

b8.features << helmet
b8.features << lights
b8.features << lock
b8.save

b9.features << helmet
b9.features << lights
b9.features << lock
b9.save












