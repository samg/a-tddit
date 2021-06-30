require 'rails_helper'

RSpec.describe "bar71s/new", type: :view do
  before(:each) do
    assign(:bar71, Bar71.new(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders new bar71 form" do
    render

    assert_select "form[action=?][method=?]", bar71s_path, "post" do

      assert_select "input[name=?]", "bar71[foo1]"

      assert_select "input[name=?]", "bar71[foo2]"

      assert_select "input[name=?]", "bar71[foo3]"

      assert_select "input[name=?]", "bar71[foo4]"

      assert_select "textarea[name=?]", "bar71[foo5]"
    end
  end
end
