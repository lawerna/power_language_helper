require 'rails_helper'

RSpec.describe "sentences/show", type: :view do
  before(:each) do
    assign(:sentence, Sentence.create!(
      body: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
