class Xchtmlreport < Formula
  desc "XCTestHTMLReport: Xcode-like HTML report for Unit and UI Tests"
  homepage "https://github.com/saadkalim-earnin/XCTestHTMLReport.git"
  url "https://github.com/saadkalim-earnin/XCTestHTMLReport/releases/download/3.0.0/xchtmlreport-3.0.0.zip"
  sha256 "4424d673d578e84e67fd96afa53a5bd3e80ec7acade65365a123af358c77b47e"
  head "https://github.com/saadkalim-earnin/XCTestHTMLReport.git", :branch => "develop"

  def install
    system "swift build --disable-sandbox -c release"
    bin.install ".build/release/xchtmlreport"
  end
end
