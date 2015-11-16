class ModifyPosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      remove_column :posts, :author_name
      add_column :posts, :writer_id, :integer
    end

    add_index :posts, :writer_id
  end
end
