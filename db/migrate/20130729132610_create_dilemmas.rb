class CreateDilemmas < ActiveRecord::Migration
  def change
    create_table :dilemmas do |t|
      t.string :name

      t.timestamps
    end
  end
end
