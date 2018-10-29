class Post < ApplicationRecord
  # validates :検証するカラム名、{検証する内容}
  validates :content, {presence: true, length: {maximum: 140}}
  validates :user_id, {presence: true}
end
