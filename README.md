This is to demonstrate, how we can refresh data of Main view (or do any other tasks on Main view), when coming back from Modal view (after dismissing Modal view). 

Working: 

Need to create a protocol in the Modal VC with a method to be implemented in Main VC
In Modal VC, this methods need to be called while view is disappearing 

Main VC needs to adopt this delegate 
In Main VC, need to assign delegate (self) right before performing segue to Modal view 
In Main VC, delegate method needs to be implemented (reload/refresh data code, etc.)
