require 'rails_helper'

RSpec.describe "bar5s/new", type: :view do
  before(:each) do
    assign(:bar5, Bar5.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar5 form" do
    render

    assert_select "form[action=?][method=?]", bar5s_path, "post" do

      assert_select "input[name=?]", "bar5[foo1]"

      assert_select "input[name=?]", "bar5[foo2]"

      assert_select "input[name=?]", "bar5[foo3]"

      assert_select "input[name=?]", "bar5[foo4]"

      assert_select "textarea[name=?]", "bar5[foo5]"
    end
  end
end
