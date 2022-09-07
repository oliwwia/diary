class DateToString < ActiveRecord::Migration[7.0]
  def change
    change_column :entries, :date, :string
  end
end
