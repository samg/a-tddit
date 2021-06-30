require 'rails_helper'

RSpec.describe "bar10s/edit", type: :view do
  before(:each) do
    @bar10 = assign(:bar10, Bar10.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar10 form" do
    render

    assert_select "form[action=?][method=?]", bar10_path(@bar10), "post" do

      assert_select "input[name=?]", "bar10[foo1]"

      assert_select "input[name=?]", "bar10[foo2]"

      assert_select "input[name=?]", "bar10[foo3]"

      assert_select "input[name=?]", "bar10[foo4]"

      assert_select "textarea[name=?]", "bar10[foo5]"
    end
  end
end
