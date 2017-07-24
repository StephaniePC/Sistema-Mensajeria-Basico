class CreateMensajes < ActiveRecord::Migration[5.1]
  def change
    create_table :mensajes do |t|
      t.string :De
      t.string :Para
      t.text :Contenid

      t.timestamps
    end
  end
end
