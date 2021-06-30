require 'rails_helper'

RSpec.describe "baz24s/new", type: :view do
  before(:each) do
    assign(:baz24, Baz24.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz24 form" do
    render

    assert_select "form[action=?][method=?]", baz24s_path, "post" do

      assert_select "input[name=?]", "baz24[foo1]"

      assert_select "input[name=?]", "baz24[foo2]"

      assert_select "input[name=?]", "baz24[foo3]"

      assert_select "input[name=?]", "baz24[foo4]"

      assert_select "textarea[name=?]", "baz24[foo5]"
    end
  end
end
