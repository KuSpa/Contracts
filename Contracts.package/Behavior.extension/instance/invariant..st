*Contracts
invariant: aBlock

aBlock isNil ifTrue: [^InvariantManager deleteInvariantFor:self].
InvariantManager store: aBlock for: self.