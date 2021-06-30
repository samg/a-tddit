require 'rails_helper'

RSpec.describe "baz46s/new", type: :view do
  before(:each) do
    assign(:baz46, Baz46.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz46 form" do
    render

    assert_select "form[action=?][method=?]", baz46s_path, "post" do

      assert_select "input[name=?]", "baz46[foo1]"

      assert_select "input[name=?]", "baz46[foo2]"

      assert_select "input[name=?]", "baz46[foo3]"

      assert_select "input[name=?]", "baz46[foo4]"

      assert_select "textarea[name=?]", "baz46[foo5]"
    end
  end
end
