class CreateEstablishments < ActiveRecord::Migration[6.1]
  def change
    create_table :establishments do |t|
      t.string :code
      t.string :title
      t.text :address
      t.string :npa
      t.string :locality
      t.string :email
      t.string :phone1
      t.string :phone2
      t.string :fax

      t.timestamps
    end
  end
end
