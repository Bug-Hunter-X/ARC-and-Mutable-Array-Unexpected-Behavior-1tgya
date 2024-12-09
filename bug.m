In Objective-C, a common yet subtle error arises when dealing with memory management using ARC (Automatic Reference Counting).  Consider this scenario:

```objectivec
@property (strong, nonatomic) NSMutableArray *myArray;

- (void)someMethod {
    NSMutableArray *tempArray = [NSMutableArray arrayWithCapacity:10];
    // ... add objects to tempArray ...
    self.myArray = tempArray;
}
```

While seemingly correct, this code can lead to unexpected behavior if `tempArray` is modified after it's assigned to `myArray`.  Since `myArray` now strongly references `tempArray`, modifications to `tempArray` will be reflected in `myArray`. But, if later, `tempArray` goes out of scope, `myArray` will retain a reference to a deallocated object, causing potential crashes or unexpected program behavior.