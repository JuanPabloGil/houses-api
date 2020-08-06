require 'rails_helper'

RSpec.describe 'test api registration routes', type: :request do
  it 'should return success if post /signed_up is valid ' do
    expect { sign_up_user }.to change { User.count }.by(1)
    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body)['status']).to eq('created')
  end

  it 'should return invalid-token if user was created with incorect info' do
    expect { sign_up_user_invalid }.to change { User.count }.by(0)
    expect(JSON.parse(response.body)['status']).to eq(nil)
  end
end
