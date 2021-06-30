require 'rails_helper'

RSpec.describe "baz94s/new", type: :view do
  before(:each) do
    assign(:baz94, Baz94.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz94 form" do
    render

    assert_select "form[action=?][method=?]", baz94s_path, "post" do

      assert_select "input[name=?]", "baz94[foo1]"

      assert_select "input[name=?]", "baz94[foo2]"

      assert_select "input[name=?]", "baz94[foo3]"

      assert_select "input[name=?]", "baz94[foo4]"

      assert_select "textarea[name=?]", "baz94[foo5]"
    end
  end
end
