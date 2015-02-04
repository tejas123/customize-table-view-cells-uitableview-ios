//
//  MoviesTableViewController.m
//  CustomizingTableViewCell


#import "MoviesTableViewController.h"
#import "MoviesTableViewCell.h"
#import "Movie.h"

@interface MoviesTableViewController ()

@end

@implementation MoviesTableViewController
@synthesize marrMovies;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.marrMovies = [NSMutableArray arrayWithCapacity:5];
    
    Movie *movie = [[Movie alloc] init];
    movie.title = @"Dhoom";
    movie.year = @"2000";
    movie.poster = @"Dhoom_poster.jpg";
    [self.marrMovies addObject:movie];
    
    movie = [[Movie alloc] init];
    movie.title = @"Dedh Ishquiya";
    movie.year = @"2013";
    movie.poster = @"DedhIshquiya.jpg";
    [self.marrMovies addObject:movie];
    
    movie = [[Movie alloc] init];
    movie.title = @"Happy New Year";
    movie.year = @"2014";
    movie.poster = @"HappyNewYear_Poster.jpg";
    [self.marrMovies addObject:movie];
    
    movie = [[Movie alloc] init];
    movie.title = @"Luck By Chance";
    movie.year = @"2010";
    movie.poster = @"LuckByChance_Poster.jpg";
    [self.marrMovies addObject:movie];
    
    movie = [[Movie alloc] init];
    movie.title = @"Vicky Donor";
    movie.year = @"2012";
    movie.poster = @"VickyDonor_Poster.jpg";
    [self.marrMovies addObject:movie];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [marrMovies count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *cellIdentifier = @"MovieCell";
    MoviesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    Movie *movie = (self.marrMovies)[indexPath.row];
    cell.lblTitle.text = movie.title;
    cell.lblYear.text = movie.year;
    cell.imgPoster.image = [UIImage imageNamed:movie.poster];

    return cell;
}

@end
