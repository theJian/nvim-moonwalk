package main

import "fmt"

const maxSteps = 1_024

type Mission struct {
	Name  string `json:"name"`
	Steps int    `json:"steps"`
}

// Walk keeps every step within the mission budget.
func (m *Mission) Walk(distance int) (int, error) {
	if distance < 0 || m.Steps+distance > maxSteps {
		return 0, fmt.Errorf("invalid distance: %d", distance)
	}
	m.Steps += distance
	return m.Steps, nil
}

func main() {
	mission := &Mission{Name: "Luna"}
	for _, distance := range []int{8, 32, 128} {
		steps, err := mission.Walk(distance)
		if err != nil {
			fmt.Println("Aborted:", err)
			break
		}
		fmt.Printf("%s: %04d m\n", mission.Name, steps)
	}
}
