class AddUrlToUsermeeting < ActiveRecord::Migration[5.0]
  def change
    add_column :usermeetings, :url, :string
  end
end
