require 'rails_helper'

RSpec.describe "baz81s/new", type: :view do
  before(:each) do
    assign(:baz81, Baz81.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz81 form" do
    render

    assert_select "form[action=?][method=?]", baz81s_path, "post" do

      assert_select "input[name=?]", "baz81[foo1]"

      assert_select "input[name=?]", "baz81[foo2]"

      assert_select "input[name=?]", "baz81[foo3]"

      assert_select "input[name=?]", "baz81[foo4]"

      assert_select "textarea[name=?]", "baz81[foo5]"
    end
  end
end
