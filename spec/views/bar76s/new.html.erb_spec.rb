require 'rails_helper'

RSpec.describe "bar76s/new", type: :view do
  before(:each) do
    assign(:bar76, Bar76.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar76 form" do
    render

    assert_select "form[action=?][method=?]", bar76s_path, "post" do

      assert_select "input[name=?]", "bar76[foo1]"

      assert_select "input[name=?]", "bar76[foo2]"

      assert_select "input[name=?]", "bar76[foo3]"

      assert_select "input[name=?]", "bar76[foo4]"

      assert_select "textarea[name=?]", "bar76[foo5]"
    end
  end
end
