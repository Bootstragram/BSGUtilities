//
//  BSGArrayDataSource.h
//  Petites Musiques de Train
//
//  Created by Mickaël Floc'hlay on 25/09/2014.
//  Copyright (c) 2014 Bootstragram. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^TableViewCellConfigureBlock)(id cell, id item);

/**
 A `UITableViewDataSource` implementation using an `NSArray` as a base.

 :param: idinitWithItems Preferred initializer
 */
@interface BSGArrayDataSource : NSObject<UITableViewDataSource>

/**
 *  Initializer
 *
 *  @param anItems             the array of data
 *  @param aCellIdentifier     the cell identifier
 *  @param aConfigureCellBlock the block to configure cells
 *
 *  @return <#return value description#>
 */
- (id)initWithItems:(NSArray *)anItems
     cellIdentifier:(NSString *)aCellIdentifier
 configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock;

/**
 *  Returns the item at the given indexPath.
 *
 *  @param indexPath indexPath of the object to return (section is ignored, only
 *                   row is used)
 *
 *  @return the item at the given indexPath.
 */
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
