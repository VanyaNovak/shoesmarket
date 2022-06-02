# frozen_string_literal: true

# == Schema Information
#
# Table name: authorizations
#
#  id         :integer          not null, primary key
#  provider   :string
#  uid        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#
# Indexes
#
#  index_authorizations_on_user_id  (user_id)
#
require 'rails_helper'

RSpec.describe Authorization, type: :model do
  it { should belong_to(:user) }
end
