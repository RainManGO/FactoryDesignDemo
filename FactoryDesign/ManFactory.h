//
//  ManFactory.h
//  FactoryDesign
//
//  Created by apple on 2017/6/19.
//  Copyright © 2017年 ZY. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Man.h"
#import "Factory.h"
@interface ManFactory : NSObject<Factory>
+(instancetype)shareFactory;
@end
