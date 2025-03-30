# == Schema Information
#
# Table name: dev_home
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class DevHome < ApplicationRecord
  validates :singleton_guard, inclusion: { in: [true] }
  before_validation :ensure_singleton_guard

  has_rich_text :description
  has_many :techs
  has_many :clients
  has_many :dev_projects

  def self.singleton
    first_or_create!
  end

  private

  def ensure_singleton_guard
    self.singleton_guard = true
  end
end
