cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.16.14"
  sha256 arm:   "63227e95b78ff31f024c34b4097c41d16fd50ba5de01df9457eaa43e0d2d686d",
         intel: "dccc5baf09d79e6ff46b5f704b0af1a6fd01113148f7e2c2a8db78ca73bf8a43"

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
