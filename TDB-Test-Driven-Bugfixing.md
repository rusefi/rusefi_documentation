# coverage first, fix second

here is what I believe to be *always* proper

merge one: coverage

merge two: fix, including ADJUSTMENT of expectations in coverage. fact that coverage is ADJUSTED is PROOF that we have RELEVANT coverage

## why?

### bad approach one:
merge one: fix

merge two: coverage (who knows if coverage in fact covers anything? good change that fix and coverage are not related)

### bad approach two
single merge: fix and coverage (same as above - no proof that coverage is related to fix)

## worst

fix without new coverage or expectation adjustments
