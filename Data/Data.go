package Data

import (
	"errors"
	"fmt"
)

func Add(args string) (string, error) {

	if args == "" {
		return "", errors.New("tidak ada data yang ditambahkan")
	}

	msg := fmt.Sprintf("Data %v berhasil ditambahkan.", args)

	return msg, nil
}
