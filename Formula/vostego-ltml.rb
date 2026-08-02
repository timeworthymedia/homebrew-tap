class VostegoLtml < Formula
  desc "Standalone LanguageTool manager, background service supervisor, and app auto-configurator"
  homepage "https://vostego.com"
  version "0.9.0-beta"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/timeworthymedia/vostego-ltml/releases/download/v0.9.0-beta/vostego-ltml-v0.9.0-beta-darwin-arm64.tar.gz"
    sha256 "PLACEHOLDER"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/timeworthymedia/vostego-ltml/releases/download/v0.9.0-beta/vostego-ltml-v0.9.0-beta-darwin-amd64.tar.gz"
    sha256 "PLACEHOLDER"
  elsif OS.linux?
    url "https://github.com/timeworthymedia/vostego-ltml/releases/download/v0.9.0-beta/vostego-ltml-v0.9.0-beta-linux-amd64.tar.gz"
    sha256 "PLACEHOLDER"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "vostego-ltml-darwin-arm64" => "vostego-ltml"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "vostego-ltml-darwin-amd64" => "vostego-ltml"
    elsif OS.linux?
      bin.install "vostego-ltml-linux-amd64" => "vostego-ltml"
    end
  end

  test do
    system "#{bin}/vostego-ltml", "-version"
  end
end
