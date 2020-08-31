class Video < ApplicationRecord

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      video = find_by(id: row["id"]) || new
      video.attributes = row.to_hash.slice(*updatable_attributes)
      video["order"] = video["order"].to_i
      video["view"] = video["view"].to_i
      video["like"] = video["like"].to_i
      video["dislike"] = video["dislike"].to_i
      video["video_url"] = "https://www.youtube.com"+video["video_url"]
      video["channel_url"] = "https://www.youtube.com"+video["channel_url"]
      video.save
    end
  end

  def self.updatable_attributes
    ["id", "title", "description", "tag", "view", "video_url", "order", "queriy", "video_length", "like", "dislike", "channel_url", "create_stamp"]
  end
end
