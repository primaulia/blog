class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  version :article_upload do
    # resize_to_fit 300, 300 #resizing photo before uploading
    cloudinary_transformation width: 400, height: 400, crop: :pad #displaying it in the screen
  end
end
