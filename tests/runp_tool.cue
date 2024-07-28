package tests

import (
	"tool/exec"
	"github.com/abcue/util"
)

command: util.#Command.runp & {
	// test run and print command of string type
	"test-run-and-print-cmd": {
		runP: exec.Run & {cmd: "whoami"}
	}
	// test run and print command of string list type
	"test-run-and-print-cmd-list": {
		runP: exec.Run & {cmd: ["echo", "run and print"]}
	}
}
