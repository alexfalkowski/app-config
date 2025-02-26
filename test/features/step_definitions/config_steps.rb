# frozen_string_literal: true

When('we verify {string} configuration') do |app|
  @config = YAML.load_file("../#{app}/production/server.yaml")
end

Then('we should have the following values:') do |table|
  table.hashes.each do |row|
    key = row['property'].split('.')

    expect(@config.dig(*key)).to eq(row['value'])
  end
end
