require 'rails_helper'

RSpec.describe "bar14s/edit", type: :view do
  before(:each) do
    @bar14 = assign(:bar14, Bar14.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar14 form" do
    render

    assert_select "form[action=?][method=?]", bar14_path(@bar14), "post" do

      assert_select "input[name=?]", "bar14[foo1]"

      assert_select "input[name=?]", "bar14[foo2]"

      assert_select "input[name=?]", "bar14[foo3]"

      assert_select "input[name=?]", "bar14[foo4]"

      assert_select "textarea[name=?]", "bar14[foo5]"
    end
  end
end
