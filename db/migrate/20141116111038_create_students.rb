class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name_khmer
      t.string :name_english
      t.references :gender, index: true
      t.references :marital_status, index: true
      t.date :dob
      t.string :pob
      t.string :nationality
      t.text :home_address
      t.string :telephone
      t.string :email
      t.string :work_place
      t.string :position
      t.string :parent_name
      t.string :spouse_name
      t.string :emergency_contact
      t.string :emergency_relationship
      t.string :emergency_address
      t.string :emergency_telephone
      t.references :education_background, index: true

      t.timestamps
    end
  end
end
