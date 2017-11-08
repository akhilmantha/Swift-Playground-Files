//: Playground - noun: a place where people can play

import UIKit
import Contacts

let contact = CNMutableContact()

contact.imageData = NSData()
contact.givenName = "Akhil"
contact.familyName = "Mantha"

let home_email  = CNLabeledValue(label: CNLabelHome, value: "akhilmantha@gmail.com")
let work_email = CNLabeledValue(label: CNLabelWork, value: "akhilmantha@live.com")
contact.emailAddresses = [home_email,work_email]

contact.phoneNumbers = [CNLabeledValue(label:CNLabelPhoneNumberiPhone , value: CNPhoneNumber(stringValue: "8939160283"))]
let home_address = CNMutablePostalAddress()
home_address.street = "homefinders street"
home_address.city = "chennai"
home_address.country = "India"
home_address.postalCode = "600089"
home_address.ISOCountryCode = "+91"


let birthday = NSDateComponents()
birthday.day = 14
birthday.month = 09
birthday.year = 1996

contact.birthday = birthday
let store = CNContactStore()
let save_request = CNSaveRequest()
save_request.addContact(contact, toContainerWithIdentifier: nil)

try! store.executeSaveRequest(save_request)

//notes

contact.note = "extra space to add information"

// socail meadia accounts

let facebook_profile = CNLabeledValue(label : "Facebook", value : CNSocialProfile(urlString: nil, username: "akhilmantha" , userIdentifier: nil, service: CNSocialProfileServiceFacebook)
    
let Linkdn_profile = CNLabeledValue(label : "Linkdn", value : CNSocialProfile(urlString: nil, username: "manthaman", userIdentifier: nil, service: CNSocialProfileServiceLinkedIn))

contact.socialProfiles = [facebook_profile, Linkdn_profile]

// to check contact with profile photos

//for contact in Contacts{
  //  guard contact.imageDataAvailable else{
    // continue


//formatting contact_name

let fullname = CNContactFormatter.stringFromContact(contact, style: .FullName)
print(fullname)

//formatting postal_address

let postal_address = CNPostalAddressFormatter.stringFromPostalAddress(home_address)
print(postal_address)



//filtering contacts using predicates

let predicate : NSPredicate = CNContact.predicateForContactsMatchingName("Mantha")
//let predicate : NSPredicate = CNContact.predicateForContactsWithIdentifiers("")


//fetching contacts with key descriptors

let keyvalue = [CNContactEmailAddressesKey, CNContactFormatter.descriptorForRequiredKeysForStyle(.FullName)]


//checking the key values

if (contact.isKeyAvailable(CNContactPhoneNumbersKey))
{
    
    print("\(contact.phoneNumbers)")
}

else {
    
    let keystofetch = [CNContactGivenNameKey,CNContactFamilyNameKey,CNContactPhoneNumbersKey]
    let refetchedcontact = try store.unifiedContactWithIdentifier(contact.identifier,keysToFetch: keystofetch)
    
}

//for alert view controller

 func requestForAccess(completionHandler: (accessGranted: Bool)-> Void)
{
   authenicationStatus = CNContactStore.authorizationStatusForEntityType(CNEntityType.Contacts)
}

switch authStatus{
    
case .Authorized:
        completionHandler(accessGranted : true)
    
case .Denied , .NotDetermined : break
    self.ContactStore
}




