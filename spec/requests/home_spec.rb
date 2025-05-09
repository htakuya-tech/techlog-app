require 'rails_helper'

RSpec.describe 'Home', type: :system do
  before do
    driven_by(:rack_test)
  end

  describe 'トップページの検証' do
    it 'TechLog という文字列が表示される' do
      visit '/'

      expect(page).to have_content('TechLog')
    end
  end
end
