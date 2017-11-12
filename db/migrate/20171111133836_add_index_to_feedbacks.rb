class AddIndexToFeedbacks < ActiveRecord::Migration[5.1]
  def change
    add_index :feedbacks, :email
    add_index :feedbacks, :text
  end
end
