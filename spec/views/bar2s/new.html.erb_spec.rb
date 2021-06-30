require 'rails_helper'

RSpec.describe "bar2s/new", type: :view do
  before(:each) do
    assign(:bar2, Bar2.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar2 form" do
    render

    assert_select "form[action=?][method=?]", bar2s_path, "post" do

      assert_select "input[name=?]", "bar2[foo1]"

      assert_select "input[name=?]", "bar2[foo2]"

      assert_select "input[name=?]", "bar2[foo3]"

      assert_select "input[name=?]", "bar2[foo4]"

      assert_select "textarea[name=?]", "bar2[foo5]"
    end
  end
end
