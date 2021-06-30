require 'rails_helper'

RSpec.describe "bar64s/edit", type: :view do
  before(:each) do
    @bar64 = assign(:bar64, Bar64.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar64 form" do
    render

    assert_select "form[action=?][method=?]", bar64_path(@bar64), "post" do

      assert_select "input[name=?]", "bar64[foo1]"

      assert_select "input[name=?]", "bar64[foo2]"

      assert_select "input[name=?]", "bar64[foo3]"

      assert_select "input[name=?]", "bar64[foo4]"

      assert_select "textarea[name=?]", "bar64[foo5]"
    end
  end
end
