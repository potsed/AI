# Software Design Patterns

This document describes all the major software design patterns, their uses, and when they should be applied.

## Creational Patterns

### Singleton Pattern
**Purpose**: Ensure a class has only one instance and provide a global point of access to it.

**When to Use**:
- When exactly one instance of a class is needed
- When that instance needs to be accessible globally
- When lazy initialization is required

**Example Use Cases**:
- Database connection pools
- Logging services
- Configuration managers
- Cache managers

**Implementation Considerations**:
- Thread safety in multi-threaded environments
- Lazy vs eager initialization
- Serialization issues
- Testing difficulties due to global state

### Factory Method Pattern
**Purpose**: Define an interface for creating an object, but let subclasses decide which class to instantiate.

**When to Use**:
- When a class cannot anticipate the class of objects it must create
- When a class wants its subclasses to specify the objects it creates
- When classes delegate responsibility to one of several helper subclasses

**Example Use Cases**:
- Frameworks that need to create objects without knowing their exact types
- Database drivers where different implementations are needed
- UI frameworks with different look-and-feel implementations

**Implementation Considerations**:
- Parameterized factory methods for simple cases
- Creator class hierarchy for complex cases
- Consider using abstract factory for families of products

### Abstract Factory Pattern
**Purpose**: Provide an interface for creating families of related or dependent objects without specifying their concrete classes.

**When to Use**:
- When a system must be independent of how its products are created, composed, and represented
- When a system must be configured with one of multiple families of products
- When a family of related product objects is designed to be used together
- When you want to enforce constraints on the products used together

**Example Use Cases**:
- UI toolkits for different operating systems
- Game engines with different rendering backends
- Database access layers for different vendors
- Cross-platform application frameworks

**Implementation Considerations**:
- Difficult to support new kinds of products
- Easy to swap entire product families
- Consider factory method for simpler cases

### Builder Pattern
**Purpose**: Separate the construction of a complex object from its representation so that the same construction process can create different representations.

**When to Use**:
- When an algorithm for creating a complex object should be independent of the parts that make up the object and how they're assembled
- When the construction process must allow different representations for the object that's constructed
- When you need to create complex objects step by step

**Example Use Cases**:
- Building complex HTML documents
- Constructing SQL queries
- Creating complex meal combinations in restaurant systems
- Building user interfaces with multiple components

**Implementation Considerations**:
- Consider using fluent interface for better readability
- Decide whether builders should be reusable
- Consider implementing Director class for common construction processes

### Prototype Pattern
**Purpose**: Specify the kinds of objects to create using a prototypical instance, and create new objects by copying this prototype.

**When to Use**:
- When classes to instantiate are specified at run-time
- When instances of a class can have one of only a few different combinations of state
- When object creation is expensive and you want to avoid subclassing
- When you want to hide the complexity of creating new instances

**Example Use Cases**:
- Graphic editors that create copies of shapes
- Game engines that clone enemies or items
- Configuration objects that are similar but slightly different
- Object caching systems

**Implementation Considerations**:
- Deep vs shallow copying decisions
- Initialization of cloned objects
- Consider using registry of prototypes
- Performance benefits for expensive object creation

## Structural Patterns

### Adapter Pattern
**Purpose**: Convert the interface of a class into another interface clients expect. Adapter lets classes work together that couldn't otherwise because of incompatible interfaces.

**When to Use**:
- When you want to use an existing class but its interface doesn't match what you need
- When you want to create a reusable class that cooperates with unrelated classes
- When you have multiple classes with incompatible interfaces that need to work together

**Example Use Cases**:
- Integrating legacy code with new systems
- Third-party library integration
- Database driver implementations
- File format converters

**Implementation Considerations**:
- Class adapter vs object adapter tradeoffs
- Two-way adapters for bidirectional compatibility
- Pluggable adapters for runtime configuration
- Consider composition over inheritance

### Bridge Pattern
**Purpose**: Decouple an abstraction from its implementation so that the two can vary independently.

**When to Use**:
- When you want to avoid permanent binding between abstraction and implementation
- When both abstractions and implementations should be extensible by subclassing
- When changes in implementation shouldn't impact client code
- When you want to share an implementation among multiple objects

**Example Use Cases**:
- Windowing systems with different platforms
- Database access layers with different vendors
- Drawing APIs with different rendering engines
- Device drivers with different hardware

**Implementation Considerations**:
- Interface segregation for clean separation
- Consider using abstract factory for implementation creation
- Performance implications of indirection
- Encapsulation boundaries between abstraction and implementation

