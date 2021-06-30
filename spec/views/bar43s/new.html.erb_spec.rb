require 'rails_helper'

RSpec.describe "bar43s/new", type: :view do
  before(:each) do
    assign(:bar43, Bar43.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar43 form" do
    render

    assert_select "form[action=?][method=?]", bar43s_path, "post" do

      assert_select "input[name=?]", "bar43[foo1]"

      assert_select "input[name=?]", "bar43[foo2]"

      assert_select "input[name=?]", "bar43[foo3]"

      assert_select "input[name=?]", "bar43[foo4]"

      assert_select "textarea[name=?]", "bar43[foo5]"
    end
  end
end
