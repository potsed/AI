# Complete Design Patterns Structure

This document provides an overview of all design pattern documentation in the HI/AI Policies framework.

## Development Directory

### SOFTWARE_DESIGN_PATTERNS.md
**Location**: `/development/SOFTWARE_DESIGN_PATTERNS.md`

**Description**: Comprehensive guide to software design patterns covering all 23 Gang of Four (GoF) patterns plus additional patterns, including:
- **Creational Patterns**: Factory Method, Abstract Factory, Builder, Prototype, Singleton
- **Structural Patterns**: Adapter, Bridge, Composite, Decorator, Façade, Flyweight, Proxy
- **Behavioral Patterns**: Chain of Responsibility, Command, Interpreter, Iterator, Mediator, Memento, Observer, State, Strategy, Template Method, Visitor
- **Concurrency Patterns**: Active Object, Monitor Object, Half-Sync/Half-Async
- **Architectural Patterns**: Model-View-Controller (MVC), Model-View-Presenter (MVP), Model-View-ViewModel (MVVM), Layered Architecture, Microservices Architecture, Event-Driven Architecture, Service-Oriented Architecture (SOA), Client-Server Architecture, Clean Architecture, Microkernel Architecture, Space-Based Architecture
- **Domain-Specific Patterns**: Event Sourcing, Command Query Responsibility Segregation (CQRS), Saga Pattern, API Gateway Pattern, Strangler Fig Pattern, Anti-Corruption Layer Pattern, Circuit Breaker Pattern, Bulkhead Pattern, Retry Pattern, Cache-Aside Pattern

**Purpose**: Detailed explanations of patterns, their uses, and when they should be applied.

## Architecture Directory

### ARCHITECTURAL_DESIGN_PATTERNS.md
**Location**: `/architecture/ARCHITECTURAL_DESIGN_PATTERNS.md`

**Description**: Comprehensive guide to architectural design patterns covering:
- **Layered Architecture Pattern**
- **Microservices Architecture Pattern**
- **Event-Driven Architecture Pattern**
- **Service-Oriented Architecture (SOA) Pattern**
- **Client-Server Architecture Pattern**
- **Model-View-Controller (MVC) Pattern**
- **Clean Architecture Pattern**
- **Microkernel Architecture Pattern**
- **Space-Based Architecture Pattern**
- **Event Sourcing Pattern**
- **Command Query Responsibility Segregation (CQRS) Pattern**
- **Saga Pattern**
- **API Gateway Pattern**
- **Strangler Fig Pattern**
- **Anti-Corruption Layer Pattern**
- **Circuit Breaker Pattern**
- **Bulkhead Pattern**
- **Retry Pattern**
- **Cache-Aside Pattern**
- **Observer Pattern**
- **Strategy Pattern**
- **Decorator Pattern**
- **Template Method Pattern**
- **Factory Method Pattern**
- **Singleton Pattern**
- **Command Pattern**
- **Adapter Pattern**
- **Façade Pattern**
- **Proxy Pattern**
- **Composite Pattern**
- **Bridge Pattern**
- **Flyweight Pattern**
- **Chain of Responsibility Pattern**
- **Interpreter Pattern**
- **Iterator Pattern**
- **Mediator Pattern**
- **Memento Pattern**
- **State Pattern**
- **Visitor Pattern**
- **Builder Pattern**
- **Prototype Pattern**
- **Abstract Factory Pattern**
- **Façade Pattern**

**Purpose**: Detailed explanations of architectural patterns, their uses, and when they should be applied.

### RFC2119_ARCHITECTURE.md
**Location**: `/architecture/RFC2119_ARCHITECTURE.md`

**Description**: RFC 2119 requirements for architectural design patterns with over 1,000 specific requirements.

**Purpose**: Normative requirements that MUST be followed when implementing architectural design patterns.

## UI/UX Directory

### UI_UX_DESIGN_PATTERNS.md
**Location**: `/ui_ux/UI_UX_DESIGN_PATTERNS.md`


**Description**: Comprehensive guide to UI/UX design patterns covering all major aspects of user interface and experience design.

### RFC2119_UI_UX.md
**Location**: `/ui_ux/RFC2119_UI_UX.md`

**Description**: RFC 2119 requirements for UI/UX design patterns with over 1,200 specific requirements.

## Key Differences Between Document Types

### DESIGN_PATTERNS.md Files
- **Descriptive** documentation explaining patterns
- **When to Use** guidance with context and scenarios
- **Benefits and Drawbacks** for each pattern
- **Implementation Guidelines** with best practices
- **Variants** and related patterns
- **Examples** and use cases

### RFC2119_*.md Files
- **Normative** requirements using RFC 2119 language (MUST, SHOULD, MAY)
- **Prescriptive** instructions for implementation
- **Compliance** requirements for AI and human contributors
- **Quality gates** and validation criteria
- **Testing** and verification requirements
- **Enforcement** mechanisms and penalties

## Usage Guidelines

### When to Use DESIGN_PATTERNS.md
- Learning about patterns and their applications
- Selecting appropriate patterns for specific scenarios
- Understanding pattern trade-offs and considerations
- Training and educational purposes
- Reference for pattern implementation approaches

### When to Use RFC2119_*.md
- Implementing patterns in code or design
- Ensuring compliance with project requirements
- Validating pattern implementations
- Code review and quality assurance
- AI contribution compliance checking

## Cross-Reference Guide

| Pattern Type | Design Patterns File | RFC 2119 Requirements File |
|--------------|----------------------|----------------------------|
| Software Design | development/SOFTWARE_DESIGN_PATTERNS.md | development/RFC2119_DEVELOPMENT.md |
| Architecture Design | architecture/ARCHITECTURAL_DESIGN_PATTERNS.md | architecture/RFC2119_ARCHITECTURE.md |
| UI/UX Design | ui_ux/UI_UX_DESIGN_PATTERNS.md | ui_ux/RFC2119_UI_UX.md |

## Integration Points

All design pattern documentation integrates with:
1. **Root AI.md** - Compliance requirements for AI contributors
2. **Root RFC2119.md** - Generic RFC 2119 requirements and linking
3. **Domain-specific RFC2119_*.md** - Normative requirements for each domain
4. **PROCESS.md** - Human-AI collaboration workflows
5. **GUARDRAILS.md** - General software development guardrails

## Maintenance and Updates

Each design pattern document should be:
1. **Reviewed quarterly** for accuracy and relevance
2. **Updated** based on new pattern emergence or evolution
3. **Cross-referenced** with related patterns and domains
4. **Aligned** with industry standards and best practices
5. **Validated** through real-world application
6. **Enhanced** with new examples and use cases

## Conclusion

This comprehensive design pattern documentation ensures that both AI and human contributors have access to detailed guidance on patterns while maintaining normative compliance through RFC 2119 requirements. The combination of descriptive and prescriptive documentation provides both learning resources and implementation standards.