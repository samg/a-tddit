require 'rails_helper'

RSpec.describe "bar64s/new", type: :view do
  before(:each) do
    assign(:bar64, Bar64.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar64 form" do
    render

    assert_select "form[action=?][method=?]", bar64s_path, "post" do

      assert_select "input[name=?]", "bar64[foo1]"

      assert_select "input[name=?]", "bar64[foo2]"

      assert_select "input[name=?]", "bar64[foo3]"

      assert_select "input[name=?]", "bar64[foo4]"

      assert_select "textarea[name=?]", "bar64[foo5]"
    end
  end
end
