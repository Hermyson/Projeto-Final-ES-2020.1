class AddHistoricoDoencasToPacientes < ActiveRecord::Migration[6.1]
  def change
    add_column :pacientes, :historico_doencas, :text
  end
end
