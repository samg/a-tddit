require 'rails_helper'

RSpec.describe "baz74s/new", type: :view do
  before(:each) do
    assign(:baz74, Baz74.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz74 form" do
    render

    assert_select "form[action=?][method=?]", baz74s_path, "post" do

      assert_select "input[name=?]", "baz74[foo1]"

      assert_select "input[name=?]", "baz74[foo2]"

      assert_select "input[name=?]", "baz74[foo3]"

      assert_select "input[name=?]", "baz74[foo4]"

      assert_select "textarea[name=?]", "baz74[foo5]"
    end
  end
end
