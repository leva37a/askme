class AddAuthorIdToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :author_id, :integer
  end
end
