class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :owner
      t.string :email
      t.text :comment

      t.timestamps
    end
  end
end
