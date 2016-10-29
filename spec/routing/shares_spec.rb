require 'rails_helper'

RSpec.describe 'routes for shares' do
  it 'routes GET /shares to the shares#index action' do
    expect(get('/shares')).to route_to('shares#index')
  end

  it 'routes GET /shares/:id to the shares#show action' do
    expect(get('/shares/1')).to route_to(
      controller: 'shares',
      action: 'show',
      id: '1'
    )
  end

  # this is more similar to index than to show, because we do not need
  # to append an id to the URL when requesting a POST
  it 'routes POST /shares to the shares#create action' do
    expect(post('/shares')).to route_to('shares#create')
  end

  it 'routes PATCH /shares/:id to the shares#update action' do
    expect(patch('/shares/1')).to route_to(
      controller: 'shares',
      action: 'update',
      id: '1'
    )
  end

  it 'routes DELETE /shares/:id to the shares#destroy action' do
    expect(delete('/shares/1')).to route_to(
      controller: 'shares',
      action: 'destroy',
      id: '1'
    )
  end
end
