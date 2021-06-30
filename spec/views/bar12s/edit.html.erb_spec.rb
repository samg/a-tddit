require 'rails_helper'

RSpec.describe "bar12s/edit", type: :view do
  before(:each) do
    @bar12 = assign(:bar12, Bar12.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar12 form" do
    render

    assert_select "form[action=?][method=?]", bar12_path(@bar12), "post" do

      assert_select "input[name=?]", "bar12[foo1]"

      assert_select "input[name=?]", "bar12[foo2]"

      assert_select "input[name=?]", "bar12[foo3]"

      assert_select "input[name=?]", "bar12[foo4]"

      assert_select "textarea[name=?]", "bar12[foo5]"
    end
  end
end
