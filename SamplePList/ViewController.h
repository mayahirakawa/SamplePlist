//
//  ViewController.h
//  SamplePList
//
//  Created by Maya Hirakawa on 2014/11/04.
//  Copyright (c) 2014年 Maya Hirakawa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

{
    NSArray *_PListArray;

}
@property (weak, nonatomic) IBOutlet UITableView *PListtableview;

@end

