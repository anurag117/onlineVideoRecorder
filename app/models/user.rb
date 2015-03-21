class User < ActiveRecord::Base
  attr_accessible :video

  mount_uploader :video, VideoUploader
end
