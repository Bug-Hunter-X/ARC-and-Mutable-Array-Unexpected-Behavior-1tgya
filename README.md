# Objective-C ARC and Mutable Array Unexpected Behavior
This repository demonstrates a subtle bug related to memory management and mutable arrays in Objective-C using ARC.  The bug arises from modifications to a temporary array after assignment to a property.

## Bug Description
The code example in `bug.m` shows a scenario where a mutable array is created, populated, and then assigned to a property.  Modifying the temporary array after the assignment causes unexpected and unpredictable results due to how ARC manages references and object lifetimes. This can lead to runtime errors or program crashes.

## Solution
The solution, provided in `bugSolution.m`, employs proper memory management techniques by creating a copy of the temporary array before assigning it to the property. This ensures that modifications to the temporary array after the assignment do not affect the property.