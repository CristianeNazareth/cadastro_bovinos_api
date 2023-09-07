class CreateBovinos < ActiveRecord::Migration[7.0]
  def change
    create_table :bovinos do |t|
      t.string :brinco, limit: 8
      t.string :nome, limit: 20
      t.string :situacao, limit: 15
      t.string :sexo
      t.string :brinco_mae, limit: 8
      t.string :brinco_pai, limit: 8
      t.string :raca, limit: 15
      t.date :data_nascimento
      t.date :data_prenhes
      t.date :data_ultimo_parto

      t.timestamps
    end
  end
end
