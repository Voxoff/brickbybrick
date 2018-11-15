class Friendship < ApplicationRecord
  has_one :user
  has_one :other_user, foreign_key: "user_id_1"
end
