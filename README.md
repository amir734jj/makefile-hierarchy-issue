# makefile-hierarchy-issue
Re-producible example showing the issue with hierarchical Makefile


```sh
// This fails to copy over foo.text because it needs to be created first
cd inner/nested \
  && make commit.install

// But this works
cd inner/nested \
  && make foo.txt \
  && make commit.install
```
