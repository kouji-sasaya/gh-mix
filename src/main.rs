fn main() {
    // ...existing code...
    let args: Vec<String> = std::env::args().collect();
    if args.len() < 2 {
        println!("Usage: gh sasaya rust <command> [args]");
        return;
    }

    let command = args[1].as_str();
    match command {
        "greet" => greet(),
        _ => {
            println!("Unknown command: {}", command);
            println!("Usage: gh sasaya rust <command> [args]");
        }
    }
    // ...existing code...
}

fn greet() {
    println!("Hello rust!");
}
