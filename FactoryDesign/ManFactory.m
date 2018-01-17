//
//  ManFactory.m
//  FactoryDesign
//
//  Created by apple on 2017/6/19.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import "ManFactory.h"

@implementation ManFactory

+(instancetype)shareFactory{
    static ManFactory  * _factory;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _factory  =  [[ManFactory  alloc]init];
    });
    
    return _factory;
}


-(id<PersonProtocol>)creatPerson{
    id<PersonProtocol>  man  =  [[Man alloc]init];
    return man;
}

@end
