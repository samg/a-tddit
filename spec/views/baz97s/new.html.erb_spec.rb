require 'rails_helper'

RSpec.describe "baz97s/new", type: :view do
  before(:each) do
    assign(:baz97, Baz97.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz97 form" do
    render

    assert_select "form[action=?][method=?]", baz97s_path, "post" do

      assert_select "input[name=?]", "baz97[foo1]"

      assert_select "input[name=?]", "baz97[foo2]"

      assert_select "input[name=?]", "baz97[foo3]"

      assert_select "input[name=?]", "baz97[foo4]"

      assert_select "textarea[name=?]", "baz97[foo5]"
    end
  end
end
