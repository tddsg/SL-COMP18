# To compile all tools:

- Run ./make-all.sh

# To translate test cases to songbird format:

  cd slcomp18tools
  ./compile-benchmark.sh songbird ../../bench/qf_shid_sat

# Merge with upstream of SL-COMP18:

  git fetch upstream
  git checkout master
  git merge upstream/master
