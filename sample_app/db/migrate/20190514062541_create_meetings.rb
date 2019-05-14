class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.string :title
      t.text :description
      t.datetime :startTime
      t.datetime :endTime
      t.boolean :isActive, default: true

      t.timestamps
    end
  end
end
