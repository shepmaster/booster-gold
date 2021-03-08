class ButtonComponentPreview < ViewComponent::Preview
  def default
    render(ButtonComponent.new(text: 'A button to click', data: {}))
  end
end
