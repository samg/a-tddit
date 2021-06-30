require 'rails_helper'

RSpec.describe "bar36s/edit", type: :view do
  before(:each) do
    @bar36 = assign(:bar36, Bar36.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar36 form" do
    render

    assert_select "form[action=?][method=?]", bar36_path(@bar36), "post" do

      assert_select "input[name=?]", "bar36[foo1]"

      assert_select "input[name=?]", "bar36[foo2]"

      assert_select "input[name=?]", "bar36[foo3]"

      assert_select "input[name=?]", "bar36[foo4]"

      assert_select "textarea[name=?]", "bar36[foo5]"
    end
  end
end
