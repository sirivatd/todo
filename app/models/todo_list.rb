# == Schema Information
#
# Table name: todo_lists
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class TodoList < ApplicationRecord
  has_many :todo_items,
  primary_key: :id,
  foreign_key: :todo_list_id,
  class_name: :TodoItem
end
