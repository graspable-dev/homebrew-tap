cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.16.13"
  sha256 arm:   "bf32e1571f24b578733e3957ba40fa8bc67d8c030299c23fbd4a68ea0eec0898",
         intel: "4cdac94bf905af44397b57342994edf1794b13920c96b801e4c3e44f6346891a"

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
