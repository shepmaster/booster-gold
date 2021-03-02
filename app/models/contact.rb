class Contact < ApplicationRecord
  validates :name, inclusion: { in: %w(jake leandro), message: "This is a no-%{value} club." }

  validates :email, format: { with: /cow/, message: "only cows!" }

  validate :dates_in_order, if: -> { start_at.present? && end_at.present? }

  def dates_in_order
    if start_at > end_at
      errors.add(:start_at, 'needs to be before the end at')
      errors.add(:end_at, 'needs to be after the start at')
    end
  end
end
