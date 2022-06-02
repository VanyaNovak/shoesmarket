# == Schema Information
#
# Table name: brands
#
#  id          :integer          not null, primary key
#  bytitle     :string
#  description :string
#  img         :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Brand < ApplicationRecord
  validates :title,       presence: true
  validates :description, presence: true

  has_many :products
end
