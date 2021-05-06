class CreatePoops < ActiveRecord::Migration[6.0]
  def change
    create_table :poops do |t|

      t.timestamps
    end
  end
end
