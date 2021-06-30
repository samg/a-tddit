require 'rails_helper'

RSpec.describe "bar41s/edit", type: :view do
  before(:each) do
    @bar41 = assign(:bar41, Bar41.create!(
      foo1: "MyString",
      foo2: "9.99",
      foo3: 1,
      foo4: false,
      foo5: "MyText"
    ))
  end

  it "renders the edit bar41 form" do
    render

    assert_select "form[action=?][method=?]", bar41_path(@bar41), "post" do

      assert_select "input[name=?]", "bar41[foo1]"

      assert_select "input[name=?]", "bar41[foo2]"

      assert_select "input[name=?]", "bar41[foo3]"

      assert_select "input[name=?]", "bar41[foo4]"

      assert_select "textarea[name=?]", "bar41[foo5]"
    end
  end
end
