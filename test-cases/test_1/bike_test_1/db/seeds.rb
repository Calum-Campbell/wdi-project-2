# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##Bikes##
b1 = Bike.create!({name: "Patricia the Peugeot", image:"http://i.ebayimg.com/00/s/MTAzMlgxNjAw/z/KZwAAOxyrM5TGLTv/$_59.JPG?set_id=880000500F", short_description:"Lovely new Peugeot located in East London close to Bethnal Green", description:"Full peugeot descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"26 Old Jewry, London EC2R, UK", owner_id:1})

b2 = Bike.create!({name: "Bianca Bike", image:"https://s-media-cache-ak0.pinimg.com/736x/3e/d4/e8/3ed4e8b0bed1a0a03bd7995e19878865.jpg", short_description:"Lovely new bianca located in East London close to Bethnal Green", description:"Full Bianca descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"11 Puddledock, London EC4V 3PD, UK", owner_id:2})

b3 = Bike.create!({name: "Generic Vintage", image:"http://cdn2-b.examiner.com/sites/default/files/styles/image_content_width/hash/53/36/5336a87f3e6fea0dd0b987e3b6c17605.jpg?itok=NReFJ2d-",short_description:"Lovely new vintage located in East London close to Bethnal Green", description:"Full Vintage descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"1 Undershaft, London EC3A 8EE, UK",owner_id:3})

b4 = Bike.create!({name: "Racer bike", image:"https://lfgss.microco.sm/api/v1/files/9029df94af514f58c7d09bf642a9b5c66abe4b20.jpg", short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"Full Racer descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"1 Gracechurch St, London EC3V 0DD, UK",owner_id:4})

b5 = Bike.create!({name: "Something bike", image:"https://lfgss.microco.sm/api/v1/files/9029df94af514f58c7d09bf642a9b5c66abe4b20.jpg", short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"Full Racer descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"1 Gracechurch St, London EC3V 0DD, UK",owner_id:5})

b6 = Bike.create!({name: "Another bike", image:"https://lfgss.microco.sm/api/v1/files/9029df94af514f58c7d09bf642a9b5c66abe4b20.jpg", short_description:"Lovely new Racer located in East London close to Bethnal Green", description:"Full Racer descrition FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL FULL ", address:"1 Gracechurch St, London EC3V 0DD, UK",owner_id:6})

## Users##
users = User.create!([{name:"John Smith", username:"John123", bio:"This is johns bio all about him..salsfkasdkl", image:"https://upload.wikimedia.org/wikipedia/en/5/50/Royall_Allah_In_Person_UNOI.png", password: "password", email:"john@john.com"},
  {name:"Matt Johnes", username:"Matt13", bio:"This is Matts bio all about him..salsfkasdkl", image:"http://thets-images.s3.amazonaws.com/angry.person.JPG", password: "password", email:"matt@matt.com"},
  {name:"Derick Davies", username:"Deric13", bio:"This is Derricks bio all about him..salsfkasdkl", image:"http://www3.pictures.gi.zimbio.com/2009+MusiCares+Person+Year+Gala+Arrivals+-Vhx_isRw6Nl.jpg", password: "password", email:"derick@derick.com"},
  {name:"Martha Morely", username:"Martha1", bio:"This is Marthas bio all about him..salsfkasdkl", image:"http://cdn01.cdn.justjared.com/wp-content/uploads/2013/09/kunis-portraits/mila-kunis-olivia-wilde-third-person-tiff-portrait-session-10.jpg", password: "password", email:"martha@martha.com"},
  {name:"Mark Marky", username:"Marky12", bio:"This is Marks bio all about him..salsfkasdkl", image:"http://www3.pictures.gi.zimbio.com/2009+MusiCares+Person+Year+Gala+Arrivals+-Vhx_isRw6Nl.jpg", password: "password", email:"mark@mark.com"},
  {name:"Susan Sus", username:"Susie1", bio:"This is Susies bio all about him..salsfkasdkl", image:"http://cdn01.cdn.justjared.com/wp-content/uploads/2013/09/kunis-portraits/mila-kunis-olivia-wilde-third-person-tiff-portrait-session-10.jpg", password: "password", email:"susan@susan.com"}])

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












