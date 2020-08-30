class Video < ApplicationRecord

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      viseo = find_by(id: row["id"]) || new
      viseo.attributes = row.to_hash.slice(*updatable_attributes)
      viseo.save
    end
  end

  def self.updatable_attributes
    ["id", "title", "description", "tag", "view", "video_url", "order", "queriy", "video_length", "like", "dislike", "channel_url", "create_stamp"]
  end
end
