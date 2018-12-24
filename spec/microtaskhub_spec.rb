require_relative '../microtaskhub'
require 'timeout'

RSpec.describe Microtaskhub do

  describe 'create' do
    context 'request is succeed' do
      it 'returns success message' do
        microtaskhub = Microtaskhub.new
        allow(microtaskhub).to receive(:http_method) { {'header' => 200, 'body' => 'test is created'} }
        expect(microtaskhub.create('test')).to eq '200 : test is created'
      end
    end
    context 'timeout' do
      it 'returns timeout message' do
        microtaskhub = Microtaskhub.new
        allow(microtaskhub).to receive(:http_method) { raise Timeout::Error.new }

        expect(microtaskhub.create('test')).to eq '408 : Request Timeout.'
      end
    end
    context 'something error happen'
  end

  describe 'destroy' do
    context 'request is succeed' do
      it 'returns success message' do
        microtaskhub = Microtaskhub.new
        allow(microtaskhub).to receive(:http_method) { {'header' => 204, 'body' => 'No Content.'} }
        expect(microtaskhub.destroy('test')).to eq '204 : No Content.'
      end
    end
    context 'timeout'
    context 'something error happen'
  end

end