# RFC2119 Files Inventory

This document provides an inventory of all RFC2119 files in the HI/AI Policies framework, organized by domain and purpose.

## Root Directory

### `/RFC2119.md`
- **Purpose**: Main RFC2119 file containing generic requirements that apply to all domains
- **Content**: Basic RFC2119 requirements, Human-AI collaboration process requirements, and links to all domain-specific files
- **Key Sections**: Generic requirements, Process RFC2119 requirements

## Development Domain

### `/development/RFC2119_DEVELOPMENT.md`
- **Purpose**: Complete RFC2119 requirements for all software development practices
- **Content**: Over 1,000 requirements covering all aspects of software development
- **Key Sections**: Code structure, libraries, testing, security, architecture, databases, APIs, web development, containers, cloud, microservices, etc.

### `/development/SOFTWARE_DESIGN_PATTERNS.md`
- **Purpose**: Comprehensive guide to software design patterns, their uses, and when they should be applied
- **Content**: Detailed documentation of creational, structural, behavioral, concurrency, and architectural patterns
- **Key Sections**: Pattern descriptions, use cases, implementation guidelines, anti-patterns

## Marketing Domain

### `/marketing/RFC2119_MARKETING.md`
- **Purpose**: Complete RFC2119 requirements for all marketing practices
- **Content**: Requirements for brand consistency, target audience, content quality, compliance, channel management, campaigns, analytics
- **Key Sections**: Brand consistency, target audience, content marketing, digital marketing, analytics

## Design Domain

### `/design/RFC2119_DESIGN.md`
- **Purpose**: Complete RFC2119 requirements for all design practices
- **Content**: Requirements for design process, user experience, accessibility, visual design, documentation, collaboration
- **Key Sections**: Design process, UX, accessibility, visual design, documentation

## Human Resources Domain

### `/hr/RFC2119_HR.md`
- **Purpose**: Complete RFC2119 requirements for all human resources practices
- **Content**: Requirements for recruitment, onboarding, performance management, compensation, training, employee relations, compliance
- **Key Sections**: Recruitment, onboarding, performance management, compensation, training, employee relations

## Finance Domain

### `/finance/RFC2119_FINANCE.md`
- **Purpose**: Complete RFC2119 requirements for all finance practices
- **Content**: Requirements for financial planning, accounting, treasury, compliance, tax, risk management, systems
- **Key Sections**: Financial planning, accounting, treasury, compliance, tax, risk management

## Architecture Domain

### `/architecture/RFC2119_ARCHITECTURE.md`
- **Purpose**: Complete RFC2119 requirements for architectural design patterns
- **Content**: Requirements for all major architectural patterns including layered, microservices, event-driven, SOA, etc.
- **Key Sections**: All 23 GoF patterns, architectural patterns, pattern combinations, selection guidelines

## UI/UX Domain

### `/ui_ux/RFC2119_UI_UX.md`
- **Purpose**: Complete RFC2119 requirements for UI/UX design patterns
- **Content**: Requirements for navigation, forms, layouts, content, interactions, data visualization, feedback, authentication patterns
- **Key Sections**: Navigation, forms, layouts, content, interactions, data visualization, feedback, authentication

## File Naming Convention

All RFC2119 files follow the naming convention: `RFC2119_[DOMAIN].md`

This ensures:
1. Clear identification of domain-specific requirements
2. Consistent organization across all functional areas
3. Easy reference and navigation
4. Proper separation of concerns

## Relationship Between Files

1. **Root RFC2119.md** provides the foundation and links to all domain-specific files
2. **Domain-specific RFC2119_*.md** files contain comprehensive requirements for their respective domains
3. **SOFTWARE_DESIGN_PATTERNS.md** provides detailed guidance on when and how to apply design patterns
4. All files use RFC2119 language (MUST, SHOULD, MAY, etc.) for normative requirements
5. All files follow OASIS Keyword Guidelines for technical specifications

## Maintenance and Updates

Each RFC2119 file:
1. Is independently maintainable
2. Follows the same structural conventions
3. Contains domain-specific requirements without overlap
4. Is regularly reviewed and updated
5. References the parent RFC 2119 and OASIS guidelines

## Usage Guidelines

1. **Root RFC2119.md** should be referenced for generic requirements and navigation
2. **Domain-specific files** should be used for detailed requirements in their respective areas
3. **SOFTWARE_DESIGN_PATTERNS.md** should be used as a reference for pattern selection and implementation
4. All files MUST be followed according to RFC2119 compliance requirements