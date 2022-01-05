# git-recent-branches

Git command plugin to list recently checked-out branches in the current repository.

## Installation

```
make prefix=/path/to/install install
```

### Homebrew

Install from Homebrew tap:

```
brew tap amarshall/formula
brew install git-recent-branches
```

### Fedora COPR

Install from COPR:

```
copr enable amarshall/misc
dnf install git-recent-branches
```

### Nix

Run via Flake:

```nix
nix shell 'github:amarshall/git-recent-branches'
```

For less-ephemeral usage, the Flake provides an `overlay` attribute.

## Usage

```
cd some-git-repo
git recent-branches --help
```
