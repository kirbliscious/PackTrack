//
//  MiniStats.m
//  PackTrack_2
//
//  Created by Michelle Kirby on 5/14/12.
//  Copyright (c) 2012 Parsons The New School. All rights reserved.
//

#import "MiniStats.h"

@implementation MiniStats
@synthesize enroute;
@synthesize sent;
@synthesize received;

-(id)init{
    self = [super init];
    if(self){
        UIFont* myFont = [UIFont fontWithName:@"AkzidenzLight" size:20];
        enroute.font = myFont;
        sent.font = myFont;
        received.font = myFont;
    }
    return self;
}

-(NSString*) enrouteFunction{
    
}
@end
