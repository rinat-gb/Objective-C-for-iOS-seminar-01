//
//  main.m
//  DiveIntoObjective-C
//
//  Created by Ринат on 04.09.2023.
//

#import <Foundation/Foundation.h>

void solveQuadracticEquation(CGFloat a, CGFloat b, CGFloat c) {
    CGFloat discriminant = pow(b, 2) - 4 * a * c;
    if (discriminant > 0) {
        CGFloat result1 = (-b - sqrt(discriminant)) / 2 * a;
        CGFloat result2 = (-b + sqrt(discriminant)) / 2 * a;
        NSLog(@"%f, %f", result1, result2);
    } else if (discriminant == 0) {
        CGFloat result = -b / 2 * a;
        NSLog(@"%f", result);
    } else {
        NSLog(@"Корни есть, но мнимые, считаем что нету");
    }
    printf("\n");
}

void findMaxOfThree(CGFloat a, CGFloat b, CGFloat c) {
    CGFloat max = a;
    if (b > max)
        max = b;
    if (c > max)
        max = b;
    NSLog(@"Из трёх чисел %f, %f и %f максимальное число: %f", a, b, c, max);
}

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        NSLog(@"x^2 - 8x + 12 = 0:");
        solveQuadracticEquation(1, -8, 12);
        NSLog(@"12x^2 - 4x + 2 = 0:");
        solveQuadracticEquation(12, -4, 2);
        NSLog(@"x^2 - 100x - 2 = 0:");
        solveQuadracticEquation(1, -100, -2);
        findMaxOfThree(2, 5, 1);
    }
    return 0;
}
