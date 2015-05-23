#import "Collection.h"
#import "Cell.h"

NSString *kCellID = @"cellID";                          // UICollectionViewCell storyboard id
NSString *emojiz = @"🐱🐯🐶🐵🐷🐮🐻🐼🐨🐙🐸🐞🐰🐹🐭";

@implementation Collection

- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    return [emojiz length]/2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    Cell *cell = [cv dequeueReusableCellWithReuseIdentifier:kCellID forIndexPath:indexPath];
    cell.label.text = [emojiz substringWithRange:NSMakeRange(2*indexPath.row, 2)];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    [[self presentingViewController] performSelector:@selector(chooseEmoji:) withObject:[emojiz substringWithRange:NSMakeRange(2*indexPath.row, 2)]];
    [[self presentingViewController] dismissViewControllerAnimated:NO completion:nil];
}

@end
