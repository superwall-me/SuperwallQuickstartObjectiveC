//
//  ViewController.m
//  SuperwallObjectiveCQuickstart
//
//  Created by Brian Anglin on 9/12/21.
//

#import "ViewController.h"

@import Paywall;

@interface ViewController () <PaywallDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Note: Make sure this delegate is set before trying to load the view!
    [Paywall setDelegate:self];
}

- (void)viewDidAppear:(BOOL)animated
{
    [Paywall presentOn:self cached:false presentationCompletion:nil purchaseCompletion:nil fallback:nil];
}

- (BOOL)shouldPresentPaywall
{
    return true;
}

- (void)shouldTryToRestore
{
    // Try to restore the purchase for the user
}

- (void)userDidInitiateCheckoutFor:(SKProduct * _Nonnull)product
{
    // Use storekit to purchase this product
}



@end
