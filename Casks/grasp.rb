cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.19.9"
  sha256 arm:   "0a58533ec951749461ec19f09ff3f9e0652242949e7a5894bf1b3e96b89ecd45",
         intel: "f3ef2b397086f25292aa1bf2050cd8dba47ad0f13455c5e91cb218d679f42f5d"

  url "https://downloads.graspable.dev/releases/#{version}/grasp-#{version}-darwin-#{arch}.tar.gz",
      verified: "downloads.graspable.dev/"
  name "grasp"
  desc "Build WebXR and 3D projects with Graspable from the command-line"
  homepage "https://graspable.dev/docs/cli"

  livecheck do
    url "https://downloads.graspable.dev/grasp/latest.txt"
    regex(/\A(\d+(?:\.\d+)+)$/i)
  end

  binary "grasp/grasp"

  zap trash: "~/.graspable/cli"
end
