class AddUserIdToRoutines < ActiveRecord::Migration[6.0]
  def change
    add_reference :routines, :user, index: true
  end
end
