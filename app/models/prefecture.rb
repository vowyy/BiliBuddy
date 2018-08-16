class Prefecture < ApplicationRecord
  has_many :locations
end

# == Schema Information
#
# Table name: prefectures
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
