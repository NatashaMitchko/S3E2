//
//  ViewController.m
//  Loser
//
//  Created by Natasha Mitchko on 8/7/17.
//  Copyright © 2017 Natasha Mitchko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)LoserButton:(id)sender {
    SystemSoundID soundID;
    
    NSString *SoundPath = [[NSBundle mainBundle] pathForResource:@"loser" ofType:@"wav"];
    NSURL *soundURL = [NSURL fileURLWithPath:SoundPath];
    
    AudioServicesCreateSystemSoundID ((__bridge CFURLRef)soundURL, &soundID);
    AudioServicesPlaySystemSound(soundID);
}
@end
