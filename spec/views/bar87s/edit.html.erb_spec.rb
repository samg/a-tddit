require 'rails_helper'

RSpec.describe "bar87s/edit", type: :view do
  before(:each) do
    @bar87 = assign(:bar87, Bar87.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar87 form" do
    render

    assert_select "form[action=?][method=?]", bar87_path(@bar87), "post" do

      assert_select "input[name=?]", "bar87[foo1]"

      assert_select "input[name=?]", "bar87[foo2]"

      assert_select "input[name=?]", "bar87[foo3]"

      assert_select "input[name=?]", "bar87[foo4]"

      assert_select "textarea[name=?]", "bar87[foo5]"
    end
  end
end
