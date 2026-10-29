from dataclasses import dataclass


@dataclass
class Moonwalk:
    """A small step toward readable code."""

    name: str
    steps: int = 0

    def walk(self, distance: int) -> str:
        # Keep moving, one step at a time.
        self.steps += max(0, distance)
        return f"{self.name}: {self.steps} steps"


traveler = Moonwalk("Luna")
for distance in [3, 7, 12]:
    print(traveler.walk(distance))
