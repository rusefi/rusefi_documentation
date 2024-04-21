# Custom rusEFI firmware for your custom board

Historically many custom rusEFI ECUs were running _default_ firmware which takes it roots at ancient Frankenso times. If you have developed a custom board at some point custom firmware would be needed for best user experience around around connector mapping.

Only looking to develop a custom board? See https://github.com/rusefi/hellen-example and https://github.com/rusefi/uaefi-adapter-template

🟢No more fragile local compilation - these days it GitHub compiles for you, you download provided binaries!🟢

## Where are the binaries?

See Actions pane on your fork similar to https://github.com/rusefi/fw-custom-example/actions click recent "Create Board Firmware" and see artifacts on the bottom of the page!

## OK I am onboard

https://github.com/rusefi/fw-custom-example is an example of a custom rusEFI firmware repository. Just fork it, edit ``meta-info.env`` with name of your board and let GitHub Actions do the rest!

https://github.com/rusefi/fw-custom-paralela and https://github.com/rusefi/fw-custom-core8/ are the best example as of right now. https://github.com/rusefi/rusefi/tree/master/firmware/config/boards should be another source of inspiration.

## Update rusEFI Reference

Happens daily.

Alternatively open "Actions" in your repo similar to https://github.com/rusefi/fw-custom-example/actions/workflows/update-rusefi-reference.yaml click "Run Workflow"->"Run Workflow"

To to stop it from happening daily you would have to remove two lines from ``.github/workflows/build-firmware.yaml`` - the ones with ``cron`` and ``schedule``.

## Default Board Configuration

Adjust [setBoardDefaultConfiguration@board_configuration.cpp](https://github.com/rusefi/fw-custom-example/blob/main/board_configuration.cpp) method, see other setBoardDefaultConfiguration method examples.

## Really advanced use-case you would probably not need it

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
        meta-info:
        - meta-info-brainboard.env
        - meta-info-brainboard-debug.env

    steps:
    - uses: ./ext/rusefi/.github/workflows/custom-board-build
      with:
        meta-info: ${{matrix.meta-info}}
        MY_REPO_PAT: ${{secrets.MY_REPO_PAT}}
        RUSEFI_ONLINE_FTP_USER: ${{secrets.RUSEFI_ONLINE_FTP_USER}}
        RUSEFI_ONLINE_FTP_PASS: ${{secrets.RUSEFI_ONLINE_FTP_PASS}}
        RUSEFI_FTP_SERVER: ${{secrets.RUSEFI_FTP_SERVER}}
        RUSEFI_SSH_SERVER: ${{secrets.RUSEFI_SSH_SERVER}}
        RUSEFI_SSH_USER: ${{secrets.RUSEFI_SSH_USER}}
        RUSEFI_SSH_PASS: ${{secrets.RUSEFI_SSH_PASS}}
        ADDITIONAL_ENV: ${{secrets.ADDITIONAL_ENV}}
```

If you want to have several different boards in the same repo, you should put them in different sub-directories, so they can have their own board.mk, board_configuration.cpp, and prepend.txt.

There is also a `rusefi-dir` option you can use if you want to put your rusefi submodule somewhere other than `ext/rusefi`. You will also need to change the path in the `uses:` field.

## FAQ

### Q: I get "exti index already used" error?

A: stm32 has a limitation: you can only have 16 digital inputs. Also each input has to be on a pin with unique numeric part: for example, you can have digital input on pins PA1 PB2 PC3 but you cannot have PA1 and PB1 since those are both "something-1" pins.
