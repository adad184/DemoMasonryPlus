//
//  Base3Controller.m
//  DemoMasonryPlus
//
//  Created by Ralph Li on 12/12/15.
//  Copyright © 2015 LJC. All rights reserved.
//

#import "Base3Controller.h"
#import <pop/POP.h>
#import <MMTweenAnimation/MMTweenAnimation.h>

@interface Base3Controller ()

@property (nonatomic, strong) UIView *block;

@end

@implementation Base3Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.block = ({
        UIView *view = [UIView new];
        [self.view addSubview:view];
        view.backgroundColor = [UIColor redColor];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(self.view);
            make.bottom.equalTo(self.view.mas_bottom).offset(-300);
            make.size.mas_equalTo(CGSizeMake(200, 200));
        }];
        
        view.layer.cornerRadius = 100;
        
        view;
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
//    [UIView animateWithDuration:1.0 delay:0 usingSpringWithDamping:0.5 initialSpringVelocity:1 options:0 animations:^{
//        
//        [self.block mas_updateConstraints:^(MASConstraintMaker *make) {
//            make.center.equalTo(self.view);
//        }];
//        
//        [self.view layoutIfNeeded];
//        
//        self.block.transform = CGAffineTransformIdentity;
//    } completion:^(BOOL finished) {
//        
//    }];
    
    
    MMTweenAnimation *animation = [MMTweenAnimation animation];
    animation.functionType = MMTweenFunctionBounce;
    animation.duration = 1.0f;
    animation.fromValue = @[@(-300)];
    animation.toValue = @[@(0)];
    
    animation.animationBlock = ^(double c,   //current time offset(0->duration)
                                 double d,   //duration
                                 NSArray *v, //current value
                                 id target,
                                 MMTweenAnimation *animation
                                 )
    {
        double value = [v[0] doubleValue];
        
        [self.block mas_updateConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.view.mas_bottom).offset(value);
        }];
    };
    
    [self.block pop_addAnimation:animation forKey:@"test"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
