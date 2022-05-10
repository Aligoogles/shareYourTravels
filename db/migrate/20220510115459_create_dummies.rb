class CreateDummies < ActiveRecord::Migration[7.0]
  def change
    create_table :dummies do |t|
      t.string :name
      t.string :author
      t.date :date
      t.string :comment

      t.timestamps
    end
  end
end
