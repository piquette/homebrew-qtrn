class Qtrn < Formula
  desc "qtrn is a tool for printing financial markets data to the console and writing data to files."
  homepage "https://github.com/piquette/qtrn"
  url "https://github.com/piquette/qtrn/releases/download/v0.0.1/qtrn_0.0.1_darwin_amd64.tar.gz"
  version "0.0.1"
  sha256 "42dee734b2dc1b8b48aa56d1097ada700cfdc47ca62907a520dd1e56f8175c4c"

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
    <key>ProgramArguments</key>
    <array>
      <string>#{opt_bin}/qtrn</string>
      <string>-port</string>
      <string>12111</string>
    </array>
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
