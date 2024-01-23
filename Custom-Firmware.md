# Custom rusEFI firmware for your custom board

Historically many custom rusEFI ECUs were running _default_ firmware which takes it roots at ancient Frankenso times. For best user experience around default pinout and connector mapping a custom firmware is recommended.

https://github.com/rusefi/fw-custom-example is an example of a custom rusEFI firmware repository. Just fork it, edit ``meta-info.env`` with name of your board and let GitHub Actions do the rest!

https://github.com/rusefi/fw-custom-paralela and https://github.com/rusefi/fw-custom-core8/ are the best example as of right now. https://github.com/rusefi/rusefi/tree/master/firmware/config/boards should be another source of inspiration.

## Update rusEFI Reference

Happens daily.

Alternatively open "Actions" in your repo similar to https://github.com/rusefi/fw-custom-example/actions/workflows/update-rusefi-reference.yaml click "Run Workflow"->"Run Workflow"
