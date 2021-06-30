require 'rails_helper'

RSpec.describe "bar99s/new", type: :view do
  before(:each) do
    assign(:bar99, Bar99.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar99 form" do
    render

    assert_select "form[action=?][method=?]", bar99s_path, "post" do

      assert_select "input[name=?]", "bar99[foo1]"

      assert_select "input[name=?]", "bar99[foo2]"

      assert_select "input[name=?]", "bar99[foo3]"

      assert_select "input[name=?]", "bar99[foo4]"

      assert_select "textarea[name=?]", "bar99[foo5]"
    end
  end
end
