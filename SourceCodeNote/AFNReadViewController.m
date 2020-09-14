//
//  AFNReadViewController.m
//  SourceCodeNote
//
//  Created by tengfei on 2020/9/14.
//  Copyright © 2020 tengfei. All rights reserved.
//

#import "AFNReadViewController.h"
#import "AFNetworking.h"


@interface AFNReadViewController ()

@end

@implementation AFNReadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    [self testGETrequest];
    
}

- (void)testGETrequest{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    NSString *urlstr = @"http://baidu.book.com";
    NSDictionary *paramDic = @{@"page":@32, @"name":@"历史"};
    [manager GET:urlstr parameters:paramDic progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
