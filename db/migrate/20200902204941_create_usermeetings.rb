class CreateUsermeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :usermeetings do |t|
      t.string :meeting_type
      t.datetime :dateandtime
      t.string :meeting_title
      t.string :participants
      t.integer :user_id

      t.timestamps
    end
  end
end
