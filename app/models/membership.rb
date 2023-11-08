class Membership < ApplicationRecord
  belongs_to :user
  belongs_to :organization

  enum status: { active: 1,
                 pending: 2,
                 inactive: 3,
                 deleted: 4}

  scope :deleted, -> { where(status: :deleted) }
  scope :active, -> {where(status: :active)}

end
