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

    @in_error = object.errors[method].presence
    @has_value = object.send(method).present?

    field = super(method, opts.merge({class: border_css}))

    validation = @template.tag.p(class: text_css) do
      validation_text.html_safe
    end

    @template.tag.div do
      label(method, class: "font-extrabold") + field + validation
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

  private

  def text_css
    if @in_error && @has_value
      'text-validation-error'
    elsif @in_error
      'text-validation-required'
    else
      'text-validation-ok'
    end
  end

  def border_css
    if @in_error && @has_value
      'border-validation-error'
    elsif @in_error
      'border-validation-required'
    else
      'border-validation-ok'
    end
  end

  def validation_text
    if @in_error && @has_value
      "Error: #{@in_error.join(', ')}"
    elsif @in_error
      'Required'
    else
      'OK'
    end
  end
end
