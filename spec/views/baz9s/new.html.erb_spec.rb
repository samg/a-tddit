require 'rails_helper'

RSpec.describe "baz9s/new", type: :view do
  before(:each) do
    assign(:baz9, Baz9.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz9 form" do
    render

    assert_select "form[action=?][method=?]", baz9s_path, "post" do

      assert_select "input[name=?]", "baz9[foo1]"

      assert_select "input[name=?]", "baz9[foo2]"

      assert_select "input[name=?]", "baz9[foo3]"

      assert_select "input[name=?]", "baz9[foo4]"

      assert_select "textarea[name=?]", "baz9[foo5]"
    end
  end
end
