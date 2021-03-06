class CreateAgendas < ActiveRecord::Migration[5.2]
  def change
    create_table :agendas do |t|
      t.string :nom
      t.string :photo
      t.string :description
      t.date :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
