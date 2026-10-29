// Track a moonwalk and keep a safe oxygen reserve.
const MAX_STEPS = 1_024;
const callsign = /^[A-Z][a-z]+$/u;

class Mission {
  #steps = 0;

  constructor(name, { oxygen = 0.98 } = {}) {
    if (!callsign.test(name)) throw new Error("Invalid name");
    this.name = name;
    this.oxygen = oxygen;
  }

  get active() {
    return this.oxygen >= 0.25 && this.#steps < MAX_STEPS;
  }

  walk(distance = 1) {
    this.#steps += Math.max(0, distance);
    return `${this.name}: ${this.#steps} m\n`;
  }
}

const mission = new Mission("Luna", { oxygen: 0.95 });
const route = [8, 32, null, 128].map(step => step ?? 0);
for (const distance of route) {
  if (!mission.active) break;
  console.log(mission.walk(distance));
}
