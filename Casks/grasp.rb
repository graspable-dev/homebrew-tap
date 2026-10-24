cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.19.5"
  sha256 arm:   "6590d079aa4515e273e2a2286c1a21ab445577426f0f046430ea21a748f32186",
         intel: "d2d1d602424671bf7d3552bbacf89b1f5847d30b73dce7d9076eef0f512e2c56"

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
