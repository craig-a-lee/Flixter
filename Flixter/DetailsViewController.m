//
//  DetailsViewController.m
//  Flixter
//
//  Created by Craig Lee on 6/16/22.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *detailView;
@property (weak, nonatomic) IBOutlet UILabel *labelDetailPage;
@property (weak, nonatomic) IBOutlet UILabel *synopsisDetailPage;
@property (weak, nonatomic) IBOutlet UIImageView *posterPic3;



@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.labelDetailPage.text = self.detailDict[@"title"];
    self.synopsisDetailPage.text = self.detailDict[@"overview"];
    NSString *baseURLString = @"https://image.tmdb.org/t/p/w500";
    NSString *posterURLString = self.detailDict[@"poster_path"];
    NSString *fullPosterURLString = [baseURLString stringByAppendingString:posterURLString];
    
    NSURL *posterURL = [NSURL URLWithString:fullPosterURLString];
    [self.posterPic3 setImageWithURL:posterURL];
    // Do any additional setup after loading the view.
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
