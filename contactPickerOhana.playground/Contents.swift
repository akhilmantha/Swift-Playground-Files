//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
class OHBasicContactPickerTableViewController {
    
    override init() {
        super.init(style: .Plain)
        
        self.sections = NSMutableOrderedSet<String>()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "ContactCell")
        id < OHContactsDataProviderProtocol > dataProvider
        if CNContact.self {
            dataProvider = OHCNContactsDataProvider(delegate: self)
        }
        else {
            dataProvider = OHABAddressBookContactsDataProvider(delegate: self)
        }
        var alphabeticalSortProcessor = OHAlphabeticalSortPostProcessor(sortMode: OHAlphabeticalSortPostProcessorSortModeFullName)
        self.dataSource = OHContactsDataSource(dataProviders: NSOrderedSet.orderedSetWithObjects(dataProvider, nil), postProcessors: NSOrderedSet.orderedSetWithObjects(alphabeticalSortProcessor, nil))
        self.dataSource!.onContactsDataSourceReadySignal.addObserver(self, callback: {(self: typeof: (self), contacts: NSOrderedSet<OHContact>) -> Void in