require 'rails_helper'

RSpec.describe "sentences/index", type: :view do
  before(:each) do
    assign(:sentences, [
      Sentence.create!(
        body: "MyText"
      ),
      Sentence.create!(
        body: "MyText"
      )
    ])
  end

  it "renders a list of sentences" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
