# RFC 2119 Requirements for Architectural Design Patterns

This document contains all RFC 2119 requirements specific to architectural design patterns, their uses, and when they should be applied.

## Parent RFC References

The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD", "SHOULD NOT", "RECOMMENDED", "MAY", and "OPTIONAL" in this document are to be interpreted as described in [RFC 2119](https://tools.ietf.org/html/rfc2119).

Additional interpretations follow the [OASIS Keyword Guidelines](https://www.oasis-open.org/policies-guidelines/keyword-guidelines/) which provide important standards for using RFC 2119 keywords in technical specifications.

## Layered Architecture Pattern Requirements

**MUST** separate presentation, business, and data layers
**MUST** ensure layers only communicate with adjacent layers
**MUST** maintain clear separation of concerns between layers
**MUST** define explicit interfaces between layers
**MUST** prevent circular dependencies between layers
**SHOULD** use dependency inversion to reduce coupling
**MUST NOT** allow direct communication between non-adjacent layers

**MUST** place presentation logic in the presentation layer
**MUST** implement business rules in the business layer
**MUST** handle data access in the data layer
**MUST** use appropriate technologies for each layer
**MUST** document layer responsibilities clearly
**SHOULD** implement cross-cutting concerns using interceptors
**MUST NOT** mix concerns across layers

**MUST** evaluate performance implications of layer boundaries
**MUST** consider deployment flexibility of layered approach
**MUST** assess scalability requirements for layer distribution
**MUST** monitor layer communication overhead
**MUST** optimize inter-layer communication
**SHOULD** use caching to reduce layer crossing
**MUST NOT** create overly granular layers

## Microservices Architecture Pattern Requirements

**MUST** design services around business capabilities
**MUST** ensure services have high cohesion and low coupling
**MUST** define clear service boundaries
**MUST** implement single responsibility principle for services
**MUST** use domain-driven design principles
**SHOULD** design services to be loosely coupled
**MUST NOT** create services with overlapping responsibilities

**MUST** use appropriate communication mechanisms (sync vs async)
**MUST** implement circuit breakers for remote calls
**MUST** use timeouts for all remote calls
**MUST** implement retry logic with exponential backoff
**MUST** use message queues for asynchronous communication
**MUST** implement bulkhead patterns for fault isolation
**MUST NOT** create synchronous dependencies for non-critical operations

**MUST** use database per service pattern
**MUST** implement eventual consistency for distributed data
**MUST** use saga patterns for distributed transactions
**MUST** implement CQRS where appropriate
**MUST** handle data ownership and access control
**SHOULD** use event sourcing for audit trails
**MUST NOT** share databases between services

## Event-Driven Architecture Pattern Requirements

**MUST** implement event producers and consumers
**MUST** use message brokers for event distribution
**MUST** ensure events are immutable
**MUST** implement proper event ordering when required
**MUST** handle event replay and replayability
**SHOULD** use event sourcing for audit trails
**MUST NOT** create tight coupling between event producers and consumers

**MUST** implement idempotent event handlers
**MUST** handle duplicate events gracefully
**MUST** implement event versioning strategies
**MUST** ensure event schema evolution compatibility
**MUST** implement proper error handling for event processing
**SHOULD** use dead letter queues for failed events
**MUST NOT** process events that violate business invariants

**MUST** monitor event processing latency
**MUST** track event throughput metrics
**MUST** implement event processing monitoring
**MUST** set up alerts for event processing failures
**MUST** implement event retention policies
**SHOULD** use event streaming platforms for high-volume scenarios
**MUST NOT** lose critical business events

## Service-Oriented Architecture (SOA) Pattern Requirements

**MUST** define clear service contracts
**MUST** implement loose coupling between services
**MUST** ensure service reusability
**MUST** maintain service autonomy
**MUST** implement service composability
**SHOULD** use standard protocols for service communication
**MUST NOT** create services with hidden dependencies

**MUST** implement service discovery mechanisms
**MUST** use service registries
**MUST** implement service versioning strategies
**MUST** ensure backward compatibility
**MUST** implement proper service governance
**SHOULD** use enterprise service buses (ESB)
**MUST NOT** bypass service contracts

**MUST** monitor service performance
**MUST** track service usage metrics
**MUST** implement service level agreements (SLAs)
**MUST** ensure service reliability
**MUST** implement fault tolerance mechanisms
**SHOULD** use service mesh for complex scenarios
**MUST NOT** degrade overall system performance

## Client-Server Architecture Pattern Requirements

**MUST** clearly separate client and server responsibilities
**MUST** implement proper request-response communication
**MUST** ensure server statelessness when possible
**MUST** handle client state appropriately
**MUST** implement proper session management
**SHOULD** use load balancing for server scalability
**MUST NOT** create tight coupling between clients and servers

**MUST** implement proper authentication and authorization
**MUST** use secure communication protocols
**MUST** implement rate limiting
**MUST** handle concurrent client requests
**MUST** ensure data consistency
**SHOULD** use caching to improve performance
**MUST NOT** expose server internals to clients

**MUST** monitor server resource utilization
**MUST** track client request patterns
**MUST** implement proper error handling
**MUST** ensure system availability
**MUST** implement proper logging
**SHOULD** use content delivery networks (CDNs)
**MUST NOT** create single points of failure

## Model-View-Controller (MVC) Pattern Requirements

**MUST** separate model, view, and controller components
**MUST** ensure model represents domain logic
**MUST** implement views for user interface presentation
**MUST** use controllers for input handling and navigation
**MUST** maintain loose coupling between components
**SHOULD** implement proper data binding
**MUST NOT** mix concerns between MVC components

**MUST** implement proper request routing
**MUST** handle user input validation
**MUST** ensure proper error handling
**MUST** implement appropriate navigation
**MUST** maintain consistent user experience
**SHOULD** use view models for complex UI scenarios
**MUST NOT** bypass controller for business logic

**MUST** implement proper state management
**MUST** ensure data consistency
**MUST** handle concurrent access
**MUST** implement proper caching strategies
**MUST** optimize view rendering performance
**SHOULD** use partial views for modularity
**MUST NOT** create circular dependencies

## Clean Architecture Pattern Requirements

**MUST** implement dependency inversion principle
**MUST** ensure inner layers don't depend on outer layers
**MUST** define clear boundaries between layers
**MUST** maintain separation of concerns
**MUST** implement proper dependency injection
**SHOULD** use interfaces to define layer contracts
**MUST NOT** create dependencies that violate architectural boundaries

**MUST** place business logic in the core layer
**MUST** implement infrastructure concerns in outer layers
**MUST** ensure framework independence
**MUST** maintain testability
**MUST** implement proper adapter patterns
**SHOULD** use domain entities in the core
**MUST NOT** couple core business logic to frameworks

**MUST** implement proper data mapping
**MUST** handle external service integration
**MUST** ensure security implementation
**MUST** implement proper error handling
**MUST** maintain architectural integrity
**SHOULD** use architectural rule enforcement
**MUST NOT** compromise architectural principles

## Hexagonal (Ports and Adapters) Architecture Pattern Requirements

**MUST** define ports for external interactions
**MUST** implement adapters for specific technologies
**MUST** ensure core application is technology-agnostic
**MUST** maintain symmetry between inbound and outbound ports
**MUST** implement proper dependency inversion
**SHOULD** use primary and secondary adapters appropriately
**MUST NOT** couple core application to external technologies

**MUST** implement core business logic independently
**MUST** define clear port interfaces
**MUST** ensure adapters conform to port contracts
**MUST** maintain testability through ports
**MUST** implement proper error handling in adapters
**SHOULD** use mock adapters for testing
**MUST NOT** bypass port interfaces

**MUST** implement proper configuration management
**MUST** ensure adapter selection flexibility
**MUST** maintain adapter interchangeability
**MUST** handle adapter lifecycle properly
**MUST** implement adapter monitoring
**SHOULD** use adapter factories
**MUST NOT** create adapter coupling

## CQRS (Command Query Responsibility Segregation) Pattern Requirements

**MUST** separate read and write models
**MUST** ensure commands are processed asynchronously
**MUST** implement queries synchronously
**MUST** maintain eventual consistency between models
**MUST** implement proper command validation
**SHOULD** use event sourcing for audit trails
**MUST NOT** mix command and query responsibilities

**MUST** implement proper command handling
**MUST** ensure command idempotency when required
**MUST** handle command failures gracefully
**MUST** implement command queuing mechanisms
**MUST** ensure query performance optimization
**SHOULD** use read model denormalization
**MUST NOT** create complex query models

**MUST** implement proper event handling
**MUST** ensure event ordering consistency
**MUST** handle event replay scenarios
**MUST** implement event versioning
**MUST** monitor read/write model synchronization
**SHOULD** use projection patterns
**MUST NOT** lose events in processing

## Event Sourcing Pattern Requirements

**MUST** store all state changes as events
**MUST** ensure events are immutable
**MUST** implement proper event ordering
**MUST** handle event replay capability
**MUST** implement event versioning strategies
**SHOULD** use snapshots for performance optimization
**MUST NOT** modify stored events

**MUST** implement proper aggregate roots
**MUST** ensure event consistency
**MUST** handle concurrent event generation
**MUST** implement proper conflict resolution
**MUST** ensure audit trail completeness
**SHOULD** use event streams for organization
**MUST NOT** lose events due to system failures

**MUST** implement proper event storage
**MUST** ensure event durability
**MUST** handle event querying efficiently
**MUST** implement event retention policies
**MUST** monitor event processing performance
**SHOULD** use event stores with built-in features
**MUST NOT** expose event store internals

## Saga Pattern Requirements

**MUST** implement compensating transactions for failed operations
**MUST** ensure saga steps are idempotent
**MUST** handle partial failure scenarios
**MUST** implement proper rollback mechanisms
**MUST** maintain saga state consistency
**SHOULD** use choreography or orchestration patterns
**MUST NOT** leave systems in inconsistent states

**MUST** implement proper saga state management
**MUST** ensure saga timeout handling
**MUST** handle concurrent saga execution
**MUST** implement saga monitoring
**MUST** ensure saga reliability
**SHOULD** use saga visualization tools
**MUST NOT** create long-running inconsistent states

**MUST** implement proper error handling
**MUST** ensure saga recovery mechanisms
**MUST** handle saga cancellation
**MUST** implement saga completion detection
**MUST** maintain saga execution logs
**SHOULD** use saga testing frameworks
**MUST NOT** ignore saga failures

## API Gateway Pattern Requirements

**MUST** implement request routing
**MUST** handle API composition
**MUST** implement protocol translation
**MUST** ensure proper authentication
**MUST** implement rate limiting
**SHOULD** use request/response transformation
**MUST NOT** become performance bottlenecks

**MUST** implement proper service discovery
**MUST** handle load balancing
**MUST** ensure high availability
**MUST** implement circuit breaking
**MUST** handle cross-origin requests
**SHOULD** use caching mechanisms
**MUST NOT** expose internal service details

**MUST** implement proper monitoring
**MUST** ensure security enforcement
**MUST** handle request/response logging
**MUST** implement proper error handling
**MUST** ensure scalability
**SHOULD** use plugin architectures
**MUST NOT** create single points of failure

## Domain-Driven Design (DDD) Pattern Requirements

**MUST** implement bounded contexts
**MUST** define clear context boundaries
**MUST** ensure ubiquitous language consistency
**MUST** implement proper aggregates
**MUST** maintain aggregate root invariants
**SHOULD** use value objects appropriately
**MUST NOT** mix domain concepts across contexts

**MUST** implement proper entity identification
**MUST** ensure domain event handling
**MUST** handle domain service implementation
**MUST** implement repository patterns
**MUST** ensure domain model richness
**SHOULD** use domain factories
**MUST NOT** create anemic domain models

**MUST** implement proper context mapping
**MUST** ensure anti-corruption layer implementation
**MUST** handle context integration
**MUST** maintain domain model integrity
**MUST** implement proper domain validation
**SHOULD** use domain-specific languages
**MUST NOT** violate domain boundaries

## Observer Pattern Requirements

**MUST** implement proper subject-observer relationships
**MUST** ensure observers are notified of subject changes
**MUST** handle observer registration and deregistration
**MUST** implement proper update mechanisms
**MUST** ensure loose coupling between subjects and observers
**SHOULD** use event-driven notification
**MUST NOT** create tight coupling

**MUST** implement proper observer lifecycle management
**MUST** handle concurrent observer notifications
**MUST** ensure observer notification ordering when required
**MUST** implement proper error handling in observers
**MUST** ensure observer notification reliability
**SHOULD** use asynchronous notifications
**MUST NOT** block subject execution

**MUST** implement proper observer state management
**MUST** handle observer filtering
**MUST** ensure observer performance
**MUST** implement observer monitoring
**MUST** handle observer memory management
**SHOULD** use weak references for observers
**MUST NOT** create memory leaks

## Decorator Pattern Requirements

**MUST** implement proper component interface
**MUST** ensure decorators conform to component interface
**MUST** handle decorator composition
**MUST** maintain transparency to clients
**MUST** implement proper delegation to wrapped components
**SHOULD** use recursive decoration
**MUST NOT** modify component behavior

**MUST** implement proper decorator lifecycle
**MUST** handle decorator configuration
**MUST** ensure decorator performance
**MUST** implement proper error handling in decorators
**MUST** maintain decorator stack traceability
**SHOULD** use decorator factories
**MUST NOT** create decorator coupling

**MUST** implement proper decorator state management
**MUST** handle decorator ordering
**MUST** ensure decorator interoperability
**MUST** implement decorator monitoring
**MUST** handle decorator memory management
**SHOULD** use decorator pools
**MUST NOT** create decorator complexity

## Strategy Pattern Requirements

**MUST** define common strategy interface
**MUST** implement concrete strategy classes
**MUST** ensure context uses strategies properly
**MUST** handle strategy selection
**MUST** implement proper strategy switching
**SHOULD** use strategy factories
**MUST NOT** create strategy coupling

**MUST** implement proper strategy lifecycle
**MUST** handle strategy configuration
**MUST** ensure strategy performance
**MUST** implement proper error handling in strategies
**MUST** maintain strategy state consistency
**SHOULD** use strategy caching
**MUST NOT** create strategy complexity

**MUST** implement proper strategy state management
**MUST** handle strategy composition
**MUST** ensure strategy interoperability
**MUST** implement strategy monitoring
**MUST** handle strategy memory management
**SHOULD** use strategy pools
**MUST NOT** create strategy leaks

## Template Method Pattern Requirements

**MUST** define abstract template method
**MUST** implement concrete hook methods
**MUST** ensure proper method overriding
**MUST** handle template method finalization
**MUST** implement proper algorithm structure
**SHOULD** use abstract base classes
**MUST NOT** modify template method algorithm

**MUST** implement proper hook method lifecycle
**MUST** handle hook method configuration
**MUST** ensure hook method performance
**MUST** implement proper error handling in hooks
**MUST** maintain hook method state consistency
**SHOULD** use hook method caching
**MUST NOT** create hook method complexity

**MUST** implement proper template method state management
**MUST** handle template method composition
**MUST** ensure template method interoperability
**MUST** implement template method monitoring
**MUST** handle template method memory management
**SHOULD** use template method pools
**MUST NOT** create template method leaks

## Adapter Pattern Requirements

**MUST** implement proper target interface
**MUST** ensure adapter conforms to target interface
**MUST** handle adaptee integration
**MUST** maintain adapter transparency
**MUST** implement proper delegation to adaptees
**SHOULD** use object or class adapters appropriately
**MUST NOT** modify adaptee behavior

**MUST** implement proper adapter lifecycle
**MUST** handle adapter configuration
**MUST** ensure adapter performance
**MUST** implement proper error handling in adapters
**MUST** maintain adapter state consistency
**SHOULD** use adapter factories
**MUST NOT** create adapter coupling

**MUST** implement proper adapter state management
**MUST** handle adapter composition
**MUST** ensure adapter interoperability
**MUST** implement adapter monitoring
**MUST** handle adapter memory management
**SHOULD** use adapter pools
**MUST NOT** create adapter complexity

## Facade Pattern Requirements

**MUST** implement simplified interface
**MUST** ensure facade delegates to subsystem components
**MUST** handle subsystem complexity hiding
**MUST** maintain facade transparency
**MUST** implement proper subsystem coordination
**SHOULD** use subsystem facades
**MUST NOT** create facade coupling

**MUST** implement proper facade lifecycle
**MUST** handle facade configuration
**MUST** ensure facade performance
**MUST** implement proper error handling in facades
**MUST** maintain facade state consistency
**SHOULD** use facade caching
**MUST NOT** create facade complexity

**MUST** implement proper facade state management
**MUST** handle facade composition
**MUST** ensure facade interoperability
**MUST** implement facade monitoring
**MUST** handle facade memory management
**SHOULD** use facade pools
**MUST NOT** create facade leaks

## Proxy Pattern Requirements

**MUST** implement proper subject interface
**MUST** ensure proxy conforms to subject interface
**MUST** handle real subject delegation
**MUST** maintain proxy transparency
**MUST** implement proper request interception
**SHOULD** use remote, virtual, or protection proxies appropriately
**MUST NOT** modify subject behavior

**MUST** implement proper proxy lifecycle
**MUST** handle proxy configuration
**MUST** ensure proxy performance
**MUST** implement proper error handling in proxies
**MUST** maintain proxy state consistency
**SHOULD** use proxy factories
**MUST NOT** create proxy coupling

**MUST** implement proper proxy state management
**MUST** handle proxy composition
**MUST** ensure proxy interoperability
**MUST** implement proxy monitoring
**MUST** handle proxy memory management
**SHOULD** use proxy pools
**MUST NOT** create proxy complexity

## Composite Pattern Requirements

**MUST** implement common component interface
**MUST** ensure leaves and composites conform to component interface
**MUST** handle component composition
**MUST** maintain composite transparency
**MUST** implement proper child management
**SHOULD** use recursive composition
**MUST NOT** create component coupling

**MUST** implement proper composite lifecycle
**MUST** handle composite configuration
**MUST** ensure composite performance
**MUST** implement proper error handling in composites
**MUST** maintain composite state consistency
**SHOULD** use composite caching
**MUST NOT** create composite complexity

**MUST** implement proper composite state management
**MUST** handle composite composition
**MUST** ensure composite interoperability
**MUST** implement composite monitoring
**MUST** handle composite memory management
**SHOULD** use composite pools
**MUST NOT** create composite leaks

## Bridge Pattern Requirements

**MUST** implement proper abstraction interface
**MUST** ensure implementor interface separation
**MUST** handle abstraction-implementor bridging
**MUST** maintain bridge transparency
**MUST** implement proper delegation to implementors
**SHOULD** use bridge factories
**MUST NOT** create bridge coupling

**MUST** implement proper bridge lifecycle
**MUST** handle bridge configuration
**MUST** ensure bridge performance
**MUST** implement proper error handling in bridges
**MUST** maintain bridge state consistency
**SHOULD** use bridge caching
**MUST NOT** create bridge complexity

**MUST** implement proper bridge state management
**MUST** handle bridge composition
**MUST** ensure bridge interoperability
**MUST** implement bridge monitoring
**MUST** handle bridge memory management
**SHOULD** use bridge pools
**MUST NOT** create bridge leaks

## Flyweight Pattern Requirements

**MUST** implement proper flyweight interface
**MUST** ensure flyweight state sharing
**MUST** handle flyweight factory management
**MUST** maintain flyweight transparency
**MUST** implement proper intrinsic-extrinsic state separation
**SHOULD** use flyweight pools
**MUST NOT** create flyweight coupling

**MUST** implement proper flyweight lifecycle
**MUST** handle flyweight configuration
**MUST** ensure flyweight performance
**MUST** implement proper error handling in flyweights
**MUST** maintain flyweight state consistency
**SHOULD** use flyweight caching
**MUST NOT** create flyweight complexity

**MUST** implement proper flyweight state management
**MUST** handle flyweight composition
**MUST** ensure flyweight interoperability
**MUST** implement flyweight monitoring
**MUST** handle flyweight memory management
**SHOULD** use flyweight factories
**MUST NOT** create flyweight leaks

## Chain of Responsibility Pattern Requirements

**MUST** implement proper handler interface
**MUST** ensure handler chaining
**MUST** handle request propagation
**MUST** maintain chain transparency
**MUST** implement proper successor management
**SHOULD** use chain termination conditions
**MUST NOT** create chain coupling

**MUST** implement proper chain lifecycle
**MUST** handle chain configuration
**MUST** ensure chain performance
**MUST** implement proper error handling in chains
**MUST** maintain chain state consistency
**SHOULD** use chain caching
**MUST NOT** create chain complexity

**MUST** implement proper chain state management
**MUST** handle chain composition
**MUST** ensure chain interoperability
**MUST** implement chain monitoring
**MUST** handle chain memory management
**SHOULD** use chain pools
**MUST NOT** create chain leaks

## Command Pattern Requirements

**MUST** implement proper command interface
**MUST** ensure command execution
**MUST** handle command parameters
**MUST** maintain command transparency
**MUST** implement proper command queuing
**SHOULD** use command factories
**MUST NOT** create command coupling

**MUST** implement proper command lifecycle
**MUST** handle command configuration
**MUST** ensure command performance
**MUST** implement proper error handling in commands
**MUST** maintain command state consistency
**SHOULD** use command caching
**MUST NOT** create command complexity

**MUST** implement proper command state management
**MUST** handle command composition
**MUST** ensure command interoperability
**MUST** implement command monitoring
**MUST** handle command memory management
**SHOULD** use command pools
**MUST NOT** create command leaks

## Interpreter Pattern Requirements

**MUST** implement proper expression interface
**MUST** ensure grammar rule interpretation
**MUST** handle expression evaluation
**MUST** maintain interpreter transparency
**MUST** implement proper context management
**SHOULD** use abstract syntax trees
**MUST NOT** create interpreter coupling

**MUST** implement proper interpreter lifecycle
**MUST** handle interpreter configuration
**MUST** ensure interpreter performance
**MUST** implement proper error handling in interpreters
**MUST** maintain interpreter state consistency
**SHOULD** use interpreter caching
**MUST NOT** create interpreter complexity

**MUST** implement proper interpreter state management
**MUST** handle interpreter composition
**MUST** ensure interpreter interoperability
**MUST** implement interpreter monitoring
**MUST** handle interpreter memory management
**SHOULD** use interpreter pools
**MUST NOT** create interpreter leaks

## Iterator Pattern Requirements

**MUST** implement proper iterator interface
**MUST** ensure collection traversal
**MUST** handle element access
**MUST** maintain iterator transparency
**MUST** implement proper position management
**SHOULD** use cursor patterns
**MUST NOT** create iterator coupling

**MUST** implement proper iterator lifecycle
**MUST** handle iterator configuration
**MUST** ensure iterator performance
**MUST** implement proper error handling in iterators
**MUST** maintain iterator state consistency
**SHOULD** use iterator caching
**MUST NOT** create iterator complexity

**MUST** implement proper iterator state management
**MUST** handle iterator composition
**MUST** ensure iterator interoperability
**MUST** implement iterator monitoring
**MUST** handle iterator memory management
**SHOULD** use iterator pools
**MUST NOT** create iterator leaks

## Mediator Pattern Requirements

**MUST** implement proper mediator interface
**MUST** ensure colleague communication
**MUST** handle message routing
**MUST** maintain mediator transparency
**MUST** implement proper colleague management
**SHOULD** use message patterns
**MUST NOT** create mediator coupling

**MUST** implement proper mediator lifecycle
**MUST** handle mediator configuration
**MUST** ensure mediator performance
**MUST** implement proper error handling in mediators
**MUST** maintain mediator state consistency
**SHOULD** use mediator caching
**MUST NOT** create mediator complexity

**MUST** implement proper mediator state management
**MUST** handle mediator composition
**MUST** ensure mediator interoperability
**MUST** implement mediator monitoring
**MUST** handle mediator memory management
**SHOULD** use mediator pools
**MUST NOT** create mediator leaks

## Memento Pattern Requirements

**MUST** implement proper memento interface
**MUST** ensure originator state capture
**MUST** handle state restoration
**MUST** maintain memento transparency
**MUST** implement proper caretaker management
**SHOULD** use state patterns
**MUST NOT** create memento coupling

**MUST** implement proper memento lifecycle
**MUST** handle memento configuration
**MUST** ensure memento performance
**MUST** implement proper error handling in mementos
**MUST** maintain memento state consistency
**SHOULD** use memento caching
**MUST NOT** create memento complexity

**MUST** implement proper memento state management
**MUST** handle memento composition
**MUST** ensure memento interoperability
**MUST** implement memento monitoring
**MUST** handle memento memory management
**SHOULD** use memento pools
**MUST NOT** create memento leaks

## State Pattern Requirements

**MUST** implement proper state interface
**MUST** ensure context state transitions
**MUST** handle state-specific behavior
**MUST** maintain state transparency
**MUST** implement proper state management
**SHOULD** use finite state machines
**MUST NOT** create state coupling

**MUST** implement proper state lifecycle
**MUST** handle state configuration
**MUST** ensure state performance
**MUST** implement proper error handling in states
**MUST** maintain state consistency
**SHOULD** use state caching
**MUST NOT** create state complexity

**MUST** implement proper state management
**MUST** handle state composition
**MUST** ensure state interoperability
**MUST** implement state monitoring
**MUST** handle state memory management
**SHOULD** use state pools
**MUST NOT** create state leaks

## Visitor Pattern Requirements

**MUST** implement proper visitor interface
**MUST** ensure element visitation
**MUST** handle operation separation
**MUST** maintain visitor transparency
**MUST** implement proper element management
**SHOULD** use double dispatch
**MUST NOT** create visitor coupling

**MUST** implement proper visitor lifecycle
**MUST** handle visitor configuration
**MUST** ensure visitor performance
**MUST** implement proper error handling in visitors
**MUST** maintain visitor state consistency
**SHOULD** use visitor caching
**MUST NOT** create visitor complexity

**MUST** implement proper visitor state management
**MUST** handle visitor composition
**MUST** ensure visitor interoperability
**MUST** implement visitor monitoring
**MUST** handle visitor memory management
**SHOULD** use visitor pools
**MUST NOT** create visitor leaks

## Builder Pattern Requirements

**MUST** implement proper builder interface
**MUST** ensure product construction
**MUST** handle construction steps
**MUST** maintain builder transparency
**MUST** implement proper director management
**SHOULD** use fluent interfaces
**MUST NOT** create builder coupling

**MUST** implement proper builder lifecycle
**MUST** handle builder configuration
**MUST** ensure builder performance
**MUST** implement proper error handling in builders
**MUST** maintain builder state consistency
**SHOULD** use builder caching
**MUST NOT** create builder complexity

**MUST** implement proper builder state management
**MUST** handle builder composition
**MUST** ensure builder interoperability
**MUST** implement builder monitoring
**MUST** handle builder memory management
**SHOULD** use builder pools
**MUST NOT** create builder leaks

## Factory Method Pattern Requirements

**MUST** implement proper factory interface
**MUST** ensure product creation
**MUST** handle product variation
**MUST** maintain factory transparency
**MUST** implement proper creator management
**SHOULD** use abstract factories
**MUST NOT** create factory coupling

**MUST** implement proper factory lifecycle
**MUST** handle factory configuration
**MUST** ensure factory performance
**MUST** implement proper error handling in factories
**MUST** maintain factory state consistency
**SHOULD** use factory caching
**MUST NOT** create factory complexity

**MUST** implement proper factory state management
**MUST** handle factory composition
**MUST** ensure factory interoperability
**MUST** implement factory monitoring
**MUST** handle factory memory management
**SHOULD** use factory pools
**MUST NOT** create factory leaks

## Abstract Factory Pattern Requirements

**MUST** implement proper abstract factory interface
**MUST** ensure family product creation
**MUST** handle product family variation
**MUST** maintain factory transparency
**MUST** implement proper concrete factory management
**SHOULD** use factory methods
**MUST NOT** create factory coupling

**MUST** implement proper factory lifecycle
**MUST** handle factory configuration
**MUST** ensure factory performance
**MUST** implement proper error handling in factories
**MUST** maintain factory state consistency
**SHOULD** use factory caching
**MUST NOT** create factory complexity

**MUST** implement proper factory state management
**MUST** handle factory composition
**MUST** ensure factory interoperability
**MUST** implement factory monitoring
**MUST** handle factory memory management
**SHOULD** use factory pools
**MUST NOT** create factory leaks

## Prototype Pattern Requirements

**MUST** implement proper prototype interface
**MUST** ensure object cloning
**MUST** handle prototype variation
**MUST** maintain prototype transparency
**MUST** implement proper registry management
**SHOULD** use deep copying
**MUST NOT** create prototype coupling

**MUST** implement proper prototype lifecycle
**MUST** handle prototype configuration
**MUST** ensure prototype performance
**MUST** implement proper error handling in prototypes
**MUST** maintain prototype state consistency
**SHOULD** use prototype caching
**MUST NOT** create prototype complexity

**MUST** implement proper prototype state management
**MUST** handle prototype composition
**MUST** ensure prototype interoperability
**MUST** implement prototype monitoring
**MUST** handle prototype memory management
**SHOULD** use prototype pools
**MUST NOT** create prototype leaks

## Singleton Pattern Requirements

**MUST** implement proper singleton creation
**MUST** ensure single instance
**MUST** handle lazy initialization
**MUST** maintain singleton transparency
**MUST** implement proper thread safety
**SHOULD** use dependency injection
**MUST NOT** create singleton coupling

**MUST** implement proper singleton lifecycle
**MUST** handle singleton configuration
**MUST** ensure singleton performance
**MUST** implement proper error handling in singletons
**MUST** maintain singleton state consistency
**SHOULD** use singleton caching
**MUST NOT** create singleton complexity

**MUST** implement proper singleton state management
**MUST** handle singleton composition
**MUST** ensure singleton interoperability
**MUST** implement singleton monitoring
**MUST** handle singleton memory management
**SHOULD** use singleton pools
**MUST NOT** create singleton leaks

## Structural Pattern Combination Requirements

**MUST** evaluate pattern compatibility before combination
**MUST** ensure combined patterns maintain individual benefits
**MUST** handle complexity introduced by pattern combinations
**MUST** maintain clear separation of pattern responsibilities
**MUST** document pattern combination rationale
**SHOULD** use pattern catalogs for guidance
**MUST NOT** create unmaintainable pattern combinations

**MUST** implement proper pattern interaction
**MUST** ensure performance optimization in combinations
**MUST** handle error propagation across patterns
**MUST** maintain pattern transparency in combinations
**MUST** implement proper testing for pattern combinations
**SHOULD** use architectural fitness functions
**MUST NOT** over-engineer pattern combinations

**MUST** monitor pattern combination effectiveness
**MUST** ensure scalability of combined patterns
**MUST** handle maintainability of pattern combinations
**MUST** document pattern combination trade-offs
**MUST** implement proper refactoring strategies
**SHOULD** use pattern refactoring techniques
**MUST NOT** abandon pattern combinations without justification

## Behavioral Pattern Combination Requirements

**MUST** evaluate behavioral pattern interactions
**MUST** ensure pattern communication efficiency
**MUST** handle pattern state coordination
**MUST** maintain behavioral pattern transparency
**MUST** document behavioral pattern combination benefits
**SHOULD** use pattern collaboration diagrams
**MUST NOT** create conflicting behavioral patterns

**MUST** implement proper behavioral pattern integration
**MUST** ensure pattern communication reliability
**MUST** handle pattern composition complexity
**MUST** maintain pattern extensibility
**MUST** implement proper behavioral pattern testing
**SHOULD** use behavioral pattern simulation
**MUST NOT** over-complicate behavioral patterns

**MUST** monitor behavioral pattern performance
**MUST** ensure behavioral pattern scalability
**MUST** handle behavioral pattern maintainability
**MUST** document behavioral pattern trade-offs
**MUST** implement proper refactoring strategies
**SHOULD** use behavioral pattern metrics
**MUST NOT** abandon behavioral patterns without justification

## Creational Pattern Combination Requirements

**MUST** evaluate creational pattern synergy
**MUST** ensure object creation efficiency
**MUST** handle creational pattern composition
**MUST** maintain creational pattern transparency
**MUST** document creational pattern combination rationale
**SHOULD** use creational pattern frameworks
**MUST NOT** create inefficient object creation patterns

**MUST** implement proper creational pattern integration
**MUST** ensure creational pattern reliability
**MUST** handle creational pattern complexity
**MUST** maintain creational pattern extensibility
**MUST** implement proper creational pattern testing
**SHOULD** use creational pattern validation
**MUST NOT** over-complicate creational patterns

**MUST** monitor creational pattern performance
**MUST** ensure creational pattern scalability
**MUST** handle creational pattern maintainability
**MUST** document creational pattern trade-offs
**MUST** implement proper refactoring strategies
**SHOULD** use creational pattern metrics
**MUST NOT** abandon creational patterns without justification

## Pattern Selection Guidelines

**MUST** evaluate problem requirements before pattern selection
**MUST** consider system constraints in pattern selection
**MUST** assess team expertise for pattern implementation
**MUST** evaluate pattern maintainability
**MUST** consider pattern performance implications
**SHOULD** use pattern selection matrices
**MUST NOT** select patterns without justification

**MUST** document pattern selection rationale
**MUST** consider pattern evolution requirements
**MUST** evaluate pattern testing complexity
**MUST** assess pattern learning curve
**MUST** consider pattern community support
**SHOULD** use pattern prototyping
**MUST NOT** select unfamiliar patterns for critical systems

**MUST** monitor pattern effectiveness post-implementation
**MUST** evaluate pattern ROI
**MUST** assess pattern long-term viability
**MUST** document pattern success metrics
**MUST** implement pattern retirement plans
**SHOULD** use pattern retrospectives
**MUST NOT** ignore pattern performance issues

## Pattern Anti-Patterns

**MUST** avoid pattern overuse
**MUST** prevent pattern misuse
**MUST** eliminate pattern abuse
**MUST** avoid pattern cargo culting
**MUST** prevent pattern gold hammering
**SHOULD** use pattern skepticism
**MUST NOT** apply patterns without understanding

**MUST** document pattern failure cases
**MUST** identify pattern limitations
**MUST** recognize pattern inappropriateness
**MUST** avoid pattern complexity creep
**MUST** prevent pattern solution obsession
**SHOULD** use pattern pragmatism
**MUST NOT** force patterns where they don't fit

**MUST** monitor pattern effectiveness
**MUST** evaluate pattern alternatives
**MUST** assess pattern retirement needs
**MUST** document pattern replacement strategies
**MUST** implement pattern migration plans
**SHOULD** use pattern sunset procedures
**MUST NOT** perpetuate ineffective patterns