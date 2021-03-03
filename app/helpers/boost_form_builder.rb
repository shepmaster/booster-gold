class BoostFormBuilder < ActionView::Helpers::FormBuilder
  def bst_text_field(method, options = {})
    defs = { data: { reflex: 'change' } }
    opts = defs.merge(options)

    @template.tag.div do
      self.label(method, class: 'font-extrabold') +
        text_field(method, opts)
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
