class AddGradeRefToBoulders < ActiveRecord::Migration
  def change
    add_reference :boulders, :grade, index: true
  end
end
