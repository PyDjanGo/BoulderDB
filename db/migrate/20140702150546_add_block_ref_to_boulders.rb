class AddBlockRefToBoulders < ActiveRecord::Migration
  def change
    add_reference :boulders, :block, index: true
  end
end
