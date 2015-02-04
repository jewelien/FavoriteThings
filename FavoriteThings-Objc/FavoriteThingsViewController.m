//
//  FavoriteThingsViewController.m
//  FavoriteThings-Objc
//
//  Created by Julien Guanzon on 2/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FavoriteThingsViewController.h"



@interface FavoriteThingsViewController () <UITableViewDataSource>

@property(nonatomic, strong) UITableView *tableView;

@end

@implementation FavoriteThingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.tableView = [UITableView new];
    self.tableView.dataSource = self;
    self.tableView.frame = self.view.bounds;
    [self.view addSubview:self.tableView];
    
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"cell"]; //IDENTIFIER
    
}

/*
 #pragma mark - Data Source
 */


//ROWS
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self favoriteThings].count;
}

//CELLS
-(UITableViewCell *)tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.favoriteThings[indexPath.row];
    
    return cell;
    
}

- (NSArray *)favoriteThings {
    return @[@"Breakfast", @"Food", @"DevMountain", @"My instructor", @"Objective C"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
