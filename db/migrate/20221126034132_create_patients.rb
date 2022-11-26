class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.date :vDate
      t.string :mStat
      t.decimal :height
      t.decimal :weight
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :cell
      t.string :home
      t.string :work
      t.string :email
      t.string :referred
      t.string :com1
      t.string :com2
      t.string :com3
      t.date :dOnset
      t.integer :painScale
      t.integer :dLost
      t.integer :dRestd
      t.string :cOnset
      t.string :better
      t.string :worse
      t.string :oDrs
      t.date :oDrsWhen
      t.string :pcpNm
      t.string :hosp
      t.date :hWhen
      t.string :diagGiven
      t.string :diagWhere
      t.string :aqB4
      t.string :aqrist
      t.string :aqWhere
      t.string :diList
      t.string :oDis
      t.string :injSurg
      t.string :medTaken
      t.date :lastPrd
      t.string :preg
      t.integer :pregWks
      t.references :regi, null: false, foreign_key: true

      t.timestamps
    end
  end
end
