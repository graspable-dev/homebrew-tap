cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.15.5"
  sha256 arm:   "4add58e8e89ce685a4d7634d717123fd0fb140129d890bbd02f5962032909400",
         intel: "896e86bff17bb0a487cc0f500471dd39e9acfa560aef15ac9a701c7ff8add0aa"

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
