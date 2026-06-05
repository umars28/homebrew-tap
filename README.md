# homebrew-tap for sshm

This repo is a Homebrew tap for `sshm` (source: https://github.com/umars28/sshm).

Steps to publish a release and enable `brew install`:

1. Tag a release in your main repo (replace v0.1.0):

```bash
git tag -a v0.1.0 -m "v0.1.0"
git push origin v0.1.0
```

2. Create a GitHub Release for `v0.1.0` (or use `gh`):

```bash
gh release create v0.1.0 --title "v0.1.0" --notes "Release"
```

3. Compute the tarball SHA256 and update the formula:

```bash
URL="https://github.com/umars28/sshm/archive/refs/tags/v0.1.1.tar.gz"
curl -L -o v0.1.1.tar.gz "$URL"
shasum -a 256 v0.1.0.tar.gz
	# copy the hex into homebrew-tap/Formula/sshm.rb replacing REPLACE_WITH_SHA256
```

4. Commit and push the formula to the tap repo (github.com/yourname/homebrew-tap).

5. Users can install with:

```bash
brew tap yourname/tap
brew install sshm
```

Local testing of the formula (without a remote tap):

```bash
# from this directory
brew install --build-from-source ./Formula/sshm.rb
```
