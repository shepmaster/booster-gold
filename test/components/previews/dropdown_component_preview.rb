class DropdownComponentPreview < ViewComponent::Preview
  def default
    render(DropdownComponent.new(items: [
      LinkComponent.new(text: 'First link', path: '#'),
      LinkComponent.new(text: 'Other link', path: '#'),
    ]))
  end
end
