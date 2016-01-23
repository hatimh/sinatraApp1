class AddUrlAndTimeStamps < ActiveRecord::Migration
  def change
    add_column :messages, :url, :string
    add_timestamps :messages
  end
end
