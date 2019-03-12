class ChangePhoneToString < ActiveRecord::Migration[5.2]
  def change
    change_column :suppliers, :phone, :string
  end
end
