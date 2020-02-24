# == Schema Information
#
# Table name: comments
#
#  id          :bigint           not null, primary key
#  comment     :text(65535)      not null
#  name        :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  schedule_id :integer
#
# Foreign Keys
#
#  fk_rails_...  (schedule_id => schedules.id)
#
require 'rails_helper'

RSpec.describe Comment, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
