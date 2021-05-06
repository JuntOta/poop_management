class CreatePoops < ActiveRecord::Migration[6.0]
  def change
    create_table :poops do |t|
      t.date       :date,        null: false
      t.text       :text,        null: false
      t.integer    :color_id,    null: false
      t.integer    :amount_id,   null: false
      t.integer    :shape_id,    null: false
      t.integer    :smell_id,    null: false
      t.references :user,        foreign_key: true
      
      t.timestamps
    end
  end
end
