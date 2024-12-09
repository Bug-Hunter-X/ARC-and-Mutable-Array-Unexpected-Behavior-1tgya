The solution involves creating a copy of the temporary array before assigning it to the property:

```objectivec
@property (strong, nonatomic) NSMutableArray *myArray;

- (void)someMethod {
    NSMutableArray *tempArray = [NSMutableArray arrayWithCapacity:10];
    // ... add objects to tempArray ...
    self.myArray = [tempArray mutableCopy]; // Create a copy here
}
```

By using `mutableCopy`, a new, independent instance of `tempArray` is created and assigned to `myArray`.  This prevents any modifications of `tempArray` after the assignment from affecting `myArray` and solves the issue related to dangling pointers or unexpected behavior.