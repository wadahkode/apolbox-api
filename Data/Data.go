package Data

import "fmt"

func Add(args string) string {
	msg := fmt.Sprintf("Data %v berhasil ditambahkan.", args)

	return msg
}
