//
//  ViewController.m
//  FactoryDesign
//
//  Created by apple on 2017/6/19.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "ViewController.h"
#import "FactoryEngine.h"
@interface ViewController ()

@end

@implementation ViewController
- (IBAction)creatMakePerson:(UIButton *)sender {
    id<Factory>         factory = [[FactoryEngine shareFactoryEngine] creatFactory];
    if (factory) {
        id<PersonProtocol>  person  = [factory creatPerson];
        NSString * face  =  [person haveFace];
        NSString * eye  =  [person haveTwoEye];
        NSString * nose  =  [person haveNose];
        NSString * mouth  =  [person haveMouth];
        
        UIAlertController  *  alertVc  = [UIAlertController alertControllerWithTitle:@"工厂模式设计" message:[NSString stringWithFormat:@"%@\n%@\n%@\n%@\n",face,eye,nose,mouth] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            [self dismissViewControllerAnimated:YES completion:nil];
        }];
        [alertVc addAction:cancel];
        [self presentViewController:alertVc animated:YES completion:nil];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
