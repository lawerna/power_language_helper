require 'rails_helper'

RSpec.describe "sentences/edit", type: :view do
  let(:sentence) {
    Sentence.create!(
      body: "MyText"
    )
  }

  before(:each) do
    assign(:sentence, sentence)
  end

  it "renders the edit sentence form" do
    render

    assert_select "form[action=?][method=?]", sentence_path(sentence), "post" do

      assert_select "textarea[name=?]", "sentence[body]"
    end
  end
end
