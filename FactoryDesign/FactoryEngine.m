//
//  FactoryEngine.m
//  FactoryDesign
//
//  Created by apple on 2017/6/19.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "FactoryEngine.h"
#import <objc/message.h>
@implementation FactoryEngine
{
    BOOL  isNeedMan;
    BOOL  isNeedWomen;
}
+(instancetype)shareFactoryEngine{
        static FactoryEngine  * _factoryEngine;
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _factoryEngine  =  [[FactoryEngine  alloc]init];
        });
        
        return _factoryEngine;
}

-(id<Factory>)creatFactory{
    [self readJsonSetsing];
    id<Factory>  factory;
    if (isNeedMan==1) {
        factory =  objc_msgSend(objc_getClass("ManFactory"),sel_registerName("alloc"),sel_registerName("init"));
    }else if (isNeedWomen==1){
        factory =  objc_msgSend(objc_getClass("WomenFactory"),sel_registerName("alloc"),sel_registerName("init"));
    }else{
        NSLog(@"雌雄同体，你先来？");
        return nil;
    }
    
    return factory;
}

-(void)readJsonSetsing{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"config.json" ofType:nil];
    NSData *data = [NSData dataWithContentsOfFile:path];
    NSDictionary *  dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    isNeedMan = [dic[@"isNeedMan"] boolValue];
    isNeedWomen = [dic[@"isNeedWomen"] boolValue];
}

@end
