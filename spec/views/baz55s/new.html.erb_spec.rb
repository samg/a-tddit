require 'rails_helper'

RSpec.describe "baz55s/new", type: :view do
  before(:each) do
    assign(:baz55, Baz55.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz55 form" do
    render

    assert_select "form[action=?][method=?]", baz55s_path, "post" do

      assert_select "input[name=?]", "baz55[foo1]"

      assert_select "input[name=?]", "baz55[foo2]"

      assert_select "input[name=?]", "baz55[foo3]"

      assert_select "input[name=?]", "baz55[foo4]"

      assert_select "textarea[name=?]", "baz55[foo5]"
    end
  end
end