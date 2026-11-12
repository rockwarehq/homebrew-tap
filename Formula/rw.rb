# Made by rockwarehq/rockware-cli's scripts/formula.ts. Don't edit by hand.
class Rw < Formula
  desc "Rockware on the command line"
  homepage "https://github.com/rockwarehq/rockware-cli"
  version "0.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/rockwarehq/rockware-cli/releases/download/v0.2.0/rw-0.2.0-darwin-arm64.tar.gz"
      sha256 "a0cdc1f127ea9716591d0ee198a6091ad05c43ac15b2ee9554eec2bb0b4c0eb7"
    end
    on_intel do
      url "https://github.com/rockwarehq/rockware-cli/releases/download/v0.2.0/rw-0.2.0-darwin-x64.tar.gz"
      sha256 "fc2204d70cfa971474b0ae23033a7fda03d566969ee01ec006dffbda7a5a8ac7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rockwarehq/rockware-cli/releases/download/v0.2.0/rw-0.2.0-linux-arm64.tar.gz"
      sha256 "3cdef5fdd2691b770821b694ccca43129f048f1259430663015b8ea6bdb52e02"
    end
    on_intel do
      url "https://github.com/rockwarehq/rockware-cli/releases/download/v0.2.0/rw-0.2.0-linux-x64.tar.gz"
      sha256 "b871d3bc97285cba14dcc0843993929076cee333241fb46256e018e0c2d27c8f"
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
