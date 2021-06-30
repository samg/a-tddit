require 'rails_helper'

RSpec.describe "baz84s/new", type: :view do
  before(:each) do
    assign(:baz84, Baz84.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz84 form" do
    render

    assert_select "form[action=?][method=?]", baz84s_path, "post" do

      assert_select "input[name=?]", "baz84[foo1]"

      assert_select "input[name=?]", "baz84[foo2]"

      assert_select "input[name=?]", "baz84[foo3]"

      assert_select "input[name=?]", "baz84[foo4]"

      assert_select "textarea[name=?]", "baz84[foo5]"
    end
  end
end
