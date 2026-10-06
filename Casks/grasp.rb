cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.10.8"
  sha256 arm:   "6b7c405adb9c1a4bf02b86146fad0cea31b7ea604961e5b049f88240f987b030",
         intel: "cdb21f660e07320b0e1f02ff4007d55a7549d22436444c8e70b4631542e97f20"

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
