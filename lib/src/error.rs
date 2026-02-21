// Licensed under the Apache-2.0 license.

#[derive(Debug, Copy, Clone, Eq, PartialEq)]
pub struct CfiError(pub u32);

impl CfiError {
    pub const ROM_CFI_PANIC_ASSERT_EQ_FAILURE: Self = Self(0x01040055);
}

impl From<CfiError> for u32 {
    fn from(val: CfiError) -> Self {
        val.0
    }
}

pub type CfiResult<T> = core::result::Result<T, CfiError>;
