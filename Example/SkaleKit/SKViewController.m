//
//  SKViewController.m
//  SkaleKit
//
//  Created by Ryan on 05/04/2015.
//  Copyright (c) 2014 Ryan. All rights reserved.
//

#import "SKViewController.h"
#import <SkaleKit/SkaleKit.h>
@interface SKViewController () <SKSkaleDelegate>
@property (nonatomic, strong) SKSkale *skale;
@end

@implementation SKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.skale = [[SKSkale alloc] init];
    
    self.skale.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - SKSkaleDelegate

- (void)skaleDidConnected:(SKSkale *)skale
{
}

- (void)skaleDidDisconnected:(SKSkale *)skale
{
}

- (void)skale:(SKSkale *)skale DidErrorOccur:(NSError *)error
{
}

- (void)skaleWeightDidUpdate:(Float32)weight
{
    [self.weightLabel setText:[NSString stringWithFormat:@"%.1fg",weight]];
}


@end
