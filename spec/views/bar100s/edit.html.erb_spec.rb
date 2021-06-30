require 'rails_helper'

RSpec.describe "bar100s/edit", type: :view do
  before(:each) do
    @bar100 = assign(:bar100, Bar100.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar100 form" do
    render

    assert_select "form[action=?][method=?]", bar100_path(@bar100), "post" do

      assert_select "input[name=?]", "bar100[foo1]"

      assert_select "input[name=?]", "bar100[foo2]"

      assert_select "input[name=?]", "bar100[foo3]"

      assert_select "input[name=?]", "bar100[foo4]"

      assert_select "textarea[name=?]", "bar100[foo5]"
    end
  end
end
