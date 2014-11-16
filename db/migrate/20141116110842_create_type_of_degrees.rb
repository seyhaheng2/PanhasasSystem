class CreateTypeOfDegrees < ActiveRecord::Migration
  def change
    create_table :type_of_degrees do |t|
      t.string :name

      t.timestamps
    end
  end
end
