class ClientForm
  include ActiveModel::Model

  attr_accessor :id,
                :company_name,
                :email,
                :phone,
                :description

  def to_model
    if id.present?
      @model ||= Client.find(id)
    else
      @model ||= Client.new
    end

    @model.attributes = {
      company_name: company_name,
      email: email,
      phone: phone,
      description: description
    }

    @model
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
