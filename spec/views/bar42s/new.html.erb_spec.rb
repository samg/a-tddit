require 'rails_helper'

RSpec.describe "bar42s/new", type: :view do
  before(:each) do
    assign(:bar42, Bar42.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar42 form" do
    render

    assert_select "form[action=?][method=?]", bar42s_path, "post" do

      assert_select "input[name=?]", "bar42[foo1]"

      assert_select "input[name=?]", "bar42[foo2]"

      assert_select "input[name=?]", "bar42[foo3]"

      assert_select "input[name=?]", "bar42[foo4]"

      assert_select "textarea[name=?]", "bar42[foo5]"
    end
  end
end
