# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  body        :text
#  description :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_articles_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Article < ApplicationRecord
  belongs_to :user

  validates_presence_of :body
  validates_presence_of :description
  validates_presence_of :title
  validates_presence_of :user

end
