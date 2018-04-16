# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


c1 = Company.create(name:'Bloomberg', description:'Finance and IT')
c2 = Company.create(name:'Microsoft', description:'IT')
c3 = Company.create(name:'Siemens', description:'IT')
c4 = Company.create(name:'Apple', description:'IT')
c5 = Company.create(name:'Huawei', description:'Smartphones')
c6 = Company.create(name:'Oneplus', description:'Smartphones')

p1 = Product.create(name: 'Tong', description: 'Chaussure non fermée', company_id: 1)
p2 = Product.create(name: 'Mobile', description: 'Dispositif pour appeler les gens', company_id: 1)
p3 = Product.create(name: 'Hamburger', description: 'Sandwich américain', company_id: 2)
p4 = Product.create(name: 'Pantalon', description: 'Habit pour le bas du corps', company_id: 3)
p5 = Product.create(name: 'Avion', description: 'Transporte des passagers dans les airs', company_id: 5)
p6 = Product.create(name: 'Orange', description: 'Fruit plein de vitamine C', company_id: 5)
p7 = Product.create(name: 'Parapluie', description: 'Protège de la pluie', company_id: 6)
p8 = Product.create(name: 'Tapis', description: 'Se met sur le sol', company_id: 6)

u1 = User.create(username: 'bloriot97', password: '12345', company_id: 6)
