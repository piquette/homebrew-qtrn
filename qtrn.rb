# This file was generated by GoReleaser. DO NOT EDIT.
class Qtrn < Formula
  desc "qtrn is a tool for printing financial markets data to the console and writing data to files."
  homepage "https://github.com/piquette/qtrn"
  version "0.0.8"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/piquette/qtrn/releases/download/v0.0.8/qtrn_0.0.8_darwin_amd64.tar.gz"
    sha256 "82409dca0efaa16cc852a428537bd4bf7e4758d32d87e5f58bac5f56cf8029ce"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/piquette/qtrn/releases/download/v0.0.8/qtrn_0.0.8_linux_amd64.tar.gz"
      sha256 "9bbdc12ecbd8f279c6ef7b9f8b9b250c54d3934999a8cd773725a51658cf9f13"
    end
  end

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
