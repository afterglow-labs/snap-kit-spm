# Swift Package Manager for Snap Kit

## Introduction

Starting with the 2.0.0 release, Snap Kit officially supports installation via [Swift
Package Manager](https://swift.org/package-manager/).


### Installing from Xcode

Add a package by selecting `File` → `Add Packages…` in Xcode’s menu bar.


Search for the Snap Kit SDK using the repo's URL:
```console
https://github.com/afterglow-labs/snap-kit-spm
```

Then, select **Add Package**.

### Choosing Products

This fork exposes Snap Kit as separate Swift Package products so apps only link
the modules they use:

- `SnapSDK`: Core SDK only. Use this for Camera Kit integrations that only need
  `SCSDKCoreKit`.
- `SnapSDKLoginKit`: Core SDK plus Login Kit.
- `SnapSDKCreativeKit`: Core SDK plus Creative Kit.
- `SnapSDKAll`: Core SDK, Login Kit, and Creative Kit.
