class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|
      t.string :type_param
      t.text :description

      t.timestamps
    end
  end
end
