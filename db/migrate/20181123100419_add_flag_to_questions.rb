class AddFlagToQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :questions, :flag, :string
  end
end
