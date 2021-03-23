# frozen_string_literal: true

# class docs
class BoostFormBuilder < ActionView::Helpers::FormBuilder
  def bst_text_field(method, options = {})
    defs = { data: { reflex: 'change' } }
    opts = defs.merge(options)

    @template.tag.div do
      self.label(method, class: 'font-extrabold') +
        text_field(method, opts)
    end
  end

  def text_field(method, options = {})
    defs = { data: { reflex: 'change' } }
    opts = defs.merge(options)

    field_validation = FieldValidation.new(object, method)

    field_element = super(method, opts.merge({ class: field_validation.border_css }))

    validation_element = @template.tag.p(class: field_validation.text_css) do
      field_validation.text.html_safe
    end

    @template.tag.div do
      label(method, class: 'font-extrabold') + field_element + validation_element
    end
  end

  def bst_text_area(method, options = {})
    defs = { data: { reflex: 'change' } }
    opts = defs.merge(options)

    @template.tag.div do
      self.label(method, class: 'font-extrabold') +
        text_area(method, opts)
    end
  end

  # class docs
  class FieldValidation
    attr_reader :text_css, :border_css, :text

    def initialize(object, method)
      @in_error = object.errors[method].presence
      @has_value = object.send(method).present?

      validate
    end

    def validate
      if @in_error && @has_value
        error
      elsif @in_error
        required
      else
        valid
      end
    end

    def error
      @text_css = 'text-validation-error'
      @border_css = 'border-validation-error'
      @text = "Error: #{@in_error.join(', ')}"
    end

    def required
      @text_css = 'text-validation-required'
      @border_css = 'border-validation-required'
      @text = 'Required'
    end

    def valid
      @text_css = 'text-validation-ok'
      @border_css = 'border-validation-ok'
      @text = 'OK'
    end
  end
end
