class AzureservicebusexplorerSrc < Formula
  desc "Azure Service Bus Explorer GUI for macOS"
  homepage "https://github.com/Sandyprc/azureservicebusexplorer-src"
  url "https://github.com/Sandyprc/azureservicebusexplorer-src/releases/download/v1.0.0/azureservicebusexplorer-src-macos.zip"
  sha256 "8b3125a1158076e681dc99e5b71066e078853802252095ce8eac48377923d222"
  license "MIT"

  def install
    prefix.install Dir["azureservicebusexplorer-src.app"]
  end

  def caveats
    <<~EOS
      This is a macOS GUI application.

      To open the app after installation:
        open #{opt_prefix}/azureservicebusexplorer-src.app

      Or move it to your Applications folder manually:
        cp -r #{opt_prefix}/azureservicebusexplorer-src.app /Applications/
    EOS
  end

  test do
    assert_predicate prefix/"azureservicebusexplorer-src.app", :exist?, "App bundle should exist"
  end
end
