class ClientForm
  include FormModel

  attr_model :company_name,
             :email,
             :phone,
             :description

  # No custom validations, just delegating it all to the Client model via the FormModel.
end
