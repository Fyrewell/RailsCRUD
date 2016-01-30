class Produtos < ActiveRecord::Base
  validates :nome,  presence: true, length: { minimum: 3, maximum: 50 }
  validates :descricao,  presence: true, length: { maximum: 500 }
  validates :valor,  presence: true, numericality: true
  validates :quantidade,  presence: true, numericality: { only_integer: true }
end
