class ClientForm
  include ActiveModel::Model

  attr_accessor :company_name,
                :email,
                :phone,
                :description

  def to_model
    @model ||= Client.new(
      company_name: company_name,
      email: email,
      phone: phone,
      description: description
    )
  end

  def validate
    super
    to_model.validate
    self.errors.merge!(to_model.errors)
  end

  def save
    to_model.save
  end
end
