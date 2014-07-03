class AddRegionRefAndSectorRefToBoulders < ActiveRecord::Migration
  def change
    add_reference :boulders, :sector, index: true
    add_reference :boulders, :region, index: true
  end
end
