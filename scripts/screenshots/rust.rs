use std::fmt::Debug;

const MAX_STEPS: u32 = 1_024;

#[derive(Debug, Clone)]
struct Mission<'a> {
    name: &'a str,
    steps: u32,
}

impl<'a> Mission<'a> {
    /// Keep every step within the mission budget.
    fn walk(&mut self, distance: u32) -> Result<u32, &'static str> {
        match self.steps.checked_add(distance) {
            Some(total) if total <= MAX_STEPS => {
                self.steps = total;
                Ok(total)
            }
            _ => Err("Step budget exceeded"),
        }
    }
}

fn main() {
    let mut mission = Mission { name: "Luna", steps: 0 };
    for distance in [8, 32, 128] {
        let result = mission.walk(distance);
        println!("{}: {result:?}\n", mission.name);
    }
}
