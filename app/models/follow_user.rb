class FollowUser < ApplicationRecord
  belongs_to :followed, class_name: 'user'
  belongs_to :follower, class_name: 'user'
end
