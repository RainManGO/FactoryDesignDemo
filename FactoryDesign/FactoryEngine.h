//
//  FactoryEngine.h
//  FactoryDesign
//
//  Created by apple on 2017/6/19.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factory.h"

@interface FactoryEngine : NSObject
+(instancetype)shareFactoryEngine;
-(id<Factory>)creatFactory;
@end
