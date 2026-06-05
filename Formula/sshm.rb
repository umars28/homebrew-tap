class Sshm < Formula
  desc "SSHM TUI"
  homepage "https://github.com/umars28/sshm"
  url "https://github.com/umars28/sshm.git",
      tag: "v0.1.1"
  head "https://github.com/umars28/sshm.git", branch: "main"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "#{bin}/sshm", "--help"
  end
end
