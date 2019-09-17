class CreatePracticiens < ActiveRecord::Migration[5.2]
  def change
    create_table :practiciens do |t|
      t.string :nom
      t.string :nompratique
      t.string :adressenum
      t.integer :zipcode
      t.string :province
      t.string :educationpsy
      t.string :groupeaide
      t.string :aideindividuelle
      t.string :photo

      t.string :telephone
      t.string :email
      t.string :site

      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
