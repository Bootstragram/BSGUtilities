# BSGUtilities

[![CI Status](http://img.shields.io/travis/Bootstragram/BSGUtilities.svg?style=flat)](https://travis-ci.org/Bootstragram/BSGUtilities)
[![Version](https://img.shields.io/cocoapods/v/BSGUtilities.svg?style=flat)](http://cocoadocs.org/pods/BSGUtilities)
[![License](https://img.shields.io/cocoapods/l/BSGUtilities.svg?style=flat)](http://cocoadocs.org/pods/BSGUtilities)
[![Platform](https://img.shields.io/cocoapods/p/BSGUtilities.svg?style=flat)](http://cocoadocs.org/pods/BSGUtilities)

BSGUtilities is both a playground to play around some iOS concept and a CocoaPod with utilities. For more details about what it contains, please visit the website.

## Installation

```
pod 'BSGUtilities'
```

## Usage

Please refer to the website for details about usage.

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Development

Install dependencies:

    make install

Validate the pod:

    make lint

Generate the docs:

    make docs

Publish the pod to the repo:

    make publish

## License

[MIT](https://choosealicense.com/licenses/mit/)

## How-Tos

### How to use the Core Data debug views?

The easisest way to install the Core Data debug views is via the Storyboard.

Create 3 table view controllers, with the following class names, table view cell identifier and segue identifiers:

1. `BSGEntitiesTableViewController` should use cells with *Right Detail* style, `BSGEntitiesViewControllerCell`
   cell identifier and *Disclosure Indicator* accessory using a `BSGManagedObjectsTableViewController` segue.
2. `BSGManagedObjectsTableViewController` should use cells with *Right Detail* style, `BSGManagedObjectsViewControllerCell`
   cell identifier and *Disclosure Indicator* accessory using a `BSGManagedObjectDetailTableViewController` segue.
3. `BSGManagedObjectDetailTableViewController` should use cells with *Left Detail* style, `BSGManagedObjectDetailViewControllerCell`
   cell identifier
