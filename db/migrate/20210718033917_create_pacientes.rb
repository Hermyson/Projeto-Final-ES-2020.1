class CreatePacientes < ActiveRecord::Migration[6.1]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.string :email
      t.string :endereco
      t.string :estado_civil
      t.integer :quantidade_filhos
      t.text :medicamentos
      t.string :e_fumante
      t.string :ingere_alcool
      t.references :psicologo, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
