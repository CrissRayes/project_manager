class SetDefaultState < ActiveRecord::Migration[7.0]
  def change
    change_column :projects, :state, :integer, :default => 1
  end
end
