class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :name
      t.string :video_id

      t.timestamps null: false
    end
  end
end
