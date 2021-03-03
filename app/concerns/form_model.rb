module FormModel
  extend ActiveSupport::Concern
  include ActiveModel::Model

  class_methods do
    def model_class
      @model_class
    end

    def model_attrs
      @model_attrs ||= Set.new
    end

    def absorb_and_assign(model, attributes = {})
      new.tap do |me|
        me.attributes = model.attributes.with_indifferent_access.slice(*@model_attrs)
        me.attributes = attributes
        me.instance_variable_set(:@model, model)
      end
    end

    private

    def model(clazz)
      @model_class = clazz
    end

    def attr_model(*names)
      @model_attrs ||= Set.new
      @model_attrs += names
      attr_accessor *names
    end
  end

  included do
    delegate :save, :save!, to: :to_model

    def validate
      super
      to_model.validate
      self.errors.merge!(to_model.errors)
    end

    def to_model
      @model ||= model_class.new
      @model.attributes = attributes
      @model
    end

    def attributes
      vals = model_attrs.map { |a| self.public_send(a) }
      model_attrs.zip(vals).to_h
    end

    private

    def model_class
      self.class.model_class
    end

    def model_attrs
      self.class.model_attrs
    end
  end
end
