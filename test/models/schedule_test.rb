# == Schema Information
#
# Table name: schedules
#
#  id         :integer          not null, primary key
#  body       :text(65535)
#  complete   :boolean
#  deadline   :datetime
#  name       :string(255)
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class ScheduleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
