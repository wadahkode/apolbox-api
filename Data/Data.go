package Data

import (
	"errors"
	"fmt"
)

func Create(args string) (string, error) {
	if args == "" {
		return "", errors.New("no input data")
	}

	message := fmt.Sprintf("success add data %v", args)

	return message, nil
}