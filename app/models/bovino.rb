class Bovino < ApplicationRecord



    validates :brinco, presence: true, length: { in: 1..8 }
    validates :nome, presence: true, length: { in: 1..20 }
    validates :situacao, presence: true, length: { in: 1..15}, inclusion: {in: ['Em Lactação', 'Seca', 'Vendido', 'Morto']}
    validates :sexo, presence: true, inclusion: {in: [ 'F', 'M']}
    validates :brinco_mae , length: { in: 0..8 }
    validates :brinco_pai , length: { in: 0..8 }
    validates :raca, presence: true, length: { in: 1..15}, inclusion: {in: ['Girolando', 'Holandês', 'Gir', 'Jersey']}



    
    private





end

