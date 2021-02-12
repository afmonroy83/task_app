class Task < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :status, presence: true, inclusion: { in: %w(complete incomplete) }

  def self.search(user, search)
    if search
      self.get_tasks(user).select {|task| task.description.downcase.match(search.downcase) }
    else
      self.get_tasks(user)
    end
  end

  def self.get_tasks(user)
    return user.admin? ? self.all : self.where(user_id: user.id)
  end

end
