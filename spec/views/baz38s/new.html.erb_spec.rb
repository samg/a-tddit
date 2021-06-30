require 'rails_helper'

RSpec.describe "baz38s/new", type: :view do
  before(:each) do
    assign(:baz38, Baz38.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz38 form" do
    render

    assert_select "form[action=?][method=?]", baz38s_path, "post" do

      assert_select "input[name=?]", "baz38[foo1]"

      assert_select "input[name=?]", "baz38[foo2]"

      assert_select "input[name=?]", "baz38[foo3]"

      assert_select "input[name=?]", "baz38[foo4]"

      assert_select "textarea[name=?]", "baz38[foo5]"
    end
  end
end
