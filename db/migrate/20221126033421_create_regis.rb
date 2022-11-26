class CreateRegis < ActiveRecord::Migration[7.0]
  def change
    create_table :regis do |t|
      t.string :lastNm
      t.string :firstNm
      t.string :init
      t.string :gender
      t.date :dob
      

      t.timestamps
    end
  end
end
