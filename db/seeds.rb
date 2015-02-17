# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
# 
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users_test = User.create([{ fname: 'Jack', lname: 'Sparrow', date_of_birth: '01/01/1970', email: 'jack.sparrow@association.fr', password: 'password', credits: '0'},
	{ fname: 'Etienne', lname: 'Luigi', date_of_birth: '01/02/1975', email: 'etienne.luigi@association.fr', password: 'password', credits: '0'},
	{ fname: 'Anne', lname: 'Rocher', date_of_birth: '10/12/1976', email: 'anne.rocher@association.fr', password: 'password', credits: '0'},
	{ fname: 'Frederic', lname: 'Montagne', date_of_birth: '02/09/1983', email: 'frederic.montagne@association.fr', password: 'password', credits: '0'},
	{ fname: 'Pierre', lname: 'Michel', date_of_birth: '08/11/1965', email: 'pierre.michel@association.fr', password: 'password', credits: '0'},
	{ fname: 'Mickael', lname: 'Jouffre', date_of_birth: '12/09/1985', email: 'mickael.jouffre@association.fr', password: 'password', credits: '0'},
	{ fname: 'Margot', lname: 'Buche', date_of_birth: '02/04/1987', email: 'margot.buche@association.fr', password: 'password', credits: '0'},
	{ fname: 'Laetitia', lname: 'Gruillot', date_of_birth: '10/11/1975', email: 'laetitia.gruillot@association.fr', password: 'password', credits: '0'},
	{ fname: 'Jean-Marc', lname: 'Louty', date_of_birth: '12/09/1981', email: 'jean-marc.louty@association.fr', password: 'password', credits: '0'}])

pots_test = Pot.create([{ user_id: '1', description: "Je vis dans la rue depuis maintenant 15ans et souhaite simplement quelques vêtements propres et chauds pour passer l'hiver au chaud. Je vous en serais très reconnaissant. Bonne journée à vous.", cash_demand: "120", cash_collected: "0", credits_collected: "0"},
	{ user_id: '2', description: "Melomane depuis toujours, je recherche actuellement une flûte pour me divertir et divertir les autres en ces temps de fêtes. Merci à tous pour votre aide et merci à la communauté Coud'Pouce.", cash_demand: "100", cash_collected: "0", credits_collected: "0"},
	{ user_id: '3', description: "Melomane depuis toujours, je recherche actuellement une flûte pour me divertir et divertir les autres en ces temps de fêtes. Merci à tous pour votre aide et merci à la communauté Coud'Pouce.", cash_demand: "200", cash_collected: "0", credits_collected: "0"},
	{ user_id: '4', description: "Melomane depuis toujours, je recherche actuellement une flûte pour me divertir et divertir les autres en ces temps de fêtes. Merci à tous pour votre aide et merci à la communauté Coud'Pouce.", cash_demand: "500", cash_collected: "0", credits_collected: "0"},
	{ user_id: '5', description: "Melomane depuis toujours, je recherche actuellement une flûte pour me divertir et divertir les autres en ces temps de fêtes. Merci à tous pour votre aide et merci à la communauté Coud'Pouce.", cash_demand: "300", cash_collected: "0", credits_collected: "0"},
	{ user_id: '6', description: "Melomane depuis toujours, je recherche actuellement une flûte pour me divertir et divertir les autres en ces temps de fêtes. Merci à tous pour votre aide et merci à la communauté Coud'Pouce.", cash_demand: "130", cash_collected: "0", credits_collected: "0"},
	{ user_id: '7', description: "Melomane depuis toujours, je recherche actuellement une flûte pour me divertir et divertir les autres en ces temps de fêtes. Merci à tous pour votre aide et merci à la communauté Coud'Pouce.", cash_demand: "80", cash_collected: "0", credits_collected: "0"},
	{ user_id: '8', description: "Melomane depuis toujours, je recherche actuellement une flûte pour me divertir et divertir les autres en ces temps de fêtes. Merci à tous pour votre aide et merci à la communauté Coud'Pouce.", cash_demand: "30", cash_collected: "0", credits_collected: "0"},
	{ user_id: '9', description: "Melomane depuis toujours, je recherche actuellement une flûte pour me divertir et divertir les autres en ces temps de fêtes. Merci à tous pour votre aide et merci à la communauté Coud'Pouce.", cash_demand: "75", cash_collected: "0", credits_collected: "0"}])


materials_test = Material.create([{ type_of_good: 'Chaise', image: 'http://www.4-pieds.com/9311-thickbox_default/chaise-de-cuisine-viva.jpg'},
	{ type_of_good: 'T-shirt', image: 'http://www.salsaloca.fr/wp-content/uploads/2013/08/tshirt-time-215106821.jpg'},
	{ type_of_good: 'Pull', image: 'http://www.biomidi.fr/2840-thickbox/pull-homme-anti-bouloche-entretien-facile.jpg'},
	{ type_of_good: 'Lit', image: 'http://www.papoozy.fr/upload/coloriage/sm/SA4a9bf6c592f49.jpg'},
	{ type_of_good: 'Kit Rasage', image: 'http://www.coloriages.fr/coloriages/coloriage-barbier.jpg'},
	{ type_of_good: 'Chaussures', image: 'http://lol.net/coloriage/coloriage/mini/coloriage-chaussure.jpg'}])

