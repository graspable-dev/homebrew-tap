cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.16.3"
  sha256 arm:   "048ffd6083e06a9ca934cb92f91d14c4440c91d755d46fb6b12d962f3781935b",
         intel: "8ba8bc0fbce831e8006459060a761188a8dd4ed08942e5cd17211628f93d2c16"

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
