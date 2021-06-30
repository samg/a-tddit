require 'rails_helper'

RSpec.describe "bar62s/new", type: :view do
  before(:each) do
    assign(:bar62, Bar62.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar62 form" do
    render

    assert_select "form[action=?][method=?]", bar62s_path, "post" do

      assert_select "input[name=?]", "bar62[foo1]"

      assert_select "input[name=?]", "bar62[foo2]"

      assert_select "input[name=?]", "bar62[foo3]"

      assert_select "input[name=?]", "bar62[foo4]"

      assert_select "textarea[name=?]", "bar62[foo5]"
    end
  end
end
