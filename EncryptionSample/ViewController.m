//
//  ViewController.m
//  EncryptionSample
//
//  Created by Satish on 26/01/17.
//  Copyright © 2017 xyx. All rights reserved.
//

#import "ViewController.h"
#import "AESCrypt.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *message = @"word press";
    NSString *password = @"p4ssw0rd";
    NSString *encryptedData = [AESCrypt encrypt:message password:password];
    NSLog(@"encrypted data:%@",encryptedData);
    NSString *decryptedmessage = [AESCrypt decrypt:encryptedData password:password];
    NSLog(@"decrypted data:%@",decryptedmessage);

    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
