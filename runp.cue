package util

import (
	"strings"
	"tool/cli"
	"tool/exec"
)

#Command: {
	// Enable run and print command for all tasks named `runP`
	runp: [_]: {
		// name task as `runP` in `exec.Run` to trigger command print
		runP?: _
		if (runP & exec.Run) != _|_ {
			print: cli.Print & {
				text: *runP.cmd | _
				if (runP.cmd & string) == _|_ {
					text: strings.Join(runP.cmd, " ")
				}
			}
		}
	}
}
