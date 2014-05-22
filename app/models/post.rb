class Post < ActiveRecord::Base
  anaconda_for :asset, acl: "private"
end
