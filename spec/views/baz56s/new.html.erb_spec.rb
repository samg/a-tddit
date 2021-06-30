require 'rails_helper'

RSpec.describe "baz56s/new", type: :view do
  before(:each) do
    assign(:baz56, Baz56.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz56 form" do
    render

    assert_select "form[action=?][method=?]", baz56s_path, "post" do

      assert_select "input[name=?]", "baz56[foo1]"

      assert_select "input[name=?]", "baz56[foo2]"

      assert_select "input[name=?]", "baz56[foo3]"

      assert_select "input[name=?]", "baz56[foo4]"

      assert_select "textarea[name=?]", "baz56[foo5]"
    end
  end
end
