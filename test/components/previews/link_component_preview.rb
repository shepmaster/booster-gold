class LinkComponentPreview < ViewComponent::Preview
  def default
    render(LinkComponent.new(text: 'Here is an example link', path: '#'))
  end
end
