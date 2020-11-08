SwiftChallenge
==============

This is a collection of Swift coding exercises meant to be used for training and
interviewing. Each challenge is contained in its own Swift package and includes
a README with the problem statement and further instructions. There are code
skeletons and unit tests in every package that help you to verify your solution.

Check out the index of challenges below or simply browse the folders in the
repository.

Most of all, have fun and [let me know] about ideas for further challenges to be
added. Currently unimplemented ideas are tracked in [IDEAS.md].

Challenges by Category
----------------------

### Combinatorics

-   [Train Connections]

### Concurrency

-   [Synchronous Dispatch]

### JSON

-   [Date Decoding]
-   [Heterogeneous Date Decoding]
-   [Lenient Array Decoding]

### Other

-   [Meeting Overlap]

### Protocols & Subclasses

-   [Protocol Dispatch]

### Strings

-   [Anagram]
-   [Auto Correction]
-   [Reverse]
-   [Reverse Polish Notation]
-   [Version Sort]

Challenges by Difficulty
------------------------

### Easy

-   [Anagram]
-   [Date Decoding]
-   [Reverse]

### Medium

-   [Auto Correction]
-   [Heterogeneous Date Decoding]
-   [Lenient Array Decoding]
-   [Meeting Overlap]
-   [Protocol Dispatch]
-   [Reverse Polish Notation]
-   [Synchronous Dispatch]
-   [Version Sort]

### Hard

-   [Train Connections]

Contributing
------------

Want to contribute? Great!

### Git(?=\$\|Hub\|Lab)

The git setup is a bit unusual in that I'm self-hosting the main repository with
mirrors on [GitHub] and [GitLab]. You cannot engage on the main repository
directly because that would require me to set up a user account for you on my
self-hosted instance first. However, you can open issues or pull / merge
requests on one of the mirrors and I'll sync things with the main repository. If
you're old-school, you can also just send me patches via email. 😄

### Creating a New Challenge

#### Create the Package

To create a package for a new challenge, run the scaffolding script, e.g.

    ./scaffold Strings/WarpSort

#### Add the Package to the Workspace

Once you have the package, add it to the workspace. Since Xcode tends to mess up
groups and paths, this step is best done by manually editing
`SwiftChallenge.xcworkspace/contents.xcworkspacedata`.

#### Update the Schemes

Add a dedicated shared scheme for building and testing your package. Also add
the tests in the *All* scheme.

#### Flesh out the Package Contents

Every package should contain a problem statement in its README, at least one
*documented* solution and a battery of unit tests for verification.

#### Normalise Markdown and Regenerate the Main README

We use pandoc to enforce a consistent markdown format across the project. Run
the `normalize-markdown` script to reformat all READMEs. Afterwards regenerate
the main README by running the `regenerate-readme` script. This will
automatically list your new package.

License
-------

SwiftChallenge is licensed under the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or (at your
option) any later version.

  [let me know]: mailto:n0-0ne+swiftchallenge@mailbox.org
  [IDEAS.md]: IDEAS.md
  [Train Connections]: Combinatorics/TrainConnections
  [Synchronous Dispatch]: Concurrency/SynchronousDispatch
  [Date Decoding]: JSON/DateDecoding
  [Heterogeneous Date Decoding]: JSON/HeterogeneousDateDecoding
  [Lenient Array Decoding]: JSON/LenientArrayDecoding
  [Meeting Overlap]: Other/MeetingOverlap
  [Protocol Dispatch]: Protocols%20&%20Subclasses/ProtocolDispatch
  [Anagram]: Strings/Anagram
  [Auto Correction]: Strings/AutoCorrection
  [Reverse]: Strings/Reverse
  [Reverse Polish Notation]: Strings/ReversePolishNotation
  [Version Sort]: Strings/VersionSort
  [GitHub]: https://github.com/Johennes/swiftchallenge
  [GitLab]: https://gitlab.com/cherrypicker/swiftchallenge
