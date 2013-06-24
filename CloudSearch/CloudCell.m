//
//  CloudCell.m
//  CloudSearch
//
//  Created by Brenna on 6/23/13.
//  Copyright (c) 2013 brennablackwell.com. All rights reserved.
//

#import "CloudCell.h"

@implementation CloudCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        _cloudImage = [[UIImageView alloc] initWithFrame:(CGRectMake(0, 0, 99, 79))];
        
        _nameLabel = [[UILabel alloc] initWithFrame:(CGRectMake(107, 8, 173, 42))];
        _nameLabel.font = [UIFont systemFontOfSize:17];
        _nameLabel.textAlignment = NSTextAlignmentCenter;
        
        _classificationLabel = [[UILabel alloc] initWithFrame:(CGRectMake(137, 49, 113, 21))];
        _classificationLabel.font = [UIFont systemFontOfSize:13];
        _classificationLabel.textAlignment = NSTextAlignmentCenter;
        
        [self.contentView addSubview:_cloudImage];
        [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_classificationLabel];
    }
    
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
