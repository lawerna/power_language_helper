require 'rails_helper'

RSpec.describe "lessons/index", type: :view do
  before(:each) do
    assign(:lessons, [
      Lesson.create!(
        title: "Title",
        description: "Description"
      ),
      Lesson.create!(
        title: "Title",
        description: "Description"
      )
    ])
  end

  it "renders a list of lessons" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Description".to_s), count: 2
  end
end
