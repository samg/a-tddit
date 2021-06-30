require 'rails_helper'

RSpec.describe "baz10s/new", type: :view do
  before(:each) do
    assign(:baz10, Baz10.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz10 form" do
    render

    assert_select "form[action=?][method=?]", baz10s_path, "post" do

      assert_select "input[name=?]", "baz10[foo1]"

      assert_select "input[name=?]", "baz10[foo2]"

      assert_select "input[name=?]", "baz10[foo3]"

      assert_select "input[name=?]", "baz10[foo4]"

      assert_select "textarea[name=?]", "baz10[foo5]"
    end
  end
end
