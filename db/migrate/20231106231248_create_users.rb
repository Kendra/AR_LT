class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, limit: 20
      t.integer :age
      t.integer :kind
      t.timestamps
    end
  end
end
