cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.20.9"
  sha256 arm:   "02d0d405b5a616054e3614ea9b3022b1f62a89b3f1160e53c230a21b06716c63",
         intel: "aac7f77a9003632a51e8b778d604721922d6bc5785a61684d0c387fa36066a04"

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
