module HoneyCheck
  #  auth with github
  #  load gemfile.lock
  #  check versions
  #  print status
  #  Octokit::Client.new

  def get_gemfilelock_on_github
    client = Octokit::Client.new(:access_token => 'd5e45b5d52c4ce250cf49929078c36f0fea82158')
    client.organization_repositories
    client.organization_repositories  'Codeminer42'
    repos = client.organization_repositories  'Codeminer42'
    repo.rels[:contents].get(:uri => {:path => 'Gemfile.lock'}).data
  end

  def find_rails_spec
    require 'bundler'
    gemlock = File.open('Gemfile.lock').read
    parsed_lockfile = Bundler::LockfileParser.new(gemlock)
    parsed_lockfile.specs.find { |spec| spec.name == 'rake' }
  end
end
