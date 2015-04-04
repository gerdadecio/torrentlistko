# == Schema Information
#
# Table name: favorite_media
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  medium_type :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#

class FavoriteMedium < ActiveRecord::Base
  MEDIUM_TYPE = %w(tv\ series movie anime)

  belongs_to :user
end
