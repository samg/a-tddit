require 'rails_helper'

RSpec.describe "bar79s/edit", type: :view do
  before(:each) do
    @bar79 = assign(:bar79, Bar79.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar79 form" do
    render

    assert_select "form[action=?][method=?]", bar79_path(@bar79), "post" do

      assert_select "input[name=?]", "bar79[foo1]"

      assert_select "input[name=?]", "bar79[foo2]"

      assert_select "input[name=?]", "bar79[foo3]"

      assert_select "input[name=?]", "bar79[foo4]"

      assert_select "textarea[name=?]", "bar79[foo5]"
    end
  end
end
