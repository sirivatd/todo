# == Schema Information
#
# Table name: todo_items
#
#  id           :bigint(8)        not null, primary key
#  content      :string
#  todo_list_id :bigint(8)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class TodoItem < ApplicationRecord
  belongs_to :todo_list,
  primary_key: :id,
  foreign_key: :todo_list_id,
  class_name: :TodoList
end
