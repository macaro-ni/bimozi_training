class PracticeRecord < ApplicationRecord
  belongs_to :user
  belongs_to :letter
  has_one_attached :image
  
  
  def parse_base64(image)
    if image.present? || rex_image(image) == ""
      content_type = create_extension(image)
      contents = image.sub %r/data:((image|application)\/.{3,}),/, ""
      decoded_data = Base64.decode64(contents)
      filename = Time.zone.now.to_s + "." + content_type
      File.open("#{Rails.root}/tmp/#{filename}", "wb") do |f|
        f.write(decoded_data)
      end
    end
    attach_image(filename)
  end




  private
    def create_extension(image)
      content_type = rex_image(image)
      content_type[%r/\b(?!.*\/).*/]
    end

    def rex_image(image)
      image[%r/(image\/[a-z]{3,4})|(application\/[a-z]{3,4})/]
    end

    def attach_image(filename)
      image.attach(io: File.open("#{Rails.root}/tmp/#{filename}"), filename: filename)
      FileUtils.rm("#{Rails.root}/tmp/#{filename}")
    end


end



