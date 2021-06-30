require 'rails_helper'

RSpec.describe "baz39s/new", type: :view do
  before(:each) do
    assign(:baz39, Baz39.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz39 form" do
    render

    assert_select "form[action=?][method=?]", baz39s_path, "post" do

      assert_select "input[name=?]", "baz39[foo1]"

      assert_select "input[name=?]", "baz39[foo2]"

      assert_select "input[name=?]", "baz39[foo3]"

      assert_select "input[name=?]", "baz39[foo4]"

      assert_select "textarea[name=?]", "baz39[foo5]"
    end
  end
end
