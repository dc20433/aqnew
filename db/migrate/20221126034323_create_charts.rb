class CreateCharts < ActiveRecord::Migration[7.0]
  def change
    create_table :charts do |t|
      t.date :t_date
      t.text :soap
      t.string :acu_list
      t.string :c_med_list
      t.string :c_for_list
      t.string :o_treats
      t.references :regi, null: false, foreign_key: true

      t.timestamps
    end
  end
end
