#!/bin/sh

while read -r c; do
  cargo install "$c"
done < cargo-crates
