# Semantic Web and Schema.org Implementation

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
>
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## Schema.org Structured Data Implementation

### Core Requirements

- **MUST** implement Schema.org structured data markup on all public-facing web pages
- **MUST** use JSON-LD format for structured data implementation
- **MUST** include required properties for all defined schema types
- **MUST** validate structured data markup using official validation tools
- **MUST** ensure structured data accurately represents page content
- **MUST NOT** implement structured data that misrepresents page content
- **SHOULD** implement structured data for all content types where applicable schemas exist
- **SHOULD** use the most specific schema type available for content

### Implementation Standards

- **MUST** use `https://schema.org` as the context for all structured data
- **MUST** specify the appropriate `@type` for each structured data object
- **MUST** include all required properties for the specified schema type
- **MUST** use absolute URLs for all references to external resources
- **MUST** format dates according to ISO 8601 standard (YYYY-MM-DD)
- **MUST** use appropriate data types for all property values
- **SHOULD** nest related entities to create meaningful relationships
- **SHOULD** use unique identifiers where available (URLs for entities)

### Common Schema Types Implementation

#### Organization Schema

- **MUST** implement Organization schema on the homepage
- **MUST** include `name`, `url`, and `logo` properties
- **SHOULD** include `sameAs` properties for social media profiles
- **SHOULD** include `contactPoint` for customer service information

#### WebPage Schema

- **MUST** implement WebPage schema on all pages
- **MUST** include `name` and `description` properties
- **MUST** include `url` property with the page's canonical URL
- **SHOULD** include `datePublished` and `dateModified` for content pages
- **SHOULD** include `breadcrumb` property for pages with navigation hierarchy

#### Article Schema

- **MUST** implement Article schema on all blog posts and articles
- **MUST** include `headline`, `author`, `datePublished`, and `image` properties
- **MUST** include `publisher` property referencing the Organization
- **SHOULD** include `dateModified` if different from `datePublished`
- **SHOULD** include `articleBody` for full-text articles

#### Product Schema

- **MUST** implement Product schema on all product pages
- **MUST** include `name`, `description`, and `image` properties
- **MUST** include `offers` property with price and availability information
- **SHOULD** include `brand`, `category`, and `review` properties
- **SHOULD** include `sku` or `productId` for inventory tracking

### Technical Implementation

- **MUST** place JSON-LD structured data in the `<head>` section of HTML documents
- **MUST** use `<script type="application/ld+json">` tags for JSON-LD implementation
- **MUST** ensure structured data is valid JSON format
- **MUST** escape HTML entities properly within JSON-LD content
- **MUST** test structured data in development environments before deployment
- **SHOULD** generate structured data dynamically for content-driven pages
- **SHOULD** cache structured data where appropriate for performance

### Validation and Testing

- **MUST** validate structured data using Google's Rich Results Test
- **MUST** validate structured data using Schema.org's Markup Validator
- **MUST** test structured data on all page types where it is implemented
- **MUST** address all validation errors before deployment
- **SHOULD** implement automated testing for structured data validation
- **SHOULD** monitor structured data performance in search results
- **MUST** re-validate structured data after any content or template changes

### Performance Considerations

- **MUST** minimize the size of structured data markup
- **MUST** avoid duplicating information between structured data and visible content
- **SHOULD** load non-critical structured data asynchronously where possible
- **SHOULD** cache structured data for static content
- **MUST NOT** include structured data that significantly impacts page load times

### Security and Privacy

- **MUST** avoid including sensitive personal information in structured data
- **MUST** comply with data protection regulations (GDPR, CCPA) in structured data
- **MUST** avoid exposing internal system information through structured data
- **SHOULD** review structured data for privacy implications during development
- **MUST** remove or update structured data when content is removed or modified

## HTML Semantic Markup

### Semantic HTML Elements

- **MUST** use appropriate semantic HTML5 elements for page structure
- **MUST** implement proper heading hierarchy (h1-h6) for content structure
- **MUST** use `<main>` element for primary content
- **MUST** use `<nav>` element for navigation sections
- **MUST** use `<article>` element for self-contained content
- **MUST** use `<section>` element for thematic content groupings
- **MUST** use `<aside>` element for tangential content
- **MUST** use `<header>` and `<footer>` elements for introductory and footer content
- **MUST** use `<figure>` and `<figcaption>` for self-contained content with captions

### Accessibility Semantics

- **MUST** use proper ARIA roles when native semantics are insufficient
- **MUST** implement proper landmark roles for screen reader navigation
- **MUST** use ARIA attributes to enhance accessibility where needed
- **MUST** ensure ARIA attributes are used correctly and consistently
- **MUST NOT** use ARIA attributes that conflict with native semantics
- **SHOULD** use ARIA live regions for dynamic content updates
- **SHOULD** implement skip navigation links for keyboard users

### Microdata and RDFa (Legacy Support)

- **MAY** implement Microdata for legacy system compatibility
- **MAY** implement RDFa for legacy system compatibility
- **SHOULD** prefer JSON-LD over Microdata and RDFa for new implementations
- **MUST** maintain consistency when using multiple structured data formats
- **MUST NOT** mix conflicting structured data implementations

## SEO Optimization with Semantic Markup

### Search Engine Visibility

- **MUST** ensure structured data enhances search engine understanding of content
- **MUST** align structured data with visible content
- **MUST** implement breadcrumbs schema for hierarchical content
- **SHOULD** implement sitelinks search box for eligible sites
- **SHOULD** implement social profile links in Organization schema
- **MUST** use descriptive, accurate property values in structured data

### Rich Results Enablement

- **MUST** implement structured data that qualifies for rich results
- **MUST** follow Google's guidelines for rich results eligibility
- **SHOULD** monitor rich results performance in Google Search Console
- **MUST** maintain structured data quality to preserve rich results eligibility
- **MUST** implement fallback content for users without JavaScript

## Monitoring and Maintenance

### Ongoing Validation

- **MUST** regularly validate structured data implementations
- **MUST** monitor structured data errors in search console tools
- **SHOULD** implement alerts for structured data validation failures
- **MUST** update structured data when schema.org specifications change
- **MUST** review structured data after major content or template updates

### Performance Monitoring

- **SHOULD** monitor the impact of structured data on page load performance
- **SHOULD** track search engine crawling and indexing of structured data
- **MUST** investigate and resolve any structured data-related performance issues
- **SHOULD** measure the SEO impact of structured data implementations

## Compliance and Best Practices

### Documentation Requirements

- **MUST** document all structured data implementations
- **MUST** maintain an inventory of implemented schema types
- **SHOULD** document custom schema extensions or modifications
- **MUST** update documentation when structured data implementations change

### Training and Knowledge Transfer

- **SHOULD** provide training on semantic web best practices for development teams
- **MUST** ensure team members understand structured data validation requirements
- **SHOULD** conduct regular reviews of structured data implementations
- **MUST** stay current with schema.org updates and search engine guidelines

## Conclusion

Implementing semantic web technologies and proper HTML semantics is essential for modern web development. By following these requirements:

1. You'll improve your site's SEO performance
2. You'll create more accessible experiences
3. You'll enable rich features in search results
4. You'll make your content more machine-readable
5. You'll follow industry best practices

Regular validation and testing of your implementation will ensure continued effectiveness and compliance with evolving standards.