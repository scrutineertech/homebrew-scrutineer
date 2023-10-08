class Scrutineer < Formula
  desc "Sign and verify git commits"
  homepage "https://scrutineer.tech"
  url "https://github.com/scrutineertech/scrutineer.git",
	tag: "v0.1.0",
	revision: "af4473e2043954cab2bb334a1fe6cefcf4a7c261"
  version "0.1.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=v#{version}"), "cmd/cli/main.go"
  end

  test do
    system "true"
  end
end
