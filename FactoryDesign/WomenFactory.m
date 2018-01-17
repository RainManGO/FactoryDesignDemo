//
//  WomenFactory.m
//  FactoryDesign
//
//  Created by apple on 2017/6/19.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "WomenFactory.h"

@implementation WomenFactory
+(instancetype)shareFactory{
    static WomenFactory  * _factory;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _factory  =  [[WomenFactory  alloc]init];
    });
    
    return _factory;
}

-(id<PersonProtocol>)creatPerson{
    id<PersonProtocol> women  = [[Women  alloc]init];
    return women;
}
@end
