class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.text :name
      t.text :short_description
      t.text :city
      t.text :state

      t.timestamps null: false
    end
  end
end
