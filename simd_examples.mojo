"""
SIMD - Single Instruction, Multiple Data

"""
import time


fn main():
    var start = time.now()
    # Create SIMD vectors
    var a = SIMD[DType.float16](1, 4, 9, 16)
    var b = SIMD[DType.float16](1, 4, 9, 16)

    print("squared:", a * 2)
    print("elapsed:", time.now() - start)
    # convert to seconds
    print("elapsed:", (time.now() - start) / 1_000_000_000)


    # Perform SIMD operations
    var sum = a + b;
    var difference = a - b;
    var product = a * b;
    var quotient = a / b;

    # Print the results
    print("Sum:", sum);
    print("Difference:", difference);
    print("Product:", product);
    print("Quotient:", quotient);
