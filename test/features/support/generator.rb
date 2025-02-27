# frozen_string_literal: true

RSpec::Matchers.define :generator do |apps|
  match do |values|
    values == apps.split(',').map { |app| { 'name' => app, 'kind' => app } }
  end
end
