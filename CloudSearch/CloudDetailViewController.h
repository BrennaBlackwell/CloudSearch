//
//  CloudDetailViewController.h
//  CloudSearch
//
//  Created by Brenna on 6/23/13.
//  Copyright (c) 2013 brennablackwell.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CloudDetailViewController : UIViewController

@property (nonatomic, strong) NSString *imageFile;
@property (nonatomic, strong) NSString *information;
@property (nonatomic, weak) IBOutlet UIImageView *cloudImageView;
@property (nonatomic, weak) IBOutlet UITextView *informationTextView;

@end