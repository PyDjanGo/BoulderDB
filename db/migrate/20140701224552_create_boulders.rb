class CreateBoulders < ActiveRecord::Migration
  def change
    create_table :boulders do |t|
      t.string :name

      t.timestamps
    end
  end
end