### Composite Pattern
**Purpose**: Compose objects into tree structures to represent part-whole hierarchies. Composite lets clients treat individual objects and compositions of objects uniformly.

**When to Use**:
- When you want to represent part-whole hierarchies of objects
- When you want clients to be able to ignore the difference between compositions of objects and individual objects
- When the structure can have nested components
- When you need to treat objects and groups of objects the same way

**Example Use Cases**:
- File system representations
- GUI component hierarchies
- Menu systems with nested menus
- Organization charts
- Arithmetic expressions with nested operations

**Implementation Considerations**:
- Shared component list for memory efficiency
- Parent references for navigation
- Type safety considerations
- Performance optimization for large hierarchies

### Decorator Pattern
**Purpose**: Attach additional responsibilities to an object dynamically. Decorators provide a flexible alternative to subclassing for extending functionality.

**When to Use**:
- To add responsibilities to individual objects dynamically and transparently
- For responsibilities that can be withdrawn
- When extension by subclassing is impractical
- When you want to add functionality without affecting other objects

**Example Use Cases**:
- Stream processing with filters and transformations
- GUI widgets with additional behaviors
- Text processing with formatting
- Authentication and authorization layers
- Caching and logging wrappers

**Implementation Considerations**:
- Interface consistency between decorators and components
- Order dependency of decorators
- Transparency to clients
- Performance overhead of multiple wrapper objects

### Facade Pattern
**Purpose**: Provide a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use.

**When to Use**:
- To provide a simple interface to a complex subsystem
- To decouple subsystems from clients and other subsystems
- To layer a subsystem
- To make a complex library easier to use

**Example Use Cases**:
- Simplifying complex API interactions
- Library wrappers for easier usage
- System initialization sequences
- Multi-step business processes

**Implementation Considerations**:
- Balancing simplicity with functionality
- Avoiding becoming god objects
- Consider abstract factory for alternative implementations
- Facade vs mediator pattern distinctions

### Flyweight Pattern
**Purpose**: Use sharing to support large numbers of fine-grained objects efficiently.

**When to Use**:
- When an application uses a large number of objects
- When storage costs are high
- When most object state can be extrinsic
- When many groups of objects may be replaced by relatively few shared objects

**Example Use Cases**:
- Text editors with character formatting
- Game engines with terrain tiles
- GUI systems with icon libraries
- Compiler symbol tables
- Network connection pools

**Implementation Considerations**:
- Intrinsic vs extrinsic state separation
- Factory pattern for flyweight management
- Thread safety in concurrent environments
- Memory vs computation tradeoffs

### Proxy Pattern
**Purpose**: Provide a surrogate or placeholder for another object to control access to it.

**When to Use**:
- Remote proxy for accessing remote objects
- Virtual proxy for expensive objects created on demand
- Protection proxy for access control
- Smart reference proxy for additional actions when object is accessed

**Example Use Cases**:
- Remote method invocation
- Lazy initialization of expensive objects
- Access control and permissions
- Caching and reference counting
- Logging and monitoring

**Implementation Considerations**:
- Copy-on-write optimizations
- Reference counting for automatic cleanup
- Thread safety in concurrent access
- Transparency vs explicit proxy awareness

## Behavioral Patterns

### Chain of Responsibility Pattern
**Purpose**: Avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request. Chain the receiving objects and pass the request along the chain until an object handles it.

**When to Use**:
- More than one object may handle a request
- The handler isn't known a priori
- The handler should be determined automatically
- You want to issue a request to one of several objects without specifying the receiver explicitly
- The set of objects that can handle a request should be specified dynamically

**Example Use Cases**:
- Event handling in GUI systems
- Exception handling chains
- Middleware processing pipelines
- Approval workflows
- Logging handlers with different levels

**Implementation Considerations**:
- Explicit successor setup vs implicit chain traversal
- Handler ordering and priority
- Chain termination conditions
- Circular chain prevention

### Command Pattern
**Purpose**: Encapsulate a request as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support undoable operations.

**When to Use**:
- Parameterize objects by an action to perform
- Specify, queue, and execute requests at different times
- Support undo operations
- Support logging changes for system recovery
- Structure a system around high-level operations built on primitive operations

**Example Use Cases**:
- Menu systems with actions
- Undo/redo functionality
- Transaction systems
- Job queues and scheduling
- Macro recording and playback

**Implementation Considerations**:
- Command history management
- Receiver independence
- Parameterized command instantiation
- Composite commands for macro operations

