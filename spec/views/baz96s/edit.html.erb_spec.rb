require 'rails_helper'

RSpec.describe "baz96s/edit", type: :view do
  before(:each) do
    @baz96 = assign(:baz96, Baz96.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit baz96 form" do
    render

    assert_select "form[action=?][method=?]", baz96_path(@baz96), "post" do

      assert_select "input[name=?]", "baz96[foo1]"

      assert_select "input[name=?]", "baz96[foo2]"

      assert_select "input[name=?]", "baz96[foo3]"

      assert_select "input[name=?]", "baz96[foo4]"

      assert_select "textarea[name=?]", "baz96[foo5]"
    end
  end
end
