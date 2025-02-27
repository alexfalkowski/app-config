# frozen_string_literal: true

When('we verify {string} configuration') do |app|
  @config = YAML.load_file("../#{app}/production/server.yaml")
end

Then('we should have the following values:') do |table|
  table.hashes.each do |row|
    key = row['property'].split('.')
    kind = row['kind']

    expect(@config.dig(*key)).to send(kind, row['value'])
  end
end
