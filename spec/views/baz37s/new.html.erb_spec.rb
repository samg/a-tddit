require 'rails_helper'

RSpec.describe "baz37s/new", type: :view do
  before(:each) do
    assign(:baz37, Baz37.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz37 form" do
    render

    assert_select "form[action=?][method=?]", baz37s_path, "post" do

      assert_select "input[name=?]", "baz37[foo1]"

      assert_select "input[name=?]", "baz37[foo2]"

      assert_select "input[name=?]", "baz37[foo3]"

      assert_select "input[name=?]", "baz37[foo4]"

      assert_select "textarea[name=?]", "baz37[foo5]"
    end
  end
end
