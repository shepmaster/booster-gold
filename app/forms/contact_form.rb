class ContactForm
  include FormModel

  attr_model :name, :email, :start_at, :end_at, :state, :city

  attr_accessor :current_user

  validate :is_admin

  def is_admin
    errors.add(:base, "Not admin!") unless current_user
  end
end
