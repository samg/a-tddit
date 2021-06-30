require 'rails_helper'

RSpec.describe "baz20s/new", type: :view do
  before(:each) do
    assign(:baz20, Baz20.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz20 form" do
    render

    assert_select "form[action=?][method=?]", baz20s_path, "post" do

      assert_select "input[name=?]", "baz20[foo1]"

      assert_select "input[name=?]", "baz20[foo2]"

      assert_select "input[name=?]", "baz20[foo3]"

      assert_select "input[name=?]", "baz20[foo4]"

      assert_select "textarea[name=?]", "baz20[foo5]"
    end
  end
end
