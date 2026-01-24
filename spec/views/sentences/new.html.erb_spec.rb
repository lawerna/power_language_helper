require 'rails_helper'

RSpec.describe "sentences/new", type: :view do
  before(:each) do
    assign(:sentence, Sentence.new(
      body: "MyText"
    ))
  end

  it "renders new sentence form" do
    render

    assert_select "form[action=?][method=?]", sentences_path, "post" do

      assert_select "textarea[name=?]", "sentence[body]"
    end
  end
end
