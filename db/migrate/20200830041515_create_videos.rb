class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.text :tag
      t.bigint :view
      t.string :video_url
      t.integer :order
      t.string :queriy
      t.string :video_length
      t.integer :like
      t.integer :dislike
      t.string :channel_url
      t.string :create_stamp

      t.timestamps
    end
  end
end
