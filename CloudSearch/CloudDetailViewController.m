//
//  CloudDetailViewController.m
//  CloudSearch
//
//  Created by Brenna on 6/23/13.
//  Copyright (c) 2013 brennablackwell.com. All rights reserved.
//

#import "CloudDetailViewController.h"

@interface CloudDetailViewController ()

@end

@implementation CloudDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    _cloudImageView.image = [UIImage imageNamed:_imageFile];
    _informationTextView.text = _information;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
