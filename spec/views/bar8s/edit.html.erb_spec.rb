require 'rails_helper'

RSpec.describe "bar8s/edit", type: :view do
  before(:each) do
    @bar8 = assign(:bar8, Bar8.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar8 form" do
    render

    assert_select "form[action=?][method=?]", bar8_path(@bar8), "post" do

      assert_select "input[name=?]", "bar8[foo1]"

      assert_select "input[name=?]", "bar8[foo2]"

      assert_select "input[name=?]", "bar8[foo3]"

      assert_select "input[name=?]", "bar8[foo4]"

      assert_select "textarea[name=?]", "bar8[foo5]"
    end
  end
end
