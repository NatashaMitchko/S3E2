//
//  ViewController.m
//  Loser
//
//  Created by Natasha Mitchko on 8/7/17.
//  Copyright © 2017 Natasha Mitchko. All rights reserved.
//

#import "ViewController.h"

#import <AudioToolbox/AudioToolbox.h>

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)playLoserSound:(id)sender {
    NSString *soundPath = [[NSBundle mainBundle] pathForResource:@"loser" ofType:@"wav"];
    NSURL *soundURL = [NSURL fileURLWithPath:soundPath];
    
    SystemSoundID soundID;
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)soundURL, &soundID);
    AudioServicesPlaySystemSound(soundID);
}
@end
