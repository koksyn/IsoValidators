# IsoValidators

Pack of varied ISO-codes **validators** for **Red** programming language.

[![Travis build](https://travis-ci.org/koksyn/IsoValidators.svg?branch=master)](https://travis-ci.org/koksyn/IsoValidators)

### Description

Coming soon...

## Validators 

* [VAT](docs/validators.md) - Value Added Tax in European Union, Latin American and other countries.
* [MAC](docs/validators.md) - Media access control address (for network interface controllers)
* [ISBN](docs/validators.md) - International Standard Book Number
* [Credit Card](docs/validators.md) - Credit Card numbers for several banks (VISA, Mastercard, etc.)
* [SEDOL](docs/validators.md) - Stock Exchange identifiers used in the United Kingdom and Ireland
* [SWIFT/BIC](docs/validators.md) - Business Identifier Codes for both financial or not-financial institutions

## Running the tests

### All validators at once

To run tests simply execute script `run-all-tests.red` from project main directory through **Red** binary.
This script will detect and execute all test files like `***-tests.red` under `/tests` directory.

```bash
./red -s run-all-tests.red
```

### One validator

All tests for specific validators are located under `/tests` directory.
Each validator have a file `valid-NAME-tests.red`, where `NAME` should be replaced by validator name.

For example (VAT validator):
 
```bash
./red -s tests/valid-vat-tests.red
```

## Compatibility

Project was created and tested under **0.6.3** version of Red. Older versions were not tested.
