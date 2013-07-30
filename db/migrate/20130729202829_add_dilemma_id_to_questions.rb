class AddDilemmaIdToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :dilemma_id, :integer
    add_index :questions, :dilemma_id
  end
end
