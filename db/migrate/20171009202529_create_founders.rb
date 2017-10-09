class CreateFounders < ActiveRecord::Migration
  def change
    create_table :founders do |t|
      t.text :name
      t.text :title
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
