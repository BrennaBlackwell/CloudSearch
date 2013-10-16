//
//  CloudTableViewController.m
//  CloudSearch
//
//  Created by Brenna on 6/23/13.
//  Copyright (c) 2013 brennablackwell.com. All rights reserved.
//

#import "CloudTableViewController.h"

@interface CloudTableViewController ()
{
    NSArray *cloudArray;
    NSMutableArray *filteredCloudArray;
}
@end

@implementation CloudTableViewController


- (void)viewDidLoad
{
    [super viewDidLoad];

    cloudArray = [NSArray arrayWithObjects:
                  [Cloud newCloud:@"Noctilucent" withClassification:@"Polar Mesopheric" withInformation:@"Noctilucent clouds are the highest clouds in Earth's atmosphere, located in the mesosphere at altitudes of around 76 to 85 kilometres (47 to 53 mi). They are normally too faint to be seen, and are visible only when illuminated by sunlight from below the horizon while the lower layers of the atmosphere are in the Earth's shadow. Noctilucent clouds are not fully understood and are a recently-discovered meteorological phenomenon; there is no record of their observation before 1885." withImage:@"Noctilucent.jpg"],
                  [Cloud newCloud:@"Nacreous" withClassification:@"Polar Stratospheric" withInformation:@"The stratosphere is very dry; unlike the troposphere, it rarely allows clouds to form. In the extreme cold of the polar winter, however, stratospheric clouds of different types may form, which are classified according to their physical state and chemical composition. Due to their high altitude and the curvature of the surface of the Earth, these clouds will receive sunlight from below the horizon and reflect it to the ground, shining brightly well before dawn or after dusk. Because of this, an observer, unfamiliar with this type of cloud may think one to be a UFO." withImage:@"Nacreous.JPG"],
                  [Cloud newCloud:@"Cirrus Unicinus" withClassification:@"Tropospheric" withInformation:@"Cirrus uncinus is a type of cirrus cloud. The name cirrus uncinus is derived from Latin, meaning curly hooks. Also known as mares' tails, these clouds are generally sparse in the sky and very thin. The clouds occur at very high altitudes, at a temperature of about −50 to −40 °C (−58 to −40 °F). They are generally seen when a warm or occluded front is approaching. They are very high in the troposphere and generally mean that precipitation, usually rain, is approaching." withImage:@"CirrusUncinus.jpg"],
                   [Cloud newCloud:@"Cirrocumulus Stratiformis" withClassification:@"Tropospheric" withInformation:@"Cirrocumulus stratiformis is a type of cirrocumulus cloud. The name cirrocumulus stratiformis is derived from Latin, meaning stretched out. Cirrocumulus stratiformis occurs as very small cirrocumulus clouds that cover a large part of the sky. This type of cloud always occurs in thin layers. There can be spaces or rifts between the individual cloudlets in the layer." withImage:@"CirrocumulusStratiformus.JPG"],
                   [Cloud newCloud:@"Cirrostratus Nebulosus" withClassification:@"Tropospheric" withInformation:@"Cirrostratus nebulosus is a type of cirrostratus cloud. The name cirrostratus nebulosus is derived from Latin, meaning full of vapor, foggy, cloudy, dark. Cirrostratus nebulosus is one of the two most common forms that cirrostratus often takes, with the other being cirrostratus fibratus. The nebulosus species is featureless and uniform, while the fibratus species has a fibrous appearance. Cirrostratus nebulosus are formed by gently rising air. The cloud is often hard to see unless the sun shines through it at the correct angle, forming a halo. While usually very light, the cloud may also be very dense, and the exact appearance of the cloud can vary from one formation to another. In the winter, precipitation often follows behind these clouds; however, they are not a precipitation-producing cloud." withImage:@"CirrostratusNebulosus.jpg"],
                  [Cloud newCloud:@"Altocumulus Castekkabys" withClassification:@"Tropospheric" withInformation:@"Altocumulus Castellanus (ACCAS) is named for its tower-like projections that billow upwards from the base of the cloud. The base of the cloud can form as low as 2,000 metres (6,500 feet), or as high as 6,000 metres (20,000 feet). They are very similar to cumulus congestus clouds, but at a higher level. Castellanus clouds are evidence of mid-atmospheric instability and a high mid-altitude lapse rate.[1] They may be a harbinger of heavy showers and thunderstorms and, if surface-based convection can connect to the mid-tropospheric unstable layer, continued development of Castellanus clouds can produce cumulonimbus clouds. Altocumulus Castellanus clouds are typically accompanied by moderate turbulence as well as potential icing conditions. For these reasons, flight through Altocumulus Castellanus clouds is often best avoided by aircraft. The appearance of Altocumulus Castellanus early in a sunny day may indicate a high probability the formation of thunderstorms in the afternoon, as they may develop into cumulonimbus storm clouds." withImage:@"AltocumulusCastellanus.jpg"],
                   [Cloud newCloud:@"Stratocumulus Lenticularis" withClassification:@"Tropospheric" withInformation:@"Stratocumulus fractus are fragmented strands of stratocumulus often seen between larger stratocumuli in a perculidus sheet. They are also seen when a layer of stratocumulus is breaking up." withImage:@"StratocumulusLenticularis.jpg"],
                  nil];
    
    filteredCloudArray =[[NSMutableArray alloc] initWithCapacity:[cloudArray count]];
    [self.tableView reloadData];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.searchDisplayController.searchResultsTableView)
    {
        return [filteredCloudArray count];
    }
    
    else
    {
        return [cloudArray count];
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CloudCell";
    CloudCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if ( cell == nil )
    {
        cell = [[CloudCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    
    Cloud *cloudToDisplay = nil;
    
    if (tableView == self.searchDisplayController.searchResultsTableView)
    {
        cloudToDisplay = [filteredCloudArray objectAtIndex:indexPath.row];
    }
    
    else
    {
        cloudToDisplay = [cloudArray objectAtIndex:indexPath.row];
    }
    
    cell.nameLabel.text = cloudToDisplay.name;
    cell.classificationLabel.text = cloudToDisplay.classification;
    cell.imageView.image = [UIImage imageNamed:cloudToDisplay.imageFile];
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    return cell;
}


#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Cloud *cloudToSend = nil;
    
    if (tableView == self.searchDisplayController.searchResultsTableView)
    {
        cloudToSend = [filteredCloudArray objectAtIndex:indexPath.row];
    }
    
    else
    {
        cloudToSend = [cloudArray objectAtIndex:indexPath.row];
    }
    
    CloudDetailViewController *newViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"CloudDetail"];
    newViewController.imageFile = cloudToSend.imageFile;
    newViewController.information = cloudToSend.information;
    [self.navigationController pushViewController:newViewController animated:YES];
}


#pragma mark Content Filtering
-(void)filterContentForSearchText:(NSString*)searchText scope:(NSString*)scope
{
    [filteredCloudArray removeAllObjects];
    
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF.name contains[c] %@", searchText];
    filteredCloudArray = [NSMutableArray arrayWithArray:[cloudArray filteredArrayUsingPredicate:predicate]];
}


#pragma mark - UISearchDisplayController Delegate Methods
-(BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{   
    [self filterContentForSearchText:searchString scope:
     [[self.searchDisplayController.searchBar scopeButtonTitles] objectAtIndex:[self.searchDisplayController.searchBar selectedScopeButtonIndex]]];
    
    return YES;
}


@end