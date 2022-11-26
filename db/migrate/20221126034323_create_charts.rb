class CreateCharts < ActiveRecord::Migration[7.0]
  def change
    create_table :charts do |t|
      t.date :tDate
      t.text :soap
      t.string :acuList
      t.string :cMedList
      t.string :cForList
      t.string :oTreats
      t.references :regi, null: false, foreign_key: true

      t.timestamps
    end
  end
end
