cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.19.8"
  sha256 arm:   "4a9c931228bb80eaa80cbe0a79e4582f5cbc89b268e7b1a5e070efbd75323e6a",
         intel: "d25442c487cbe815fcfec269496d481c4217e55a184bc4d00c1dec7b5429927a"

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
