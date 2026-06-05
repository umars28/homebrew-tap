class Sshm < Formula
  desc "SSHM TUI"
  homepage "https://github.com/umars28/sshm"
  url "https://github.com/umars28/sshm/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "33c8f92036be1007a754ae120499a6dae37b147a7b055fcd7cef9ba62926902a"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/sshm", "--help"
  end
end
