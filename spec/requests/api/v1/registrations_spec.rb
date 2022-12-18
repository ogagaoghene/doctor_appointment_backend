require 'swagger_helper'

RSpec.describe 'api/v1/registrations', type: :request, document_response: true do
  path '/api/v1/registrations' do
    post('create registration') do
      tags 'Registrations'
      consumes 'application/json'
      parameter name: :registration, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          email: { type: :string },
          password: { type: :string },
          password_digest: { type: :string }
        },
        required: %w[name email password password_digest]
      }
      response '200', 'registration created' do
        let(:registration) { { name: 'Ogaga', email: 'ogaga', password: 'ogaga', password_digest: 'ogaga' } }
        run_test!
      end
      response '422', 'invalid request' do
        let(:encounter) { { name: 'Ogaga' } }
        run_test!
      end
    end
  end
end
