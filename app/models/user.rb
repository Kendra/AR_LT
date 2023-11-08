class User < ApplicationRecord
  has_many :profiles, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :organizations, through: :memberships

  before_create :normalize_name

  validates :name, presence: { message: "Don't forget the name!" }
  validates :name, length: { maximum: 20, message: "You tried to create a user with a name greater than 20 characters dummy!" }
  validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 18 }

  scope :older_than, ->(age) { where('age > ?', age) }

  enum kind: { tragedy: 1,
               romance: 2,
               social: 3,
               realist: 4,
               modernist: 5,
               fantasy: 6}

  private

  def normalize_name
    self.name = name.downcase.titleize
  end

end
