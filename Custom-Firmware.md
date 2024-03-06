# Custom rusEFI firmware for your custom board

Historically many custom rusEFI ECUs were running _default_ firmware which takes it roots at ancient Frankenso times. For best user experience around  connector mapping a custom firmware is recommended.

🟢No more fragile local compilation - these days it GitHub compiles for you, you download provided binaries!🟢

## Where are the binaries?

See Actions pane on your fork similar to https://github.com/rusefi/fw-custom-example/actions click recent "Create Board Firmware" and see artifacts on the bottom of the page!

## OK I am onboard

https://github.com/rusefi/fw-custom-example is an example of a custom rusEFI firmware repository. Just fork it, edit ``meta-info.env`` with name of your board and let GitHub Actions do the rest!

https://github.com/rusefi/fw-custom-paralela and https://github.com/rusefi/fw-custom-core8/ are the best example as of right now. https://github.com/rusefi/rusefi/tree/master/firmware/config/boards should be another source of inspiration.

If you have a more complex situation, with several different board variants you need to build, you can still achieve this with one repo.  
If, for example, your variants only need different compile flags, having multiple meta-info files within the same repository would be a good way to achieve it.  
For example:

- meta-info-brainboard.env
- meta-info-brainboard-debug.env

Now, in `.github/workflows/build-firmware.yaml`, you need a [matrix](https://docs.github.com/en/actions/learn-github-actions/contexts#example-usage-of-the-matrix-context) to run the build firmware action for two different targets. It should look something like this:

```yaml
name: Create Board Firmware

on:
  push:

jobs:
  build:
    runs-on: ubuntu-latest
    strategy:
      matrix:
        bundle-name:
        - brainboard
        - brainboard-debug

    steps:
      call-workflow-passing-data:
        uses: rusefi/rusefi/.github/workflows/custom-board-build.yaml@master
        secrets: inherit
        permissions:
          contents: write
        with:
          bundle-name: ${{matrix.bundle-name}}
```

If you want to have several different boards in the same repo, you should put them in different sub-directories, then pass a `board-dir` to the workflow.

There is also a `rusefi-dir` option you can use if you want to put your rusefi submodule somewhere other than `ext/rusefi`.

## Update rusEFI Reference

Happens daily.

Alternatively open "Actions" in your repo similar to https://github.com/rusefi/fw-custom-example/actions/workflows/update-rusefi-reference.yaml click "Run Workflow"->"Run Workflow"
