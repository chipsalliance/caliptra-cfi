#!/bin/bash

set -e

# Build and test
cd derive
cargo build
cd ..
cd lib
cargo build
cargo test


# Check formatting
cargo fmt -- --check

# Run Clippy
cargo clippy -- -D warnings

echo "CI checks passed successfully."