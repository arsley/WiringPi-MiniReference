class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :func
      t.string :usage_code
      t.string :usage_description
      t.string :category

      t.timestamps null: false
    end
  end
end
