cask "grasp" do
  arch arm: "arm64", intel: "x64"

  version "0.9.31"
  sha256 arm:   "ff1fd0068bc36dd182be163cb57dd2c15348bbf097134dabcdf4f300fac136e2",
         intel: "e307cf2bfdeb5656af9a97319e3c349b17ea1e7992f7327e8981afa028447f06"

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
