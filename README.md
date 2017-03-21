# Chocolatey Packages for ROS2 Dependencies

This repository houses some basic Chocolatey packages for ROS2 external dependencies.
Currently [TinyXML] and [Eigen 3].

## Installing packages

These packages can be installed by specifying the full url to the latest package version published to this repository.

From a Windows command prompt or PowerShell console with Administrator privileges:
```
choco install https://github.com/ros2/choco-packages/releases/download/latest/eigen-3.3.3.nupkg
```

## Building packages

Each of the packages has a manual build process outlined in the package specific README file.
The instructions there should get you started.

## Uploading packages

The packages here don't get uploaded to a central repository, instead they're published using GitHub Releases.

To upload a new release, follow these general steps:

- Make any desired changes to the package contents.
The contents are not version controlled by this repository and Chocolatey lacks the concept of a package revision as far as I can discern, so these changes are not tracked here.
If you have an update that consists only of altered package contents, create an empty commit describing the change.
For example
```
git commit --allow-empty -m "Rebuild TinyXML for 64-bit Windows."
```

- Make any updates to the package configuration and commit the changes.

- Create a git tag in order to publish your new package version.
```
git tag 2017-03-21-1
```

- Push your changes and the new tag to GitHub
```
git push
git push --tags
```

- Open the tag on the GitHub releases view and attach your package as a binary.

- Check the previous release and download the other packages from it.

- Attach all other packages as binaries to your release.

In order for every package user to have the same url prefix for their downloads, every nupkg file needs to be added to each release.
This is the chief caveat of the single-repository approach.
But if the number of packages or revisions begins to climb,it's a signal that we should revisit automating this process better.

- Publish the release.
The Pre-release option is unset by default but if you're tempted to set it, bear in mind that prereleases don't update the "latest" release alias.


[TinyXML]: http://www.grinninglizard.com/tinyxml/
[Eigen 3]: http://eigen.tuxfamily.org