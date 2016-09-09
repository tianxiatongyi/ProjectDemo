//
//  HuoDongVC.m
//  ProjectDemo
//
//  Created by student on 16/9/8.
//  Copyright © 2016年 student. All rights reserved.
//

#import "HuoDongVC.h"
#import "HuoDongCell.h"
#import "HouDongRequest.h"
#import "HuoDongModel.h"
#import "Header.h"
#import "MJRefreshGifHeader.h"
#import "MJRefreshAutoGifFooter.h"
#import "MJRefreshHeader.h"
#import "SVProgressHUD.h"
@interface HuoDongVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) NSMutableArray* dataArr;
@end

@implementation HuoDongVC
-(NSMutableArray*)dataArr{
    if (!_dataArr) {
        _dataArr=[NSMutableArray array];
    }
    return _dataArr;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self createRefreshHeaderAndFoofer];
    [self getData];
    [self loadMoreData];
    [self.tableView registerClass:[HuoDongCell class] forCellReuseIdentifier:@"cell"];
    
    
    
}

//-(void)createRefreshHeaderAndFoofer
//{
//    MJRefreshGifHeader *header=[MJRefreshGifHeader headerWithRefreshingTarget:self refreshingAction:@selector(refreshData)];
//    [header setImages:RefreshImages forState:(MJRefreshStateRefreshing)];
//    header.lastUpdatedTimeLabel.hidden = YES;
//    [header setTitle:@"下拉刷新" forState:MJRefreshStateIdle];
//    [header setTitle:@"松开刷新" forState:MJRefreshStatePulling];
//    [header setTitle:@"小客正在刷新" forState:MJRefreshStateRefreshing];
//    self.tableView.mj_header=header;
//    [header beginRefreshing];
//    
//    MJRefreshAutoGifFooter *footer=[MJRefreshAutoGifFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadMoreData)];
//    [footer setImages:RefreshImages forState:(MJRefreshStateRefreshing)];
//    [footer setTitle:@"上拉加载更多数据" forState:MJRefreshStateIdle];
//    [footer setTitle:@"松开加载" forState:MJRefreshStatePulling];
//    [footer setTitle:@"小客正在加载" forState:MJRefreshStateRefreshing];
//    self.tableView.mj_footer=footer;
//}
//-(void)refreshData{
//    
//    [self getData];
//    
//}

-(void)getData{
    [self.dataArr removeAllObjects];
    __weak typeof(self)weakSelf=self;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
      [HouDongRequest getDataWithID:@"0" withBlock:^(HuodongData *data) {
          [weakSelf.dataArr addObjectsFromArray:data.data];
          [weakSelf.tableView.mj_header endRefreshing];
          [weakSelf.tableView reloadData];
          
      } withErrorBlock:^(NSError * error) {
          [SVProgressHUD showWithStatus:@"失败了，再来一次!"];
          [weakSelf.tableView.mj_header endRefreshing];
          
      }];
        
        
    });
    
}
-(void)loadMoreData{
   
    __weak typeof(self)weakSelf=self;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        HuoDongModel* model=[self.dataArr lastObject];
        
        [HouDongRequest getDataWithID:model.actionId  withBlock:^(HuodongData *data) {
            [weakSelf.dataArr addObjectsFromArray:data.data];
            [weakSelf.tableView.mj_footer endRefreshing];
            dispatch_async(dispatch_get_main_queue(), ^{
                [weakSelf.tableView reloadData];
            });
            
        } withErrorBlock:^(NSError * error) {
            [SVProgressHUD showWithStatus:@"失败了，再来一次!"];
            [weakSelf.tableView.mj_footer endRefreshing];
            
        }];
        
        
    });

}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArr.count;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    HuoDongModel* model=self.dataArr[indexPath.row];
    CGFloat height=kMainW/[model.width floatValue]*[model.height floatValue];
    return height+kMainW/8;


}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    HuoDongCell* cell=[tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    HuoDongModel* model=self.dataArr[indexPath.row];
    
    cell.model=model;
    
    
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
