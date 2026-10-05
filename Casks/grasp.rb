cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.10.5"
  sha256 arm:   "2112fc35b9f252a4b4c83156729eb1bfa3816faa1d6d2db0dbfe69bf462b566a",
         intel: "fd82efb9fdb372f324b37c0a569cced22125063c0e4c5aae0c41301200b57fc6"

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
