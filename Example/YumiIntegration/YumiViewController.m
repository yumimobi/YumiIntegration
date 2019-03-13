//
//  YumiViewController.m
//  YumiIntegration
//
//  Created by wzy2010416033@163.com on 03/13/2019.
//  Copyright (c) 2019 wzy2010416033@163.com. All rights reserved.
//

#import "YumiViewController.h"
#import <YumiMediationSDK/YumiMediationBannerView.h>

#define YumibannerPlacementID @"l6ibkpae"

@interface YumiViewController () <YumiMediationBannerViewDelegate>
@property (nonatomic) YumiMediationBannerView *banner;

@end

@implementation YumiViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)loadAndDisplayBanner:(id)sender {
    [self.banner loadAd:YES];
    [self.view addSubview:self.banner];
}

- (YumiMediationBannerView *)banner {
    if (!_banner) {
        _banner = [[YumiMediationBannerView alloc] initWithPlacementID:YumibannerPlacementID
                                                             channelID:@""
                                                             versionID:@""
                                                              position:YumiMediationBannerPositionBottom
                                                    rootViewController:self];
        _banner.delegate = self;
    }
    return _banner;
}

/// Tells the delegate that an ad has been successfully loaded.
- (void)yumiMediationBannerViewDidLoad:(YumiMediationBannerView *)adView{
    
}

/// Tells the delegate that a request failed.
- (void)yumiMediationBannerView:(YumiMediationBannerView *)adView didFailWithError:(YumiMediationError *)error{
    
}

/// Tells the delegate that the banner view has been clicked.
- (void)yumiMediationBannerViewDidClick:(YumiMediationBannerView *)adView{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
