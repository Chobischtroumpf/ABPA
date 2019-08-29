class CreatePracticiens < ActiveRecord::Migration[5.2]
  def change
    create_table :practiciens do |t|
      t.string :nom
      t.string :nompratique
      t.string :localisation
      t.string :education_psy
      t.string :groupe_aide
      t.string :aide_individuelle
      t.string :photo

      t.string :telephone
      t.string :email
      t.string :site

      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
