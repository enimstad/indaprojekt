#import "Collection.h"
#import "Cell.h"

NSString *kDetailedViewControllerID = @"DetailView";    // view controller storyboard id
NSString *kCellID = @"cellID";                          // UICollectionViewCell storyboard id
NSString *emojiz = @"🐱🐯🐶🐵🐙🐸🐞🐻🐼🐨🐷🐮🐰🐹🐭";

@implementation Collection

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return [emojiz length]/2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    // we're going to use a custom UICollectionViewCell, which will hold an image and its label
    //
    Cell *cell = [cv dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
    
    // make the cell's title the actual NSIndexPath value
//    cell.label.text = [NSString stringWithFormat:@"{%ld,%ld}", (long)indexPath.row, (long)indexPath.section];
    
    // load the image for this cell
//    NSString *imageToLoad = [NSString stringWithFormat:@"%d.JPG", indexPath.row];
//    cell.image.image = [UIImage imageNamed:imageToLoad];
    
//    cell.backgroundColor = [UIColor yellowColor];
    cell.label.text = [emojiz substringWithRange:NSMakeRange(2*indexPath.row, 2)];
    
    return cell;
}

// the user tapped a collection item, load and set the image on the detail view controller
//
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"])
    {
        NSIndexPath *selectedIndexPath = [[self.collectionView indexPathsForSelectedItems] objectAtIndex:0];
        
        // load the image, to prevent it from being cached we use 'initWithContentsOfFile'
//        NSString *imageNameToLoad = [NSString stringWithFormat:@"%d_full", selectedIndexPath.row];
//        NSString *pathToImage = [[NSBundle mainBundle] pathForResource:imageNameToLoad ofType:@"JPG"];
//        UIImage *image = [[UIImage alloc] initWithContentsOfFile:pathToImage];
//        
//        DetailViewController *detailViewController = [segue destinationViewController];
//        detailViewController.image = image;
    }
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
//    NSLog(@"%@", [self presentingViewController]);
    [[self presentingViewController] performSelector:@selector(chooseEmoji:) withObject:[emojiz substringWithRange:NSMakeRange(2*indexPath.row, 2)]];
    [[self presentingViewController] dismissViewControllerAnimated:NO completion:nil];
}

//- (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender

@end
