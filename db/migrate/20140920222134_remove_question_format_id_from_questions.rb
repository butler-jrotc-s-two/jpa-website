class RemoveQuestionFormatIdFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :question_format_id, :integer
  end
end
