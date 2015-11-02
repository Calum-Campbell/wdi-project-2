# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##Bikes##
bikes = Bike.create([{name: "Patricia the Peugeot", image:"http://i.ebayimg.com/00/s/MTAzMlgxNjAw/z/KZwAAOxyrM5TGLTv/$_59.JPG?set_id=880000500F", description:"Nice Peugot bike that has served me well for years etcetcetc", address:"26 Old Jewry, London EC2R, UK", owner_id:1},
  {name: "Bianca Bike", image:"https://s-media-cache-ak0.pinimg.com/736x/3e/d4/e8/3ed4e8b0bed1a0a03bd7995e19878865.jpg", description:"Bianca infoopfinfinfinfksmfsalkmalkmdas", address:"11 Puddledock, London EC4V 3PD, UK", owner_id:2},
   {name: "Generic Vintage", image:"http://cdn2-b.examiner.com/sites/default/files/styles/image_content_width/hash/53/36/5336a87f3e6fea0dd0b987e3b6c17605.jpg?itok=NReFJ2d-", description:"Generic vintage info askdmadlkamsdlka", address:"1 Undershaft, London EC3A 8EE, UK",owner_id:3},
   {name: "Racer bike", image:"https://lfgss.microco.sm/api/v1/files/9029df94af514f58c7d09bf642a9b5c66abe4b20.jpg", description:"The Lynx aslkdaslkdjaslkdjaslkdj", address:"1 Gracechurch St, London EC3V 0DD, UK",owner_id:4}])

## Users##
users = User.create([{name:"John Smith", username:"John123", bio:"This is johns bio all about him..salsfkasdkl", image:"https://upload.wikimedia.org/wikipedia/en/5/50/Royall_Allah_In_Person_UNOI.png", password: "password", email:"john@john.com"},
  {name:"Matt Johnes", username:"Matt13", bio:"This is Matts bio all about him..salsfkasdkl", image:"http://thets-images.s3.amazonaws.com/angry.person.JPG", password: "password", email:"matt@matt.com"},
  {name:"Derick Davies", username:"Deric13", bio:"This is Derricks bio all about him..salsfkasdkl", image:"http://www3.pictures.gi.zimbio.com/2009+MusiCares+Person+Year+Gala+Arrivals+-Vhx_isRw6Nl.jpg", password: "password", email:"derick@derick.com"},
  {name:"Martha Morely", username:"Martha1", bio:"This is Marthas bio all about him..salsfkasdkl", image:"http://cdn01.cdn.justjared.com/wp-content/uploads/2013/09/kunis-portraits/mila-kunis-olivia-wilde-third-person-tiff-portrait-session-10.jpg", password: "password", email:"martha@martha.com"}])

## Features
features = Feature.create([{name: "Helmet"}, {name:"Lights"}, {name:"Mud Guard"}, {name:"Lock"}])













