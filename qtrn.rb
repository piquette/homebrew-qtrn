class Qtrn < Formula
  desc "qtrn is a tool for printing financial markets data to the console and writing data to files."
  homepage "https://github.com/piquette/qtrn"
  url "https://github.com/piquette/qtrn/releases/download/v0.0.4/qtrn_0.0.4_darwin_amd64.tar.gz"
  version "0.0.4"
  sha256 "23e3f0182134837fe5bd60b9f14221ab8cf8d87d9b069f727dff7f461d1e5b59"

  def install
    bin.install "qtrn"
  end

  plist_options :startup => false

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>KeepAlive</key>
    <dict>
      <key>SuccessfulExit</key>
      <false/>
    </dict>
    <key>Label</key>
    <string>#{plist_name}</string>
    <key>RunAtLoad</key>
    <true/>
    <key>WorkingDirectory</key>
    <string>#{var}</string>
    <key>StandardErrorPath</key>
    <string>#{var}/log/qtrn.log</string>
    <key>StandardOutPath</key>
    <string>#{var}/log/qtrn.log</string>
  </dict>
</plist>

  EOS
  end
end
