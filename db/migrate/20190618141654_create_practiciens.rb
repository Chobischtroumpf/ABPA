class CreatePracticiens < ActiveRecord::Migration[5.2]
  def change
    create_table :practiciens do |t|
      t.string :nom
      t.string :localisation
      t.string :education
      t.string :image
      t.string :telephone
      t.string :site
      
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
