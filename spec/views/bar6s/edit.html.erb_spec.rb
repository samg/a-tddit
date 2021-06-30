require 'rails_helper'

RSpec.describe "bar6s/edit", type: :view do
  before(:each) do
    @bar6 = assign(:bar6, Bar6.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar6 form" do
    render

    assert_select "form[action=?][method=?]", bar6_path(@bar6), "post" do

      assert_select "input[name=?]", "bar6[foo1]"

      assert_select "input[name=?]", "bar6[foo2]"

      assert_select "input[name=?]", "bar6[foo3]"

      assert_select "input[name=?]", "bar6[foo4]"

      assert_select "textarea[name=?]", "bar6[foo5]"
    end
  end
end
