require 'rails_helper'

RSpec.describe "bar48s/edit", type: :view do
  before(:each) do
    @bar48 = assign(:bar48, Bar48.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar48 form" do
    render

    assert_select "form[action=?][method=?]", bar48_path(@bar48), "post" do

      assert_select "input[name=?]", "bar48[foo1]"

      assert_select "input[name=?]", "bar48[foo2]"

      assert_select "input[name=?]", "bar48[foo3]"

      assert_select "input[name=?]", "bar48[foo4]"

      assert_select "textarea[name=?]", "bar48[foo5]"
    end
  end
end
