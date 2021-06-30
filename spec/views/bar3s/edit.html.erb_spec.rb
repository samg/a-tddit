require 'rails_helper'

RSpec.describe "bar3s/edit", type: :view do
  before(:each) do
    @bar3 = assign(:bar3, Bar3.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar3 form" do
    render

    assert_select "form[action=?][method=?]", bar3_path(@bar3), "post" do

      assert_select "input[name=?]", "bar3[foo1]"

      assert_select "input[name=?]", "bar3[foo2]"

      assert_select "input[name=?]", "bar3[foo3]"

      assert_select "input[name=?]", "bar3[foo4]"

      assert_select "textarea[name=?]", "bar3[foo5]"
    end
  end
end
