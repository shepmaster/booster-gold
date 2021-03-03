module FormModel
  extend ActiveSupport::Concern
  include ActiveModel::Model

  class_methods do
    def model_attrs
      @model_attrs ||= Set.new
    end

    private

    def attr_model(*names)
      @model_attrs ||= Set.new
      @model_attrs += names
      attr_accessor *names
    end
  end

  included do
    delegate :save, :save!, to: :to_model

    def initialize(model, attributes)
      self.attributes = model.attributes.with_indifferent_access.slice(*model_attrs)
      self.attributes = attributes
      @model = model
    end

    def validate
      super
      to_model.validate
      self.errors.merge!(to_model.errors)
    end

    def to_model
      @model.attributes = attributes
      @model
    end

    def attributes
      vals = model_attrs.map { |a| self.public_send(a) }
      model_attrs.zip(vals).to_h
    end

    private

    def model_attrs
      self.class.model_attrs
    end
  end
end
