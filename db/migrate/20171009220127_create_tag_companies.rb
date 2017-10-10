class CreateTagCompanies < ActiveRecord::Migration
  def change
    create_table :tag_companies do |t|
      t.belongs_to :tag, index: true
      t.belongs_to :company, index: true

      t.timestamps null: false
    end
  end
end
