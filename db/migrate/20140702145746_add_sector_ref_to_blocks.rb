class AddSectorRefToBlocks < ActiveRecord::Migration
  def change
    add_reference :blocks, :sector, index: true
  end
end
