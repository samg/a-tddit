require 'rails_helper'

RSpec.describe "bar26s/edit", type: :view do
  before(:each) do
    @bar26 = assign(:bar26, Bar26.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar26 form" do
    render

    assert_select "form[action=?][method=?]", bar26_path(@bar26), "post" do

      assert_select "input[name=?]", "bar26[foo1]"

      assert_select "input[name=?]", "bar26[foo2]"

      assert_select "input[name=?]", "bar26[foo3]"

      assert_select "input[name=?]", "bar26[foo4]"

      assert_select "textarea[name=?]", "bar26[foo5]"
    end
  end
end
