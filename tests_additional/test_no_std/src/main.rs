#![no_std]
#![no_main]

#[allow(unused_imports)]
use num_math;

use core::panic::PanicInfo;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}
