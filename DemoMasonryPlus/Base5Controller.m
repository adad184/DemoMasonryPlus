//
//  Base5Controller.m
//  DemoMasonryPlus
//
//  Created by Ralph Li on 12/12/15.
//  Copyright © 2015 LJC. All rights reserved.
//

#import "Base5Controller.h"
#import <MMPlaceHolder/MMPlaceHolder.h>

@interface Base5Controller ()

@property (nonatomic, strong) UIStackView * stackView;

@end

@implementation Base5Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIStackView *stackView = ({
        UIStackView *view = [UIStackView new];
        [self.view addSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(self.view);
            make.centerY.equalTo(self.view);
            make.height.equalTo(@200);
        }];
        
        view.axis = UILayoutConstraintAxisHorizontal;
        view.alignment = UIStackViewAlignmentCenter;
        view.distribution = UIStackViewDistributionFill;
//        view.spacing = 5;
        
        view;
    });
    self.stackView = stackView;
    
    UIView *backView = ({
        UIView *view = [UIView new];
        
        [self.view addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(stackView);
        }];
        
        view.backgroundColor = [UIColor lightGrayColor];
        
        view;
    });
    
    [self.view sendSubviewToBack:backView];
    
//    UILabel *label1 = ({
//        UILabel *label = [UILabel new];
//        [stackView addArrangedSubview:label];
//        
//        label.text = @"testtest";
//        label.textColor = [UIColor blackColor];
//        
//        label.backgroundColor = [UIColor redColor];
//        
//        label;
//    });
//    
//    
//    UILabel *label2 = ({
//        UILabel *label = [UILabel new];
//        [stackView addArrangedSubview:label];
//        
//        label.text = @"ttttttt";
//        label.textColor = [UIColor blackColor];
//        
//        label.backgroundColor = [UIColor blueColor];
//        
//        label;
//    });
//    
//    UIView *spacer = ({
//        UIView *view = [UIView new];
//        
//        [view mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.height.equalTo(@30);
//        }];
//        [stackView addArrangedSubview:view];
//        
//        
//        view.backgroundColor = [UIColor greenColor];
//        
//        view;
//    });
    
    UIView *sp1 = ({
        UIView *view = [UIView new];
        
        [stackView addArrangedSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@30);
        }];
        
//        view.backgroundColor = [UIColor blackColor];
        
        view;
    });
    
    UIView *v1 = ({
        UIView *view = [UIView new];
        
        [stackView addArrangedSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(30, 50)).priorityLow();
        }];
        
        view.backgroundColor = [UIColor redColor];
        
        view;
    });
    
    UIView *v2 = ({
        UIView *view = [UIView new];
        
        [stackView addArrangedSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(10, 30)).priorityLow();
        }];
        
        view.backgroundColor = [UIColor blueColor];
        
        view;
    });
    
    UIView *v3 = ({
        UIView *view = [UIView new];
        
        [stackView addArrangedSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(60, 70)).priorityLow();
        }];
        
        view.backgroundColor = [UIColor redColor];
        
        view;
    });
    
    
    UIView *sp2 = ({
        UIView *view = [UIView new];
        
        [stackView addArrangedSubview:view];
        
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@30);
        }];
        
//        view.backgroundColor = [UIColor blackColor];
        
        view;
    });
    
    [sp1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(sp2);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    for ( NSLayoutConstraint *constraint in self.stackView.constraints )
    {
        NSLog(@"%@",constraint);
    }
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
