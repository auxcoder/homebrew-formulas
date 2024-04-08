class NeovimNightly < Formula
  desc "Ambitious Vim-fork focused on extensibility and agility"
  homepage "https://neovim.io/"
  url "https://github.com/neovim/neovim/releases/download/nightly/nvim-macos-x86_64.tar.gz"
  version "nightly"
  sha256 "de3311374a9138dbb0a7e2b4b47671ed9436cca77fc38dd09286dbf1a3a0346b"

  def install
    bin.install "bin/nvim"
  end

  test do
    assert_match "NVIM", shell_output("#{bin}/nvim --version")
  end
end
