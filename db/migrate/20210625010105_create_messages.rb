  
class CreateMessages < ActiveRecord::Migration[4.2]
  def change
    create_table :messages do |t|
      t.string :author
      t.text :message
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end