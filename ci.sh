# Licensed under the Apache-2.0 license

#!/bin/bash

set -e

# Build and test
cargo build
cargo install cross
cross test --target riscv64gc-unknown-linux-gnu

# Check formatting
cargo fmt -- --check

# Run Clippy
cargo clippy -- -D warnings

echo "CI checks passed successfully."