//
//  MoviesTableViewController.h
//  CustomizingTableViewCell
//
//  Created by abc on 28/01/15.
//  Copyright (c) 2015 com.ms. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MoviesTableViewController : UITableViewController
<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) NSMutableArray *marrMovies;

@end
