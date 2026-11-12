# Made by rockwarehq/rockware-cli's scripts/formula.ts. Don't edit by hand.
class Rw < Formula
  desc "Rockware on the command line"
  homepage "https://github.com/rockwarehq/rockware-cli"
  version "0.2.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/rockwarehq/rockware-cli/releases/download/v0.2.1/rw-0.2.1-darwin-arm64.tar.gz"
      sha256 "6ada27cc2e592aa8eecb124f318a118c565c6857dea6f833a95dc9fb6e2a6965"
    end
    on_intel do
      url "https://github.com/rockwarehq/rockware-cli/releases/download/v0.2.1/rw-0.2.1-darwin-x64.tar.gz"
      sha256 "b849ec1c60daaf9a030c5b5ec8e3a969670922bb35c657606d171194df714822"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rockwarehq/rockware-cli/releases/download/v0.2.1/rw-0.2.1-linux-arm64.tar.gz"
      sha256 "426318fa8c97d5e4cb667498c2fd60fed89b1626f548a4ce7106e6bd1939a61a"
    end
    on_intel do
      url "https://github.com/rockwarehq/rockware-cli/releases/download/v0.2.1/rw-0.2.1-linux-x64.tar.gz"
      sha256 "a1ab93d159569b92a3e9d77f2c2a136e80595aca9a8b7c3e35304068edbbaaf5"
    end
  end

  def install
    bin.install "rw"
    prefix.install "LICENSE", "THIRD_PARTY_NOTICES"
    generate_completions_from_executable(bin/"rw", "completion")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rw --version")
  end
end
