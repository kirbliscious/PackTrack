//
//  Navigation.h
//  PackTrack_2
//
//  Created by Michelle Kirby on 5/14/12.
//  Copyright (c) 2012 Parsons The New School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Navigation : NSObject{

}

@property (weak, nonatomic) IBOutlet UIButton *you;
@property (weak, nonatomic) IBOutlet UIButton *map;
@property (weak, nonatomic) IBOutlet UIButton *add;
@property (weak, nonatomic) IBOutlet UIButton *socialFeed;

- (IBAction)youScreenSelected:(id)sender;
- (IBAction)addScreenSelected:(id)sender;


@end
