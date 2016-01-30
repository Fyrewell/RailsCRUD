# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Produtos.create(id: 1, nome: 'Geladeira', valor:'999.99', descricao:'Side by Side com gelo na porta', quantidade: 2)
Produtos.create(id: 2, nome: 'Fogão', valor:'950.00', descricao:'Painel automático e forno elétrico', quantidade: 5)
Produtos.create(id: 3, nome: 'Microondas', valor:'999.99', descricao:'Manda SMS quando termina de esquentar', quantidade: 1)
Produtos.create(id: 4, nome: 'Frigobar', valor:'0.00', quantidade: '2', descricao:'Yeah')