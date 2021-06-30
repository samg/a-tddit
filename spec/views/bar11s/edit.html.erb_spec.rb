require 'rails_helper'

RSpec.describe "bar11s/edit", type: :view do
  before(:each) do
    @bar11 = assign(:bar11, Bar11.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar11 form" do
    render

    assert_select "form[action=?][method=?]", bar11_path(@bar11), "post" do

      assert_select "input[name=?]", "bar11[foo1]"

      assert_select "input[name=?]", "bar11[foo2]"

      assert_select "input[name=?]", "bar11[foo3]"

      assert_select "input[name=?]", "bar11[foo4]"

      assert_select "textarea[name=?]", "bar11[foo5]"
    end
  end
end
