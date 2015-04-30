//
//  ViewController.m
//  TestEmbedTableView
//
//  Created by Lin, Forrest on 4/30/15.
//  Copyright (c) 2015 Lin, Forrest. All rights reserved.
//

#import "ViewController.h"
#import "EmbedTableViewCell.h"

static NSString* cell0 = @"cell0";
static NSString* cell1x = @"cell1x";

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    mainTableVIew = [UITableView new];
    mainTableVIew.frame = self.view.frame;
    mainTableVIew.delegate = self;
    mainTableVIew.dataSource = self;
    [self.view addSubview:mainTableVIew];
    
    [mainTableVIew registerClass:[EmbedTableViewCell class] forCellReuseIdentifier:cell0];
    [mainTableVIew registerClass:[UITableViewCell class] forCellReuseIdentifier:cell1x];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row == 0 ) {
        return 200.;
    }else{
        return 60;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 30;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = nil;
    
    if (indexPath.row == 0 ) {
        cell = [[EmbedTableViewCell alloc] init];
    }else{
        cell = [tableView dequeueReusableCellWithIdentifier:cell1x];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cell1x];
        }
    }

    if (indexPath.row == 0 ) {
        
    }else{
        cell.textLabel.text = [NSString stringWithFormat:@"index %ld",indexPath.row];
    }
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
