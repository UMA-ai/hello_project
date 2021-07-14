class AddTeacherToArticles < ActiveRecord::Migration[6.1]
  def change
    add_column :articles, :teacher, :string

    t.timestamps
  end
end
