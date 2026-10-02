cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.41"
  sha256 arm:   "cf8b165ef4d0a8716a1fb3ccf3806d02817efa7c7dec5eef226a811642c75e83",
         intel: "ba3228330277a1d737ab53a6e3194ce7b838cc3a0d1413cf8dadab33b2d0568b"

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
