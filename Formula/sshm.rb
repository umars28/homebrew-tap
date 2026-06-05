class Sshm < Formula
  desc "SSHM TUI"
  homepage "https://github.com/umars28/sshm"
  url "https://github.com/umars28/sshm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "299b7bf7e5b25682f3a777a57fb6434317d8a6f57040f62da85bc2252901b03a"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/sshm", "--help"
  end
end
