# flutter_counter_with_shared_state
 This Flutter project is a simple example demonstrating the use of InheritedWidget for shared state management in a widget tree. The app features a counter that can be incremented, and the updated counter value is shared across different parts of the widget hierarchy using an InheritedWidget.

# Key Features
InheritedWidget Usage: The project showcases the implementation of an InheritedWidget named InheritedCounter, and InheritedWrapper to efficiently share and manage the state (counter value) across the widget tree.

Dependency Relationship: Descendant widgets such as CounterDisplay and IncrementButton establish a dependency relationship with the InheritedCounter to access and update the shared counter value.

Updating States: InheritedWidget is immutable, therefore it is wrapped inside a StatefulWidget. The InheritedWrapper is a custom class that extends StatefulWidget, since we are going to use the wrapper class in the widget tree. The method of(context) which will return an instance of InheritedWrapperState.

Rebuilding Widgets: The updateShouldNotify method which we override in InheritedCounter notify and ensures that dependent widgets are automatically rebuilt when the counter value changes, providing a responsive user interface.

# Structure of the Project
InheritedCounter: The Inherited Widget responsible for holding the shared counter state. 

InheritedWrapper: It is responsible for holding the shared counter state.  It includes the updateCounter method to modify the counter.

CounterDisplay: A descendant widget that displays the current counter value.

CounterIncrement: A descendant widget that provides a button to increment the counter.

MyApp: The main application widget that initializes the InheritedCounter and constructs the widget tree.

# Inherited Widgets Overview
Definition and Purpose

Inherited Widget:
An inherited widget in Flutter is a special type of widget designed for sharing data down the widget tree. It allows the efficient propagation of information, such as application state or configuration, to descendant widgets without the need to pass the data explicitly through constructors.

Inherited widget thus solves the use of constructor of each widget to send data from one widget to the next widget in the tree.


While it's true that the inherited widget itself is immutable, meaning that its properties cannot be changed once it's created, the data it holds and shares can still be updated. When the shared data changes, it triggers a rebuild of the dependent widgets in the widget tree.

Here's how the process typically works:
1.	Immutability of the Inherited Widget:
•	The inherited widget itself is created with immutable properties. Once it's created, you cannot directly modify its properties.
2.	Shared Data:
•	However, the data that the inherited widget holds and shares can be mutable. This data can be changed through some external mechanism, like a state management solution, user input, or other triggers.
3.	Rebuilding Dependents and Process:
•	The of(context) static method is used to get instance of InheritedWidget.
•	The dependOnInheritedWidgetOfExactType method used by a widget to register its interest in changes to the inherited widget. 
•	Descendant widgets can access an instance of inherited widget using the BuildContext and dependOnInheritedWidgetOfExactType<T>() method.
•	dependOnInheritedWidgetOfExactType<T>() method registers the BuildContext with the inherited widget such that when that widget changes this build context is rebuild so that it can obtain new values from inherited widget. 
•	When the shared data changes, the updateShouldNotify method of the inherited widget is called. This method notifies the widget using inherited widget whether the dependent widgets should be rebuilt.


Use Cases
Inherited widgets are commonly used for:
1.	State Management:
•	Managing and sharing application state across various widgets.
2.	Theme Data:
•	Propagating theme-related information such as colors, fonts, and styles.
3.	Configuration Settings:
•	Passing configuration settings or constants throughout the widget tree.
4.	User Authentication:
•	Sharing user authentication status or user-related information.





