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
class Schedule < ApplicationRecord
  has_many :comments, dependent: :delete_all
  has_many :schedule_tag_relations, dependent: :delete_all
  has_many :tags, through: :schedule_tag_relations

  validates :name, presence: true, length: { maximum: 10 }
  validates :title, presence: true, length: { maximum: 30 }
  validates :body, presence: true, length: { maximum: 1000 }
  validates :deadline, presence: true
end
