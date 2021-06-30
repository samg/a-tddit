require 'rails_helper'

RSpec.describe "bar98s/new", type: :view do
  before(:each) do
    assign(:bar98, Bar98.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar98 form" do
    render

    assert_select "form[action=?][method=?]", bar98s_path, "post" do

      assert_select "input[name=?]", "bar98[foo1]"

      assert_select "input[name=?]", "bar98[foo2]"

      assert_select "input[name=?]", "bar98[foo3]"

      assert_select "input[name=?]", "bar98[foo4]"

      assert_select "textarea[name=?]", "bar98[foo5]"
    end
  end
end
