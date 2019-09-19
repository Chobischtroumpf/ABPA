class AddingTelephonePriveToPracticien < ActiveRecord::Migration[5.2]
  def change
    add_column :practiciens, :telephone_prive, :string
  end
end
