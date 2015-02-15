require 'rails_helper'

RSpec.describe "quotations/show", type: :view do
  before(:each) do
    @quotation = assign(:quotation, Quotation.create!(
      :content => "MyText",
      :source_url => "MyText",
      :author => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
