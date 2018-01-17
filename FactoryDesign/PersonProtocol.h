//
//  PersonProtocol.h
//  FactoryDesign
//
//  Created by apple on 2017/6/19.
//  Copyright © 2017年 ZY. All rights reserved.
//
/*
 *  人的标准协议
 */
#import <Foundation/Foundation.h>

@protocol PersonProtocol <NSObject>

-(NSString *)haveFace;
-(NSString *)haveTwoEye;
-(NSString *)haveNose;
-(NSString *)haveMouth;

@end
