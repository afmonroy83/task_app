class User < ApplicationRecord
  rolify

  validates :username, presence: true
  validates :name, presence: true
  validates :lastname, presence: true
  after_create :assign_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tasks, dependent: :destroy

  def admin?
    has_role?(:admin)
  end

  def client?
    has_role?(:client)
  end

  def full_name
    "#{name} #{lastname}"
  end

  def task_complete
    tasks.where(status: "complete").count
  end

  def task_incomplete
    tasks.where(status: "incomplete").count
  end

  def assign_role
    add_role(:client)
  end

end
