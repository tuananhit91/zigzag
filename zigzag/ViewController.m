//
//  ViewController.m
//  zigzag
//
//  Created by admin on 7/9/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //printf("+       +       +\n");
    //printf(" +     + +     + +\n");
    //printf("  +   +   +   +   +\n");
    //printf("   + +     + +     +\n");
    //printf("    +       +       +");
    
    int i,j;
    int rows = 7;
    int columns = 8;
    NSString* string = @"+";
    
    for (i = 0; i < rows; i++) {
        if (i == 0) {
            NSString* stringA = @"";
            stringA = [stringA stringByAppendingString:string];
            
            for (j = 0; j < columns-1; j++) {
                stringA = [stringA stringByAppendingString:[self creatSpace:2*rows - 3 ]];
                stringA = [stringA stringByAppendingString:string];
                
            }
            const char* stringConvert = [stringA UTF8String];
            printf("%s\n", stringConvert);
            
        } else if (0 < i && (i < rows-1)){
            NSString* stringB = @"";
            stringB = [stringB stringByAppendingString:[self creatSpace:i]];
            stringB = [stringB stringByAppendingString:string];
            for (j = 0; j < columns-1; j++) {
                stringB = [stringB stringByAppendingString:[self creatSpace:(2*rows - 3) - 2*i]];
                stringB = [stringB stringByAppendingString:string];
                
                stringB = [stringB stringByAppendingString:[self creatSpace:2*i - 1]];
                stringB = [stringB stringByAppendingString:string];
            }
            const char* stringConvert = [stringB UTF8String];
            printf("%s\n", stringConvert);
        } else {
            NSString* stringC = @"";
                stringC = [stringC stringByAppendingString:[self creatSpace:i]];
                stringC = [stringC stringByAppendingString:string];
            
            for (j = 0; j < columns-1; j++) {
                stringC = [stringC stringByAppendingString:[self creatSpace:2*rows - 3]];
                stringC = [stringC stringByAppendingString:string];
            }
            const char* stringConvert = [stringC UTF8String];
            printf("%s\n", stringConvert);
        }
    }
}


- (NSString*) creatSpace : (NSInteger) k {
    NSString* stringSpace = @"";
    for (int i = 0; i < k; i++) {
        stringSpace = [stringSpace stringByAppendingString:@" "];
    }
    return stringSpace;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
