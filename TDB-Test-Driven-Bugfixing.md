# Coverage First, Fix Second

Here is what I believe to be *always* proper:

Merge one: Coverage. Obviously *green* coverage, clearly ASSERTING bad behavior - for instance https://github.com/rusefi/rusefi/commit/1fa0ca9a97af3f6504991ce8801da6292af64514

Merge two: Fix, including *adjustment* of expectations in coverage. fact that coverage is *adjusted* is *proof* that we have *relevant* coverage

## Why?

### Bad Approach One

Merge one: Fix

Merge two: Coverage (who knows if coverage in fact covers anything? good chance that fix and coverage are not related)

### Bad Approach Two

Single merge: Fix and coverage (same as above - no proof that coverage is related to fix)

## Worst

Fix without new coverage or expectation adjustments
