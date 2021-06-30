require 'rails_helper'

RSpec.describe "bar24s/edit", type: :view do
  before(:each) do
    @bar24 = assign(:bar24, Bar24.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar24 form" do
    render

    assert_select "form[action=?][method=?]", bar24_path(@bar24), "post" do

      assert_select "input[name=?]", "bar24[foo1]"

      assert_select "input[name=?]", "bar24[foo2]"

      assert_select "input[name=?]", "bar24[foo3]"

      assert_select "input[name=?]", "bar24[foo4]"

      assert_select "textarea[name=?]", "bar24[foo5]"
    end
  end
end
