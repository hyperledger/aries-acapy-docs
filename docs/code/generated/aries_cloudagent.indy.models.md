# aries_cloudagent.indy.models package

## Submodules

## aries_cloudagent.indy.models.cred module

## aries_cloudagent.indy.models.cred_abstract module

## aries_cloudagent.indy.models.cred_def module

## aries_cloudagent.indy.models.cred_precis module

## aries_cloudagent.indy.models.cred_request module

## aries_cloudagent.indy.models.non_rev_interval module

## aries_cloudagent.indy.models.predicate module

Utilities for dealing with predicates.

### _class_ aries_cloudagent.indy.models.predicate.Predicate(value)

Bases: [`Enum`](https://docs.python.org/3/library/enum.html#enum.Enum)

Enum for predicate types that indy-sdk supports.

<!-- #### GE(_ = Relation(fortran='GE', wql='$gte', math='>=', yes=<function Predicate.<lambda>>, no=<function Predicate.<lambda>>_ ) -->

<!-- #### GT(_ = Relation(fortran='GT', wql='$gt', math='>', yes=<function Predicate.<lambda>>, no=<function Predicate.<lambda>>_ ) -->

<!-- #### LE(_ = Relation(fortran='LE', wql='$lte', math='<=', yes=<function Predicate.<lambda>>, no=<function Predicate.<lambda>>_ ) -->

<!-- #### LT(_ = Relation(fortran='LT', wql='$lt', math='<', yes=<function Predicate.<lambda>>, no=<function Predicate.<lambda>>_ ) -->

#### _property_ fortran(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )

Fortran nomenclature.

#### _static_ get(relation: [str](https://docs.python.org/3/library/stdtypes.html#str))

Return enum instance corresponding to input relation string.

#### _property_ math(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )

Mathematical nomenclature.

#### _static_ to_int(value: [Any](https://docs.python.org/3/library/typing.html#typing.Any))

Cast a value as its equivalent int for indy predicate argument.

Raise ValueError for any input but int, stringified int, or boolean.

- **Parameters**

  **value** – value to coerce

#### _property_ wql(_: [str](https://docs.python.org/3/library/stdtypes.html#str_ )

WQL nomenclature.

### _class_ aries_cloudagent.indy.models.predicate.Relation(fortran, wql, math, yes, no)

Bases: [`tuple`](https://docs.python.org/3/library/stdtypes.html#tuple)

#### _property_ fortran()

Alias for field number 0

#### _property_ math()

Alias for field number 2

#### _property_ no()

Alias for field number 4

#### _property_ wql()

Alias for field number 1

#### _property_ yes()

Alias for field number 3

## aries_cloudagent.indy.models.pres_preview module

## aries_cloudagent.indy.models.proof module

## aries_cloudagent.indy.models.proof_request module

## aries_cloudagent.indy.models.requested_creds module

## aries_cloudagent.indy.models.revocation module

## aries_cloudagent.indy.models.schema module

## aries_cloudagent.indy.models.xform module
