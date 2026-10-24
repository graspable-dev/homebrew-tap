cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.19.1"
  sha256 arm:   "2920ced1c310ee25f6befcccf9140a1e5a24ac1b13b7c2be9a9e53bd9c8b9074",
         intel: "e99459871c1be8dc3a258e4de73d40b5b9a61677823ce4e97bb9b9ddf887ebcd"

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
