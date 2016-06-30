//
//  ViewController.m
//  myMapTest
//
//  Created by genilex3 on 16/3/17.
//  Copyright © 2016年 genilex3. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"
#import "shitOne.h"
#import "shitOne+shitT.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    shitOne *ss = [[shitOne alloc]init];
    [ss sayTwo];
    
    
    
    
}

-(void)myafn{
    
    //    AFURLSessionManager *manager = [[AFURLSessionManager alloc]initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    //    manager.securityPolicy.allowInvalidCertificates = YES;
    //
    //    NSURL *url = [NSURL URLWithString:@"http://www.weather.com.cn/data/sk/101010100.html"];
    
    //   NSMutableURLRequest *mre = [[AFJSONRequestSerializer serializer] requestWithMethod:@"post" URLString:@"http://www.weather.com.cn/data/sk/101010100.html" parameters:nil error:nil];
    //    NSString *stringurl2 = @"http://www.baidu.com";
    
    //    NSString *stringUrl = @"http://www.weather.com.cn/data/sk/101010100.html";
    //    AFHTTPSessionManager *managerr = [AFHTTPSessionManager manager];
    //    managerr.responseSerializer = [AFJSONResponseSerializer serializer];
    //    [managerr.responseSerializer setAcceptableContentTypes:[NSSet setWithObjects:@"text/javascript",@"text/plain","text/json","text/html",nil]];
    //
    //    managerr.securityPolicy.allowInvalidCertificates = YES;
    //    [managerr GET:stringUrl parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
    //
    //        NSLog(@"成功:%@",responseObject);
    //
    //    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    //
    //        NSLog(@"失败了");
    //
    //    }];
    
    //    [managerr POST:stringUrl parameters:nil constructingBodyWithBlock:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
    //                NSLog(@"OK");
    //    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
    //                NSLog(@"NO");
    //    }];
    NSString *stringurl2 = @"https://www.baidu.com";
    NSString *stringUrl = @"http://www.weather.com.cn/data/sk/101010100.html";
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.securityPolicy.allowInvalidCertificates = YES;
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json",@"text/json", @"text/plain", @"text/html", nil];
    //    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    //    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    [manager POST:stringurl2 parameters:nil constructingBodyWithBlock:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"OK:%@",responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"NO:%@",error);
    }];
    
    
}



@end
