cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.32"
  sha256 arm:   "bb07d416730ae87b0f31d165be00854a94cbf9d81d1a5f898920cf2efa9cdbd6",
         intel: "a77a9ad1c6ec9f53dd7c69d572cf488611cd42ec8a721c3fac1b3dc539e7aca7"

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
