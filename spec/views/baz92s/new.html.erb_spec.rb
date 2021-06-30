require 'rails_helper'

RSpec.describe "baz92s/new", type: :view do
  before(:each) do
    assign(:baz92, Baz92.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new baz92 form" do
    render

    assert_select "form[action=?][method=?]", baz92s_path, "post" do

      assert_select "input[name=?]", "baz92[foo1]"

      assert_select "input[name=?]", "baz92[foo2]"

      assert_select "input[name=?]", "baz92[foo3]"

      assert_select "input[name=?]", "baz92[foo4]"

      assert_select "textarea[name=?]", "baz92[foo5]"
    end
  end
end
