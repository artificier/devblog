class AddPostStatToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :stat, :integer, default: 0
  end
end
