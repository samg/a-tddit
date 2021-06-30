require 'rails_helper'

RSpec.describe "bar77s/new", type: :view do
  before(:each) do
    assign(:bar77, Bar77.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar77 form" do
    render

    assert_select "form[action=?][method=?]", bar77s_path, "post" do

      assert_select "input[name=?]", "bar77[foo1]"

      assert_select "input[name=?]", "bar77[foo2]"

      assert_select "input[name=?]", "bar77[foo3]"

      assert_select "input[name=?]", "bar77[foo4]"

      assert_select "textarea[name=?]", "bar77[foo5]"
    end
  end
end
