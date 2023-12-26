# Custom rusEFI firmware for your own board

https://github.com/rusefi/fw-custom-example is an example of a custom rusEFI firmware repository. Just fork it, edit ``.github\workflows\build-firmware.yaml`` file, rename ``compile_XXX.sh`` with your board name and you have full control over default tune, connector mapping etc!

https://github.com/rusefi/fw-custom-paralela and https://github.com/rusefi/fw-custom-core8/ are the best example as of right now. https://github.com/rusefi/rusefi/tree/master/firmware/config/boards should be another source of inspiration.

## Update rusEFI Reference

Open "Actions" in your repo similar to https://github.com/rusefi/fw-custom-example/actions/workflows/update-rusefi-reference.yaml click "Run Workflow"->"Run Workflow"
