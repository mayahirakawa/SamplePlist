//
//  ViewController.m
//  SamplePList
//
//  Created by Maya Hirakawa on 2014/11/04.
//  Copyright (c) 2014年 Maya Hirakawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    //オブジェクト内のファイルにアクセスできるオブジェクト宣言
    NSBundle *bundle = [NSBundle mainBundle];
    //読み込むプロパティリストのファイルパス（場所）を指定
    NSString *path = [bundle pathForResource:@"friendPerArea" ofType:@"plist"];
    
    //プロパティリストの中身にデータを取得
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:path];
    //取得できた配列のデータをメンバ変数に代入
    _PListArray = [dic objectForKey:@"prefecuturelist"];
    
   // _PListArray = @[@"北海道",@"青森県",@"岩手県",];
    
    _PListtableview.delegate = self;
    _PListtableview.dataSource =self;

    
}

   // NSLog(@"配列の中身の数:%d",_PListArray.count);
    
    //_coffelisttableview.delegate = self;
    
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
        return _PListArray.count;
        
}
    
-(UITableViewCell *)tableView:(UITableView *)tableView
cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //セルの名前
    static NSString *cellIdentifier = @"cell";
    //再利用可能なcellオブジェクトを作成
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
}
    
    NSDictionary *FriendsWithArea = _PListArray[indexPath.row];

    
    
    cell .textLabel.text = [FriendsWithArea objectForKey:@"Name"];
    return cell;
    




}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
