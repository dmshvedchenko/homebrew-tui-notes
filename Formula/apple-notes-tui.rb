class AppleNotesTui < Formula
  desc "Keyboard-first terminal UI for Apple Notes"
  homepage "https://github.com/dmshvedchenko/apple-notes-tui"
  url "https://github.com/dmshvedchenko/apple-notes-tui/releases/download/v0.1.1/apple-notes-tui-0.1.1-aarch64-apple-darwin.tar.gz"
  sha256 "2c1565500d4edaa77f5091cae2ac6130b1eb72486981858fbf8fd2419d3f6003"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "apple-notes-tui"
  end

  test do
    assert_match "apple-notes-tui #{version}", shell_output("#{bin}/apple-notes-tui --version")
  end
end
