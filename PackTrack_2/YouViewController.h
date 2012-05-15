//
//  YouViewController.h
//  PackTrack_2
//
//  Created by Michelle Kirby on 5/14/12.
//  Copyright (c) 2012 Parsons The New School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Package.h"
#import "MiniStats.h"

@interface YouViewController : UIViewController{
    NSMutableArray *packages;
    MiniStats* ministats;
    int enrouteCount;
    int sentCount;
    int receivedCount;
}
@property (weak, nonatomic) IBOutlet UITableViewCell *youTableView;
@property(readwrite, strong) NSMutableArray* packages;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *originLabel;
@property (weak, nonatomic) IBOutlet UILabel *serviceLabel;
@property (weak, nonatomic) IBOutlet UILabel *destinationLabel;
@property (weak, nonatomic) IBOutlet UILabel *etaLabel;
@property (readwrite) int enrouteCount;
@property (readwrite) int sentCount;
@property (readwrite) int receivedCount;




@property (weak, nonatomic) IBOutlet UILabel *originHeader;
@property (weak, nonatomic) IBOutlet UILabel *serviceHeader;
@property (weak, nonatomic) IBOutlet UILabel *destinationHeader;
@property (weak, nonatomic) IBOutlet UILabel *etaHeader;

@end
