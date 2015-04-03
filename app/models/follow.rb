# == Schema Information
#
# Table name: follows
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  type       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#

class Follow < ActiveRecord::Base
  belongs_to :user
end
