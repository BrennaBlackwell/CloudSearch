//
//  CloudCell.h
//  CloudSearch
//
//  Created by Brenna on 6/23/13.
//  Copyright (c) 2013 brennablackwell.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CloudCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UIImageView *cloudImage;
@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *classificationLabel;

@end
