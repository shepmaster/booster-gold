class BoostFormBuilder < ActionView::Helpers::FormBuilder
  def bst_text_field(method, options = {})
    defs = { data: { reflex: 'change' } }
    opts = defs.merge(options)

    @template.tag.div do
      self.label(method, class: 'font-extrabold') +
        text_field(method, opts)
    end
  end

  def jpg_text_field(method, options = {})
    defs = { data: { reflex: 'change' } }
    opts = defs.merge(options)

    in_error = object.errors[method].presence
    has_value = object.send(method).present?

    cls, txt =
         if in_error && has_value
           ['text-red-700', "This has errors: #{in_error.join(', ')}"]
         elsif in_error
           ['text-blue-700', 'This is required']
         else
           ['text-green-700', 'This is OK']
         end

    txt = @template.tag.p(class: cls) do
      txt.html_safe
    end

    @template.tag.div do
      self.label(method, class: "font-extrabold #{cls}") +
        text_field(method, opts) + txt
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
end
