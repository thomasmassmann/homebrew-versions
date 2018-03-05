cask 'firefox' do
  version '47.0.1'

  language 'en', default: true do
    sha256 '37f4b7b6a1fec3eb5225a0d1aed3c3d6979b5cf01748479313f6e384929cdc75'
    'en-US'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/'

  auto_updates false
  conflicts_with cask: []

  app 'Firefox.app', target: '/Users/thomas/Applications/Firefox.app'

  zap trash: [],
      rmdir: []
end
