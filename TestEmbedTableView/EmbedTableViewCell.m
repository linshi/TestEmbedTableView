//
//  EmbedTableViewCell.m
//  TestEmbedTableView
//
//  Created by Lin, Forrest on 4/30/15.
//  Copyright (c) 2015 Lin, Forrest. All rights reserved.
//

#import "EmbedTableViewCell.h"

static NSString* cell1 = @"basic_cell";

@implementation EmbedTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    basicTableView = [UITableView new];
    basicTableView.frame = self.frame;
    basicTableView.delegate = self;
    basicTableView.dataSource = self;
    [self addSubview:basicTableView];
    
    [basicTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cell1];
}


- (instancetype)init{

    self = [super init];
    
    [self awakeFromNib];
    
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 88;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cell1];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cell1];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"embedded index %ld",indexPath.row];
    
    return cell;
}



@end
