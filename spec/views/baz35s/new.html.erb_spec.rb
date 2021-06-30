require 'rails_helper'

RSpec.describe "baz35s/new", type: :view do
  before(:each) do
    assign(:baz35, Baz35.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz35 form" do
    render

    assert_select "form[action=?][method=?]", baz35s_path, "post" do

      assert_select "input[name=?]", "baz35[foo1]"

      assert_select "input[name=?]", "baz35[foo2]"

      assert_select "input[name=?]", "baz35[foo3]"

      assert_select "input[name=?]", "baz35[foo4]"

      assert_select "textarea[name=?]", "baz35[foo5]"
    end
  end
end
