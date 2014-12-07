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

Category.create(name: 'Books')

Product.create(title: 'The Lord of the Rings', description: 'Classic of fantasy, by J.R.R. Tolkien.', price: 29.95, 
	category: Category.where(name: 'Books').first, 
	user: User.find(2))
	Review.create(content: 'The best of all! Loved all characters. Plot was interesting.', rating: 5, 
		product: Product.where(title: 'The Lord of the Rings').first, user: User.find(1))
	Review.create(content: 'I\'m not a fan of this book. Didn\'t like it at all.' , rating: 2, 
		product: Product.where(title: 'The Lord of the Rings').first, user: User.find(6))
	Review.create(content: 'Book was interesting, but I didn\'t finish it. I was very busy.', rating: 4, 
		product: Product.where(title: 'The Lord of the Rings').first, user: User.find(2))
	Review.create(content: 'I\'m disappointed by the endig. Why good always wins?', rating: 1, 
		product: Product.where(title: 'The Lord of the Rings').first, user: User.find(3))

Product.create(title: 'The Chronicles of Narnia', description: 'Classic of fantasy by C.S. Lewis', price: 23.50, 
	category: Category.where(name: 'Books').first, 
	user: User.find(3))
	Review.create(content: 'My kid liked it very much!', rating: 5, 
		product: Product.where(title: 'The Chronicles of Narnia').first, user: User.find(5))
	Review.create(content: 'I\'m definitely gonna read it again someday. Didn\'t like some of the main characters though', rating: 4, 
		product: Product.where(title: 'The Chronicles of Narnia').first, user: User.find(4))

Product.create(title: 'And Then There Were None', description: 'Best mystery novel by Agatha Christie', price: 19.29, 
	category: Category.where(name: 'Books').first, 
	user: User.find(5))
	Review.create(content: 'My mind exploded. So much genius!', rating: 5, 
		product: Product.where(title: 'And Then There Were None').first, user: User.find(1))
	Review.create(content: 'What a mystery! Didn\'t expect this ending. What a shame the second reading won\'t be the same', rating: 4, 
		product: Product.where(title: 'And Then There Were None').first, user: User.find(3))
	Review.create(content: 'I don\'t understand why everybody like it so much. It was so clear who was the murder!', rating: 2, 
		product: Product.where(title: 'And Then There Were None').first, user: User.find(4))
	Review.create(content: 'Too short. I read it on my way home.', rating: 3, 
		product: Product.where(title: 'And Then There Were None').first, user: User.find(6))