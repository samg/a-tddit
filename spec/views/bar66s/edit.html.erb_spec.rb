require 'rails_helper'

RSpec.describe "bar66s/edit", type: :view do
  before(:each) do
    @bar66 = assign(:bar66, Bar66.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar66 form" do
    render

    assert_select "form[action=?][method=?]", bar66_path(@bar66), "post" do

      assert_select "input[name=?]", "bar66[foo1]"

      assert_select "input[name=?]", "bar66[foo2]"

      assert_select "input[name=?]", "bar66[foo3]"

      assert_select "input[name=?]", "bar66[foo4]"

      assert_select "textarea[name=?]", "bar66[foo5]"
    end
  end
end
