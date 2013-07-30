class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :description
      t.integer :votes

      t.timestamps
    end
  end
end