### Interpreter Pattern
**Purpose**: Given a language, define a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language.

**When to Use**:
- When the grammar is simple
- When efficiency is not a critical concern
- When the problem occurs naturally as a language
- When you can represent statements in the language as abstract syntax trees

**Example Use Cases**:
- Expression evaluators
- Domain-specific languages
- Configuration file parsers
- Rule engines
- Report generators

**Implementation Considerations**:
- Class hierarchy for grammar rules
- Abstract syntax tree construction
- Visitor pattern for tree traversal
- Performance optimization for complex grammars

### Iterator Pattern
**Purpose**: Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation.

**When to Use**:
- To access an aggregate object's contents without exposing its internal representation
- To support multiple traversals of aggregate objects
- To provide a uniform interface for traversing different aggregate structures

**Example Use Cases**:
- Collection traversal in programming languages
- Database result set iteration
- File system directory traversal
- Tree and graph traversal algorithms
- Streaming data processing

**Implementation Considerations**:
- Internal vs external iterators
- Concurrent modification handling
- Multiple iterator support
- Bidirectional and random access capabilities

### Mediator Pattern
**Purpose**: Define an object that encapsulates how a set of objects interact. Mediator promotes loose coupling by keeping objects from referring to each other explicitly, and it lets you vary their interaction independently.

**When to Use**:
- A set of objects communicate in well-defined but complex ways
- Reusing an object is difficult because it refers to and communicates with many other objects
- Behavior distributed between several classes should be customizable without subclassing

**Example Use Cases**:
- GUI dialog box coordination
- Chat room implementations
- Air traffic control systems
- MVC architecture controllers
- Plugin architectures

**Implementation Considerations**:
- Observer pattern for loose coupling
- Colleague interface design
- Centralized vs distributed mediation
- Mediator complexity management

### Memento Pattern
**Purpose**: Without violating encapsulation, capture and externalize an object's internal state so that the object can be restored to this state later.

**When to Use**:
- A snapshot of an object's state must be saved so that it can be restored to that state later
- A direct interface to obtaining the state would expose implementation details and break the object's encapsulation

**Example Use Cases**:
- Undo mechanisms in text editors
- Checkpointing in games
- Database transaction rollback
- Browser back button functionality
- Session state management

**Implementation Considerations**:
- Caretaker responsibility limitations
- Narrow vs wide interface tradeoffs
- Memory usage optimization
- Originator encapsulation preservation

### Observer Pattern
**Purpose**: Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified automatically.

**When to Use**:
- When an abstraction has two aspects, one dependent on the other
- When a change to one object requires changing others, and you don't know how many objects need to be changed
- When an object should be able to notify other objects without making assumptions about who these objects are

**Example Use Cases**:
- Model-view separation in MVC
- Event handling systems
- Publish-subscribe messaging
- Notification systems
- Reactive programming frameworks

**Implementation Considerations**:
- Push vs pull notification models
- Update order and consistency
- Memory leak prevention with weak references
- Thread safety in concurrent environments

### State Pattern
**Purpose**: Allow an object to alter its behavior when its internal state changes. The object will appear to change its class.

**When to Use**:
- An object's behavior depends on its state, and it must change its behavior at run-time depending on that state
- Operations have large, multipart conditional statements that depend on the object's state
- State-specific behavior is complex

**Example Use Cases**:
- TCP connection state management
- Order processing workflows
- Game character states
- Media player states
- Finite state machines

**Implementation Considerations**:
- State transition table implementation
- Shared state instances vs state objects
- Entry/exit actions for states
- Hierarchical state organization

### Strategy Pattern
**Purpose**: Define a family of algorithms, encapsulate each one, and make them interchangeable. Strategy lets the algorithm vary independently from clients that use it.

**When to Use**:
- Many related classes differ only in their behavior
- You need different variants of an algorithm
- An algorithm uses data that clients shouldn't know about
- A class defines many behaviors, and you want to avoid large conditional statements

**Example Use Cases**:
- Sorting algorithm selection
- Compression algorithm choices
- Routing algorithm variations
- Payment method processing
- Tax calculation strategies

**Implementation Considerations**:
- Strategy interface design
- Context configuration mechanisms
- Strategy creation and lifetime management
- Performance comparison of alternatives

### Template Method Pattern
**Purpose**: Define the skeleton of an algorithm in an operation, deferring some steps to subclasses. Template Method lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure.

