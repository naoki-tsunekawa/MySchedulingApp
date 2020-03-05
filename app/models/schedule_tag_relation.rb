# == Schema Information
#
# Table name: schedule_tag_relations
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  schedule_id :integer
#  tag_id      :bigint
#
# Foreign Keys
#
#  fk_rails_...  (schedule_id => schedules.id)
#  fk_rails_...  (tag_id => tags.id)
#
class ScheduleTagRelation < ApplicationRecord
  belongs_to :schedule
  belongs_to :tag
end
