class CreateTestes < ActiveRecord::Migration[5.2]
  def change
    create_table :testes do |t|
      t.string :name

      t.timestamps
    end
  end
end
