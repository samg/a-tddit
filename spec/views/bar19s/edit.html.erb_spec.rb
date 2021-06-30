require 'rails_helper'

RSpec.describe "bar19s/edit", type: :view do
  before(:each) do
    @bar19 = assign(:bar19, Bar19.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar19 form" do
    render

    assert_select "form[action=?][method=?]", bar19_path(@bar19), "post" do

      assert_select "input[name=?]", "bar19[foo1]"

      assert_select "input[name=?]", "bar19[foo2]"

      assert_select "input[name=?]", "bar19[foo3]"

      assert_select "input[name=?]", "bar19[foo4]"

      assert_select "textarea[name=?]", "bar19[foo5]"
    end
  end
end
