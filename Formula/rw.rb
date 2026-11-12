# Made by rockwarehq/rockware-cli's scripts/formula.ts. Don't edit by hand.
class Rw < Formula
  desc "Rockware on the command line"
  homepage "https://github.com/rockwarehq/rockware-cli"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/rockwarehq/rockware-cli/releases/download/v0.1.0/rw-0.1.0-darwin-arm64.tar.gz"
      sha256 "331c6bd5ae33c48ae6f49592372e61743f23241bd8e82b8007eb0ae17b047955"
    end
    on_intel do
      url "https://github.com/rockwarehq/rockware-cli/releases/download/v0.1.0/rw-0.1.0-darwin-x64.tar.gz"
      sha256 "938b954a5bf6bdfd8eee3664b4f3a461286e99241296e4bf9bd23204d986cabd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rockwarehq/rockware-cli/releases/download/v0.1.0/rw-0.1.0-linux-arm64.tar.gz"
      sha256 "2cec93aa52be8c877d200cbcd15d73866163f0b28bbc16ed9eb103d16dadfcc6"
    end
    on_intel do
      url "https://github.com/rockwarehq/rockware-cli/releases/download/v0.1.0/rw-0.1.0-linux-x64.tar.gz"
      sha256 "50cb05d5149543598dfb64af6ae1c3fdae01063cc2d69db5c4c80ff3b96b7c29"
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
