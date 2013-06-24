//
//  Cloud.h
//  CloudSearch
//
//  Created by Brenna on 6/23/13.
//  Copyright (c) 2013 brennablackwell.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cloud : NSObject
{
    NSString *name;
    NSString *classification;
    NSString *information;
    NSString *imageFile;
}

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *classification;
@property (nonatomic, copy) NSString *information;
@property (nonatomic, copy) NSString *imageFile;

+ (id)newCloud:(NSString *)name withClassification:(NSString *)classification withInformation:(NSString *)information withImage:(NSString *)imageFile;

@end