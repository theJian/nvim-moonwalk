// Keep moving, one step at a time.
#[derive(Debug)]
struct Moonwalk {
    name: String,
    steps: u32,
}

impl Moonwalk {
    fn walk(&mut self, distance: u32) -> String {
        self.steps += distance;
        format!("{}: {} steps", self.name, self.steps)
    }
}

fn main() {
    let mut traveler = Moonwalk {
        name: String::from("Luna"),
        steps: 0,
    };
    for distance in [3, 7, 12] {
        println!("{}", traveler.walk(distance));
    }
}
