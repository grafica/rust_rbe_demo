fn main() {
    // count logical cores this process could try to use
    let num = num_cpus::get();
    println!("CPU count: {}", num);
}
