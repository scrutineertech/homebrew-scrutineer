class Scrutineer < Formula
  desc "Sign and verify git commits"
  homepage "https://scrutineer.tech"
  url "https://github.com/scrutineertech/scrutineer.git",
	tag: "v0.1.5",
	revision: "e00a963c46d48ed911d26b8de830bb681dd75af2"
  version "0.1.5"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=v#{version}"), "cmd/scrutineer/main.go"
  end

  test do
    system "true"
  end
end
