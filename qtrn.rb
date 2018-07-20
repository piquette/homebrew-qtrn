class Qtrn < Formula
  desc "qtrn is a tool for printing financial markets data to the console and writing data to files."
  homepage "https://github.com/piquette/qtrn"
  url "https://github.com/piquette/qtrn/releases/download/v0.0.3/qtrn_0.0.3_darwin_amd64.tar.gz"
  version "0.0.3"
  sha256 "828f3b91b5953af79be3cd4b1e782bb2d863f85fe78a12cf8e29244a234bc24b"

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
