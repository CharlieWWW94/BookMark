class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :published
      t.string :s1
      t.string :t1
      t.string :t2
      t.string :t3

      t.timestamps
    end
  end
end
