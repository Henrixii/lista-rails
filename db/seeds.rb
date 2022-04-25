# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.create!(name: 'breakfast')
Category.create!(name: 'lunch')
Category.create!(name: 'dinner')

Product.create!(name: 'pão_com_ovo', description: 'O melhor pão com ovo da região', price: 20 , category_id: 1 )
Product.create!(name: 'cuzcuz', description: 'melhor acompanhado com cafe', price: 17, category_id: 1)
Product.create!(name: 'biscoito_creamcrack', description: 'pra lembrar dos tempos do fundamental', price: 5, category_id: 1)
Product.create!(name: 'miojão', description: 'È nissin!', price: 13, category_id: 2)
Product.create!(name: 'P.F', description:'O famoso e barato prato feito', price: 10, category_id: 2)
Product.create!(name: 'bife do olhão', description:'aquele ovão gostoso', price: 12, category_id: 2)
Product.create!(name: 'espetinho', description: 'essa carne não é de origens duvidosas', price: 9, category_id: 2)
Product.create!(name: 'sopa', description:'mais gostoso no frio', price: 18, category_id: 3)
Product.create!(name: 'pizza', description:'temos o melhor chef da Itália', price: 20, category_id: 3)
Product.create!(name: 'pastel', description:'ganhe um caldo de cana de brinde', price: 8, category_id: 3)
