require 'rails_helper'

describe CreateLink do
  subject { described_class.new(params) }

  let(:params) { { target_url: 'http://google.com' } }

  it 'creates a new Link' do
    expect { subject.call }.to change { Link.count }.by(1)
  end

  it 'returns created Link' do
    expect(subject.call).to be_a(Link)
  end

  it 'stores provided URL' do
    expect(subject.call.target_url).to eq(params[:target_url])
  end

  it 'stores generates a token' do
    expect(subject.call.token).to be_present
  end

  context 'when URL is invalid' do
    let(:params) { { target_url: 'qwe123' } }

    it 'returns invalid Link instance' do
      expect(subject.call).to be_invalid
    end
  end
end
