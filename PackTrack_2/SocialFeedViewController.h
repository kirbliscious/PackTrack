//
//  SocialFeedViewController.h
//  PackTrack_2
//
//  Created by Michelle Kirby on 5/14/12.
//  Copyright (c) 2012 Parsons The New School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Navigation.h"

@interface SocialFeedViewController : UIViewController{
    Navigation *navigation;
}

@property (readwrite,strong) Navigation *navigation;
@end
