# WEB Guardrails

> ## AI Mandatory Compliance
>
> THIS DOCUMENT DEFINES **MANDATORY REQUIREMENTS** FOR ALL AI CONTRIBUTORS. FAILURE TO COMPLY WITH THESE REQUIREMENTS WILL RESULT IN REJECTED CONTRIBUTIONS. **FAILURE TO COMPLY IS NOT PERMITTED**.
> 
> All terms MUST be interpreted per RFC 2119 (MUST, MUST NOT, REQUIRED, SHALL, SHALL NOT, SHOULD, SHOULD NOT, RECOMMENDED, MAY, OPTIONAL).

## HTML Best Practices

- **MUST** use semantic HTML elements
- **MUST** ensure proper document structure
- **MUST** use appropriate heading hierarchy
- **MUST** provide alternative text for images
- **MUST** use proper form labeling
- **SHOULD** validate HTML markup
- **MUST NOT** use deprecated HTML elements

## CSS and Styling

- **MUST** use CSS for presentation, not HTML
- **MUST** follow consistent naming conventions (BEM, OOCSS, etc.)
- **MUST** use responsive design principles
- **MUST** implement mobile-first approach
- **MUST** optimize CSS for performance
- **SHOULD** use CSS preprocessors where appropriate
- **MUST NOT** use !important excessively

## JavaScript Implementation

- **MUST** use modern JavaScript (ES6+) features
- **MUST** follow consistent coding standards
- **MUST** implement proper error handling
- **MUST** use module patterns for code organization
- **MUST** optimize JavaScript for performance
- **SHOULD** use TypeScript for type safety
- **MUST NOT** manipulate DOM directly without framework

## Performance Optimization

- **MUST** optimize loading performance
- **MUST** implement lazy loading for images and components
- **MUST** minimize bundle sizes
- **MUST** use content delivery networks (CDNs)
- **MUST** implement caching strategies
- **SHOULD** use code splitting
- **MUST** optimize critical rendering path

## Accessibility (a11y)

- **MUST** meet WCAG 2.1 AA compliance
- **MUST** ensure keyboard navigation support
- **MUST** provide proper focus management
- **MUST** use ARIA attributes appropriately
- **MUST** implement skip navigation links
- **SHOULD** conduct accessibility testing
- **MUST** provide text alternatives for non-text content

## Security

- **MUST** implement Content Security Policy (CSP)
- **MUST** prevent cross-site scripting (XSS)
- **MUST** implement proper input validation
- **MUST** use HTTPS for all communications
- **MUST** implement CSRF protection
- **SHOULD** use Subresource Integrity (SRI)
- **MUST NOT** inline JavaScript or CSS

## Responsive Design

- **MUST** implement mobile-responsive layouts
- **MUST** use flexible grids and layouts
- **MUST** implement touch-friendly interfaces
- **MUST** test across different screen sizes
- **MUST** optimize images for different resolutions
- **SHOULD** use CSS media queries appropriately
- **MUST** consider performance on mobile devices

## Cross-Browser Compatibility

- **MUST** support target browser versions
- **MUST** test in multiple browsers
- **MUST** use feature detection instead of browser detection
- **MUST** provide graceful degradation
- **MUST** use vendor prefixes appropriately
- **SHOULD** use polyfills for missing features
- **MUST** document browser support matrix

## Testing

- **MUST** implement unit testing for JavaScript
- **MUST** conduct cross-browser testing
- **MUST** test responsive layouts
- **MUST** perform accessibility testing
- **MUST** implement end-to-end testing
- **SHOULD** use visual regression testing
- **MUST** test performance metrics

## SEO and Meta Tags

- **MUST** implement proper meta tags
- **MUST** use semantic URLs
- **MUST** implement structured data markup
- **MUST** optimize for search engines
- **MUST** provide sitemaps
- **SHOULD** implement social media meta tags
- **MUST** use descriptive page titles and meta descriptions