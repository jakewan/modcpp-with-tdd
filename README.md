# Example Code

This is a meta-repository for code examples from the book, [Modern C++ Programming With Test-Driven Develoment](https://pragprog.com/titles/lotdd/modern-c-programming-with-test-driven-development/).

Some updates I've made...

## Use Latest GoogleTest

GoogleTest has subsumed GoogleMock. Rather than referencing old versions of those components, I chose to update the tutorial code to use the latest release of GoogleTest.

Clone the repo. Checkout the tag pointing to the latest release:

```bash
mkdir google
cd google
git clone https://github.com/google/googletest.git
cd googletest
git checkout release-1.10.0
```

In a different parent directory, create a GoogleTest build.

```bash
cd <some other parent director>
mkdir googletest-build
cd googletest-build
cmake <path to googletest repo>
cmake --build .
```

Add GOOGLETEST_HOME and GOOGLETEST_BUILD environment variables to your shell setup. That looks like this on my computer:

```bash
export GOOGLETEST_HOME=$HOME/Documents/github/google/googletest
export GOOGLETEST_BUILD=$HOME/Documents/github/jakewan/googletest-build
```

These environment variables correspond to changes that I made to c2's CMakeLists.txt file.

Now things should compile from the root directory of the meta-repo.

```bash
make c2-build
```

And the very minimal test passes:

```bash
build/c2/test
[==========] Running 1 test from 1 test suite.
[----------] Global test environment set-up.
[----------] 1 test from SoundexEncoding
[ RUN      ] SoundexEncoding.RetainsSoleLetterOfOneLetterWord
[       OK ] SoundexEncoding.RetainsSoleLetterOfOneLetterWord (0 ms)
[----------] 1 test from SoundexEncoding (0 ms total)

[----------] Global test environment tear-down
[==========] 1 test from 1 test suite ran. (0 ms total)
[  PASSED  ] 1 test.
```
