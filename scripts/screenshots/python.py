from dataclasses import dataclass
from typing import ClassVar


@dataclass(frozen=True)
class Mission:
    """Plan a moonwalk with a safe oxygen reserve."""

    MAX_STEPS: ClassVar[int] = 1_024
    name: str
    oxygen: float = 0.98
    active: bool = True

    def route(self, distances: list[int]) -> list[str]:
        # Skip invalid steps; preserve the original order.
        if not self.active or self.oxygen < 0.25:
            raise ValueError("Oxygen reserve is too low\n")
        return [
            f"{self.name}: {step:04d} m"
            for step in distances
            if 0 < step <= self.MAX_STEPS
        ]


if __name__ == "__main__":
    mission = Mission(name="Luna")
    try:
        print("\n".join(mission.route([8, 32, -1, 128])))
    except ValueError as error:
        print(f"Aborted: {error!s}")
