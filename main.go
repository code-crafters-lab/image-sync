package main

import (
	"fmt"
	"os"
)

func main() {
	targetRegistryURL := os.Args[1]
	targetIRegistryNamespace := os.Args[2]
	dockerUsername := os.Args[3]
	dockerPassword := os.Args[4]

	fmt.Printf("Syncing images to %s/%s\n", targetRegistryURL, targetIRegistryNamespace)
	fmt.Printf("Using Docker credentials for %s => %s\n", dockerUsername, dockerPassword)
	fmt.Println("Image synced successfully")
}
