class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.date :v_date
      t.string :m_stat
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
      t.date :d_onset
      t.integer :pain_scale
      t.integer :d_lost
      t.integer :d_restd
      t.string :c_onset
      t.string :better
      t.string :worse
      t.string :o_drs
      t.date :o_drs_when
      t.string :pcp_name
      t.string :hosp
      t.date :h_when
      t.string :diag_given
      t.string :diag_where
      t.string :aq_b4
      t.string :aqrist
      t.string :aq_where
      t.string :di_list
      t.string :o_dis
      t.string :inj_surg
      t.string :med_taken
      t.date :last_prd
      t.string :preg
      t.integer :preg_wks
      t.references :regi, null: false, foreign_key: true

      t.timestamps
    end
  end
end
