require 'rails_helper'

RSpec.describe "words/edit", type: :view do
  let(:word) {
    Word.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:word, word)
  end

  it "renders the edit word form" do
    render

    assert_select "form[action=?][method=?]", word_path(word), "post" do

      assert_select "input[name=?]", "word[name]"
    end
  end
end
