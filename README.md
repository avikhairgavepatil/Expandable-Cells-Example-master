# Expandable-Cells-Example-master
Expand TableView Cell With Auyolayout
EXPANDABLE TABLE VIEW CELLS
As some of you may already noticed, expandable Table View Cells are very common across various iOS apps

insertRowsAtIndexPath()


But in my experience, it leads to terrible hassle with reusing cells. In other words, it gave me a headache to cover all cases when TableView was scrolled, reloaded, blah blah blah
I really like doing it by modyfing height constaint. However, before you read further, I’d like to familiarize you with pros and cons of such approach.


Pros
       no hassle with with reusing cells
       relatively simple to understand
       quick to implement
       sufficient in most cases
Cons
       only for simple autolayout design
       when height can’t be constant
       Alright, that’s it for introduction. If you considered pros and cons and still want to learn how to do it, let’s dive in!

What we are going to build
       It’s going to be a simple example with three Table View Cells with label and image. Whenever user taps on cell, it slides down showing the image. Pretty neat.






Interface setup

I assume you know how to build apps for iOS so I will not cover how to create project etc.
In your storyboard, make the following interface that consists of ViewController, UITableView and UITableViewCell with UILabel and UIStackView InSide UIView. 
It should look like that:


Set the constraints for the UILabel:


and for the UIView:


And don’t forget to set Cell’s identifier to “ExpandableCell”. Ok, let’s move on
Custom UITableViewCell class
Create class named ExpandableCell and connect the View outlets. Don’t forget to connect NSLayoutConstraint as outlet as well.



Your class should look the following way now:
next, we will add a boolean named isExpanded that indicates cell’s current state and adjusts imgHeightConstraint constant accordingly. Notice we implement property observer DidSet to handle the state of boolean.



let’s move to the ViewController!
ViewController implementation
Connecting UITableView to our controller is pretty obvious, the same with  setting both delegate and dataSource to self, right?:)
For now, our ViewController should look like this:



 Let me tell you what is going on here.
We check if the cell is already expanded, if so we remove it from expandedRows Set, otherwise we insert it.  Then we switch isExpanded value to the opposite one and reload cell.
That’s it, we did it!
Thanks for reading!
I strongly encourage you to share your insights in comme
