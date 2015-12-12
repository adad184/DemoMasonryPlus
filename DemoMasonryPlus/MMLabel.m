//
//  MMLabel.m
//  DemoMasonryPlus
//
//  Created by Ralph Li on 12/12/15.
//  Copyright © 2015 LJC. All rights reserved.
//

#import "MMLabel.h"

@implementation MMLabel

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (CGSize)intrinsicContentSize
{
    CGSize size = [super intrinsicContentSize];
    
    NSLog(@"%@",NSStringFromCGSize(size));
    
    return size;
}

@end
