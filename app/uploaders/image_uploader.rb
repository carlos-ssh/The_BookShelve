class ImageUploader < Shrine
  plugin :validation_helpers
  
  Attacher.validate do
    validate_mime_type %w[image/jpeg image/png image/webp]
    validate_max_size 1*1024*2014
  end
end
