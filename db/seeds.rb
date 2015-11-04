# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##Bikes##
b1 = Bike.create!({name: "Patricia the Peugeot", image:"http://jinqiaojs.com/hd/bicycle-art-hd-wallpaper-tl3.jpg", short_description:"Lovely new Peugeot located in East London close to Bethnal Green", description:"Full peugeot descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"26 Old Jewry, London EC2R, UK", owner_id:1})

b2 = Bike.create!({name: "Bianca Bike", image:"https://hdwallpapers.cat/wallpaper_mirror/bicycle_with_basket_photography_flowers_hd-wallpaper-1573873.jpg", short_description:"Lovely new bianca located in East London close to Bethnal Green", description:"Full Bianca descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"11 Puddledock, London EC4V 3PD, UK", owner_id:2})

b3 = Bike.create!({name: "Generic Vintage", image:"https://s-media-cache-ak0.pinimg.com/736x/5c/d2/da/5cd2da34ff92d6f2875ebb95de75cefc.jpg",short_description:"Lovely new vintage located in East London close to Bethnal Green", description:"Full Vintage descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"1 Undershaft, London EC3A 8EE, UK",owner_id:3})

b4 = Bike.create!({name: "Racer bike", image:"http://www.theracingbicycle.com/images/Eagle_Quad_full.bmp", short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"Full Racer descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"1 Gracechurch St, London EC3V 0DD, UK",owner_id:4})

b5 = Bike.create!({name: "Something bike", image:"http://www.roadbikereview.com/reviews/wp-content/uploads/2012/11/25A_4_a.jpg", short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"Full Racer descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"1 Gracechurch St, London EC3V 0DD, UK",owner_id:5})

b6 = Bike.create!({name: "Another bike", image:"http://www.theracingbicycle.com/images/1950_Helyett_Speciale.JPG", short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"Full Racer descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"1 Gracechurch St, London EC3V 0DD, UK",owner_id:6})

b7 = Bike.create!({name: "Johns second bike", image:"http://www.single-speed.co.uk/wp-content/uploads/2011/08/single_speed_bike_115-1.jpg", short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"Full Racer descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"1 Gracechurch St, London EC3V 0DD, UK",owner_id:1})

b8 = Bike.create!({name: "Marks second bike", image:"https://vintageairuk.files.wordpress.com/2012/08/guvnor-1.jpg", short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"Full Racer descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"1 Gracechurch St, London EC3V 0DD, UK",owner_id:2})

b9 = Bike.create!({name: "Dericks second bike", image:"http://www.lekkerbikes.com/wp-content/uploads/2014/10/cafe_racer_bike.jpg", short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"Full Racer descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"1 Gracechurch St, London EC3V 0DD, UK",owner_id:3})

## Users##
users = User.create!([{name:"Chris Smith", username:"John123", bio:"This is johns bio all about him..salsfkasdkl", image:"chris.jpg", password: "password", email:"john@john.com"},
  {name:"Matt Johnes", username:"Matt13", bio:"This is Matts bio all about him..salsfkasdkl", image:"jackb.jpg", password: "password", email:"matt@matt.com"},
  {name:"Derick Davies", username:"Deric13", bio:"This is Derricks bio all about him..salsfkasdkl", image:"ciaran.jpg", password: "password", email:"derick@derick.com"},
  {name:"Martha Morely", username:"Martha1", bio:"This is Marthas bio all about him..salsfkasdkl", image:"jackb.jpg", password: "password", email:"martha@martha.com"},
  {name:"Mark Marky", username:"Marky12", bio:"This is Marks bio all about him..salsfkasdkl", image:"max.jpg", password: "password", email:"mark@mark.com"},
  {name:"Susan Sus", username:"Susie1", bio:"This is Susies bio all about him..salsfkasdkl", image:"jackm.jpg", password: "password", email:"susan@susan.com"}])

### Bookings###
#<Booking id: 1, start_time: "2018-11-04 09:00:00", end_time: "2018-11-04 10:59:00", length: 2, bike_id: 3, rider_id: 2>,

bookings = Booking.create!([{start_time: "2015-11-05 09:00:00", end_time: "2015-11-05 10:59:00", length: 2, bike_id: 3, rider_id: 2},{start_time: "2015-11-07 011:00:00", end_time: "2015-11-05 15:59:00", length: 5, bike_id: 1, rider_id: 2},{start_time: "2015-11-07 011:00:00", end_time: "2015-11-05 15:59:00", length: 5, bike_id: 3, rider_id: 1
  }])

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












