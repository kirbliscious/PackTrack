//
//  MiniStats.h
//  PackTrack_2
//
//  Created by Michelle Kirby on 5/14/12.
//  Copyright (c) 2012 Parsons The New School. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface MiniStats : NSObject{
    
}

@property (weak, nonatomic) IBOutlet UILabel *enroute;
@property (weak, nonatomic) IBOutlet UILabel *sent;
@property (weak, nonatomic) IBOutlet UILabel *received;

-(NSString*) enrouteFunction;

@end
