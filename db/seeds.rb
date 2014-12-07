# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'johnsmith@workshops.com', password: 'DoctorWho', 
	firstname: 'John', lastname: 'Smith', company: 'TARDIS', 
	phone_number: '777-828-939', adress: 'Everywhere in Time and Space')
User.create(email: 'harrypotter@workshops.com', password: 'DeathlyHallows',
	firstname: 'Harry', lastname: 'Potter', company: 'Gryffindor', 
	phone_number: '333-727-565', adress: 'Hogwarts School')
User.create(email: 'geraltofrivia@workshops.com', password: 'Yennefer', 
	firstname: 'Geralt', lastname: 'of Rivia', company: 'Witchers', 
	phone_number: '222-757-484', adress: 'Kaer Morhen')
User.create(email: 'sherlockholmes@workshops.com', password: 'IreneAdler', 
	firstname: 'Sherlock', lastname: 'Holmes', company: 'Private detectives', 
	phone_number: '457-543-959', adress: '221B Baker Street, London')
User.create(email: 'herculepoirot@workshops.com', password: 'OrientExpress',
	firstname: 'Hercule', lastname: 'Poirot', company: 'Private detectives',
	phone_number: '342-456-234', adress: '56B Whitehaven Mansions, London')

User.create(email: 'tyrionlannister@workshops.com', password: 'Westeros', 
	firstname: 'Tyrion', lastname: 'Lannister', company: 'Lannisters', 
	phone_number: '454-777-112', adress: 'King\'s Landing', 
	admin: true)