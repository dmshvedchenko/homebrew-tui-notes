class AppleNotesTui < Formula
  desc "Keyboard-first terminal UI for Apple Notes"
  homepage "https://github.com/dmshvedchenko/apple-notes-tui"
  url "https://github.com/dmshvedchenko/apple-notes-tui/releases/download/v0.1.0/apple-notes-tui-0.1.0-aarch64-apple-darwin.tar.gz"
  sha256 "97dba5762ba8e040f10eb05d6378cb3f44b35d74a4eb30f98a374c01ea2f7197"
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
