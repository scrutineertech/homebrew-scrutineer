class Scrutineer < Formula
  desc "Sign and verify git commits"
  homepage "https://scrutineer.tech"
  url "https://github.com/scrutineertech/scrutineer.git",
	tag: "v0.1.4",
	revision: "19a9e213acaa06695ded183fe080ecc28bb4b6db"
  version "0.1.4"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.Version=v#{version}"), "cmd/scrutineer/main.go"
  end

  test do
    system "true"
  end
end
