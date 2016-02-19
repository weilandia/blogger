class Article < ActiveRecord::Base
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings
  
  def tag_list
    self.tags.map(&:name).join(", ")
  end
  
  def tag_list=(tags_string)
    tag_names = tags_string.split(", ").map(&:downcase).uniq
    self.tags = tag_names.map { |name| Tag.find_or_create_by(name: name) }
  end
end
