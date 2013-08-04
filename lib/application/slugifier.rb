class Slugifier
  def self.slugify(text)
    text.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '').gsub(/-+/, '-')
  end
end