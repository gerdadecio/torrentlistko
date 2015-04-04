# == Schema Information
#
# Table name: websites
#
#  id         :integer          not null, primary key
#  domain     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Website < ActiveRecord::Base

  before_save :parse_domain

  private

  def parse_domain
    self.domain = UrlParser.parse self.domain
  end
end
