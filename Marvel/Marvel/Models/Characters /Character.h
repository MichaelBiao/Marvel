//
//  Character.h
//  Marvel
//
//  Created by BiaoShu on 2018/3/12.
//  Copyright © 2018年 BiaoShu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Character : NSObject
@property(nonatomic, strong) NSNumber *characterId;
@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *thumbnailUrl;
@end