**When to Use**:
- To implement the invariant parts of an algorithm once and leave it up to subclasses to implement the behavior that can vary
- When common behavior among subclasses should be factored and localized in a common class
- To control subclass extensions

**Example Use Cases**:
- Application frameworks with customizable hooks
- Data processing pipelines
- Build processes with variant steps
- Game turn processing
- Report generation templates

**Implementation Considerations**:
- Hook method design
- Abstract vs concrete method balance
- Template method finality enforcement
- Hollywood Principle ("Don't call us, we'll call you")

### Visitor Pattern
**Purpose**: Represent an operation to be performed on the elements of an object structure. Visitor lets you define a new operation without changing the classes of the elements on which it operates.

**When to Use**:
- An object structure contains many classes of objects with differing interfaces
- You need to perform operations across these classes that depend on their concrete classes
- Many distinct and unrelated operations need to be performed on objects in an object structure
- The classes defining the object structure rarely change, but you often want to define new operations over the structure

**Example Use Cases**:
- Code generation and analysis
- Mathematical expression evaluation
- Document processing and formatting
- Network packet handling
- AST traversal in compilers

**Implementation Considerations**:
- Double dispatch mechanism
- Visitor interface design
- Object structure traversal patterns
- Accumulator pattern for result collection

## Concurrency Patterns

### Active Object Pattern
**Purpose**: Decouple method execution from method invocation for objects that reside in their own thread of control.

**When to Use**:
- When you need to decouple method execution from method invocation
- For objects that reside in their own thread of control
- To synchronize access to a service object

**Example Use Cases**:
- Actor model implementations
- Thread-safe service objects
- Asynchronous processing queues
- Resource managers

### Monitor Object Pattern
**Purpose**: Package procedures and shared data in a monitor object so that concurrent access to the shared data is constrained.

**When to Use**:
- When you need to synchronize concurrent access to shared data
- When procedures need exclusive access to shared data
- When you want to encapsulate synchronization mechanisms

**Example Use Cases**:
- Thread-safe collections
- Resource pools
- Critical section protection
- Condition variable implementations

### Half-Sync/Half-Async Pattern
**Purpose**: Separate synchronous and asynchronous processing in a system to simplify programming without reducing performance.

**When to Use**:
- When you need to separate synchronous and asynchronous processing
- To simplify programming without reducing performance
- When dealing with mixed synchronous/asynchronous operations

**Example Use Cases**:
- Web server architectures
- Event-driven systems
- Database connection pools
- I/O processing systems

## Architectural Patterns

### Model-View-Controller (MVC)
**Purpose**: Separate an application into three connected components to isolate business logic from user interface.

**When to Use**:
- When you want to decouple presentation from domain logic
- For applications with complex user interfaces
- When you need multiple views of the same data
- For testable applications with clear separation of concerns

**Example Use Cases**:
- Web applications
- Desktop GUI applications
- Mobile applications
- Enterprise software systems

### Model-View-Presenter (MVP)
**Purpose**: Derivative of MVC that removes the dependency of View from Model and introduces Presenter as an intermediate layer.

**When to Use**:
- When you want thinner views with less business logic
- For better testability of presentation logic
- When you need passive views
- For data binding scenarios

**Example Use Cases**:
- Desktop applications
- Mobile applications
- Web applications with rich client-side logic
- Test-driven development scenarios

### Model-View-ViewModel (MVVM)
**Purpose**: Facilitate separation of development of graphical user interfaces from business logic with data binding mechanisms.

**When to Use**:
- When you have robust data binding mechanisms
- For applications with rich user interfaces
- When you want to minimize code-behind
- For designer-developer workflow separation

**Example Use Cases**:
- WPF applications
- Xamarin applications
- Angular/React/Vue applications
- Silverlight applications

### Layered Architecture
**Purpose**: Organize an application into groups of subtasks where each group of subtasks is at a particular level of abstraction.

**When to Use**:
- When you need clear separation of concerns
- For applications with well-defined layers of responsibility
- When you want to promote reuse and maintainability
- For large, complex enterprise applications

**Example Use Cases**:
- Enterprise applications
- Web applications
- Service-oriented architectures
- Multi-tier systems

### Microservices Architecture
**Purpose**: Structure an application as a collection of loosely coupled services that implement business capabilities.

**When to Use**:
- When you need independent deployability
- For large, complex applications
- When different parts of the application have different scaling requirements
- For organizations with distributed teams

**Example Use Cases**:
- Large-scale web applications
- E-commerce platforms
- SaaS applications
- Cloud-native applications

