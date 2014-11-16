class CreateEducationBackgrounds < ActiveRecord::Migration
  def change
    create_table :education_backgrounds do |t|
      t.text :high_school
      t.text :english_program
      t.text :degree_program
      t.text :university
      t.text :graduate_school
      t.references :type_of_degree, index: true
      t.string :desired_major
      t.references :student, index: true

      t.timestamps
    end
  end
end
