cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.16.4"
  sha256 arm:   "0ca00efb16ccedde953299184a2477d3823cb079feadf89ef592dd7dbb777c5f",
         intel: "701a282c4d4f86f4036656ba94110699f714712f16652d676adc052317f9beec"

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
