//
//  EmbedTableViewCell.h
//  TestEmbedTableView
//
//  Created by Lin, Forrest on 4/30/15.
//  Copyright (c) 2015 Lin, Forrest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmbedTableViewCell : UITableViewCell<UITableViewDataSource,UITableViewDelegate>{
    UITableView* basicTableView;
}

@end
