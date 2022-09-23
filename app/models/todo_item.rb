class TodoItem < ApplicationRecord
  validates :title, presence: true
  validates :due_date, presence: true

  def priority_color
    return 'badge bg-danger' if priority == 'High'

    return 'badge bg-success' if priority == 'Low'

    'badge bg-warning text-dark'
  end
end