### Event-Driven Architecture
**Purpose**: Promote loose coupling between interacting software components through event notifications.

**When to Use**:
- When you need loose coupling between components
- For asynchronous processing scenarios
- When you want to build reactive systems
- For complex event processing

**Example Use Cases**:
- Real-time analytics
- Notification systems
- Trading platforms
- IoT applications

## Domain-Specific Patterns

### Repository Pattern
**Purpose**: Mediate between the domain and data mapping layers using a collection-like interface for accessing domain objects.

**When to Use**:
- When you want to decouple domain logic from data access logic
- For better testability through mocking
- When you need a more object-oriented view of the persistence layer
- For complex querying requirements

**Example Use Cases**:
- ORM implementations
- Data access layers
- Unit of work patterns
- CQRS implementations

### Unit of Work Pattern
**Purpose**: Maintain a list of objects affected by a business transaction and coordinate the writing out of changes.

**When to Use**:
- When you need to maintain consistency across multiple operations
- For transaction management
- When you want to optimize database round trips
- For batch operations

**Example Use Cases**:
- Database transaction management
- ORM implementations
- Business transaction coordination
- Change tracking systems

### Service Layer Pattern
**Purpose**: Define an application's boundary with a layer of services that establishes a set of available operations and coordinates the application's response in each operation.

**When to Use**:
- When you want to encapsulate application logic
- For better separation of concerns
- When you need transaction management
- For service-oriented architectures

**Example Use Cases**:
- Business logic encapsulation
- Transaction coordination
- Security enforcement
- Cross-cutting concern implementation

### Data Transfer Object (DTO) Pattern
**Purpose**: Reduce the number of calls when working with remote interfaces by packaging data into a single object.

**When to Use**:
- When working with remote interfaces
- To reduce network round trips
- For transferring data between layers
- When you need to flatten complex object graphs

**Example Use Cases**:
- Web service communications
- API response objects
- Database query results
- Inter-process communication

## Anti-Patterns to Avoid

### God Object
**Problem**: An object that knows too much or does too much.

**Solution**: Apply Single Responsibility Principle and break into smaller, focused objects.

### Spaghetti Code
**Problem**: Code with complex and tangled control structure.

**Solution**: Apply structured programming principles and refactor into clear, modular components.

### Lasagna Code
**Problem**: Code with too many layers of abstraction.

**Solution**: Simplify architecture and remove unnecessary layers.

### Golden Hammer
**Problem**: Over-reliance on a familiar tool or approach.

**Solution**: Evaluate multiple solutions and choose the most appropriate one for each problem.

### Cargo Cult Programming
**Problem**: Using code or practices without understanding why they work.

**Solution**: Understand the underlying principles and apply them thoughtfully.

## Pattern Selection Guidelines

### Factors to Consider:
1. **Problem Complexity**: Simple problems may not need complex patterns
2. **Team Expertise**: Choose patterns your team understands and can maintain
3. **Performance Requirements**: Some patterns introduce overhead
4. **Scalability Needs**: Consider how patterns affect system growth
5. **Maintainability**: Balance flexibility with complexity
6. **Development Timeline**: Complex patterns may slow initial development
7. **Future Extensibility**: Consider how patterns affect future changes

### Pattern Combination:
Many real-world problems require combining multiple patterns:
- MVC often combines Observer, Strategy, and Composite patterns
- Microservices may use Gateway, Circuit Breaker, and Service Discovery patterns
- Data access layers often combine Repository, Unit of Work, and DTO patterns

### When NOT to Use Patterns:
- When the pattern complicates rather than simplifies the solution
- When the pattern introduces unnecessary overhead
- When team members don't understand the pattern
- When simpler approaches would suffice
- When the pattern fights against the framework or platform

## Best Practices

1. **Start Simple**: Begin with the simplest solution and add patterns only when complexity demands it
2. **Pattern Literacy**: Ensure team members understand the patterns being used
3. **Documentation**: Document pattern usage and rationale
4. **Consistency**: Apply patterns consistently throughout the codebase
5. **Review**: Regularly review pattern usage for continued relevance
6. **Refactoring**: Don't hesitate to replace patterns when they're no longer appropriate
7. **Learning**: Continuously study new patterns and approaches

## Conclusion

Design patterns are valuable tools in a software developer's toolkit, but they should be applied judiciously. Understanding when and how to use patterns, as well as when to avoid them, is crucial for building maintainable, scalable, and efficient software systems. Remember that patterns are solutions to recurring problems, not silver bullets for all development challenges.