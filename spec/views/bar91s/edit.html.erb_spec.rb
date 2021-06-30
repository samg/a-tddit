require 'rails_helper'

RSpec.describe "bar91s/edit", type: :view do
  before(:each) do
    @bar91 = assign(:bar91, Bar91.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar91 form" do
    render

    assert_select "form[action=?][method=?]", bar91_path(@bar91), "post" do

      assert_select "input[name=?]", "bar91[foo1]"

      assert_select "input[name=?]", "bar91[foo2]"

      assert_select "input[name=?]", "bar91[foo3]"

      assert_select "input[name=?]", "bar91[foo4]"

      assert_select "textarea[name=?]", "bar91[foo5]"
    end
  end
end
