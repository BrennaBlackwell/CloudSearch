//
//  CloudTableViewController.h
//  CloudSearch
//
//  Created by Brenna on 6/23/13.
//  Copyright (c) 2013 brennablackwell.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Cloud.h"
#import "CloudCell.h"
#import "CloudDetailViewController.h"

@interface CloudTableViewController : UITableViewController
<UISearchBarDelegate, UISearchDisplayDelegate>

@property (nonatomic, weak) IBOutlet UISearchBar *cloudSearch;

@end