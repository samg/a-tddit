require 'rails_helper'

RSpec.describe "bar7s/new", type: :view do
  before(:each) do
    assign(:bar7, Bar7.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar7 form" do
    render

    assert_select "form[action=?][method=?]", bar7s_path, "post" do

      assert_select "input[name=?]", "bar7[foo1]"

      assert_select "input[name=?]", "bar7[foo2]"

      assert_select "input[name=?]", "bar7[foo3]"

      assert_select "input[name=?]", "bar7[foo4]"

      assert_select "textarea[name=?]", "bar7[foo5]"
    end
  end
end
