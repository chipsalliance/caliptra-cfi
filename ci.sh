# Licensed under the Apache-2.0 license

#!/bin/bash

set -e

rustup target add riscv32imc-unknown-none-elf

# Build and test
cargo build
cargo +1.93 install cross@0.2.5
cross test --target riscv64gc-unknown-linux-gnu

# Check formatting
cargo fmt -- --check

# Run Clippy
cargo clippy -- -D warnings

echo "CI checks passed successfully."
