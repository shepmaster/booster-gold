class ContactForm
  include ActiveModel::Model

  attr_accessor :name, :email, :state, :city, :start_at, :end_at

  def validate
    super
    to_model.validate
    self.errors.merge!(to_model.errors)
  end

  def to_model
    @model ||= Contact.new(
      name: name,
      email: email,
      state:  state,
      city: city
    )
  end

  def save
    to_model.save
  end
end
