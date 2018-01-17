//
//  Factory.h
//  FactoryDesign
//
//  Created by apple on 2017/6/19.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PersonProtocol.h"
//工厂协议，工厂是造人的。
@protocol Factory <NSObject>
-(id<PersonProtocol>)creatPerson;
@end
