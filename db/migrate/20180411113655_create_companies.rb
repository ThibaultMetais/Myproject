class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      #We will also get a primary key called id.
      t.timestamps
    end
  end
end
