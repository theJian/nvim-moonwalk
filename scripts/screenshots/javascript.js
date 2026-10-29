// Keep moving, one step at a time.
class Moonwalk {
  constructor(name) {
    this.name = name;
    this.steps = 0;
  }

  walk(distance = 1) {
    this.steps += Math.max(0, distance);
    return `${this.name}: ${this.steps} steps`;
  }
}

const traveler = new Moonwalk("Luna");
const distances = [3, 7, 12];
for (const distance of distances) {
  console.log(traveler.walk(distance));
}
