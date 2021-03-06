class CreateRecipeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_ingredients do |t|
      t.references :recipe, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :weight

      t.timestamps
    end
  end
end
