class DateToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :entries, :date, :integer
  end
end
