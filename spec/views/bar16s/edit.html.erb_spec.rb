require 'rails_helper'

RSpec.describe "bar16s/edit", type: :view do
  before(:each) do
    @bar16 = assign(:bar16, Bar16.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar16 form" do
    render

    assert_select "form[action=?][method=?]", bar16_path(@bar16), "post" do

      assert_select "input[name=?]", "bar16[foo1]"

      assert_select "input[name=?]", "bar16[foo2]"

      assert_select "input[name=?]", "bar16[foo3]"

      assert_select "input[name=?]", "bar16[foo4]"

      assert_select "textarea[name=?]", "bar16[foo5]"
    end
  end
end
