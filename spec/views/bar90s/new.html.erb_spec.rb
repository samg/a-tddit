require 'rails_helper'

RSpec.describe "bar90s/new", type: :view do
  before(:each) do
    assign(:bar90, Bar90.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar90 form" do
    render

    assert_select "form[action=?][method=?]", bar90s_path, "post" do

      assert_select "input[name=?]", "bar90[foo1]"

      assert_select "input[name=?]", "bar90[foo2]"

      assert_select "input[name=?]", "bar90[foo3]"

      assert_select "input[name=?]", "bar90[foo4]"

      assert_select "textarea[name=?]", "bar90[foo5]"
    end
  end
end
