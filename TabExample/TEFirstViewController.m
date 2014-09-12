//
//  TEFirstViewController.m
//  TabExample
//
//  Created by coco on 14-9-9.
//  Copyright (c) 2014年 coco. All rights reserved.
//

#import "TEFirstViewController.h"
#import "TEAppDelegate.h"
#import "SimpleViewController.h"

@interface TEFirstViewController ()

@end

@implementation TEFirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark- 列表数据源方法
-(UITableViewCell *)tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tv dequeueReusableCellWithIdentifier:@"cell"];
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = @"Test";
    return cell;
}

-(NSInteger)tableView:(UITableView *)tv numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

#pragma mark- 列表委托方法
-(void)tableView:(UITableView *)tv didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TEAppDelegate *delegate = (TEAppDelegate *)[[UIApplication sharedApplication] delegate];
    UIViewController *controller = [[SimpleViewController alloc] initWithNibName:@"SimpleViewController" bundle:nil];
    [delegate.navController pushViewController:controller animated:YES];
    [tv deselectRowAtIndexPath:indexPath animated:YES];
}
@end
