//
//  ViewController.m
//  JBTest
//
//  Created by Zsombor on 2017. 09. 12..
//  Copyright © 2017. Zsombor. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *JBButton;

@end

@implementation ViewController

- (BOOL) isJailbroken{
    NSFileManager *fileManager = [[NSFileManager alloc] init];
    return [fileManager fileExistsAtPath:(@"/Applications/Cydia.app/Cydia")];
}

- (IBAction)ButtonPressed:(id)sender {
    if ([self isJailbroken]) {
        [[[UIAlertView alloc] initWithTitle:@"Result of test" message:@"Jailbroken!"
                                    delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
    }else{
        [[[UIAlertView alloc] initWithTitle:@"Result of test" message:@"Clean!"
                                    delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
