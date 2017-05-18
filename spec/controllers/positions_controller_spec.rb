require 'spec_helper'

RSpec.describe PositionsController :controller do
  describe 'GET #index' do
    it 'populate an array of all positions' do
      position1 = FactoryGirl.create(:position)
      position2 = FactoryGirl.create(:position)

      get :index

      expect(assigns(:positions)).to match.array(position1, position2)

    end
    
    it 'render index view' do
      get :index
      expect(response).to render_template :index
    end
  end
end
