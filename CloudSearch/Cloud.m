//
//  Cloud.m
//  CloudSearch
//
//  Created by Brenna on 6/23/13.
//  Copyright (c) 2013 brennablackwell.com. All rights reserved.
//

#import "Cloud.h"

@implementation Cloud

@synthesize name;
@synthesize classification;
@synthesize information;
@synthesize imageFile;

+ (id)newCloud:(NSString *)name withClassification:(NSString *)classification withInformation:(NSString *)information withImage:(NSString *)imageFile
{
    Cloud *newCloud = [[self alloc] init];
    
    newCloud.name = name;
    newCloud.classification = classification;
    newCloud.information = information;
    newCloud.imageFile = imageFile;
    
    return newCloud;
}

@end