// Main library file for the assn-report-monash package
// This file exports the main template function and all required dependencies

// Import all the template components
#import "monash-template/report/cover.typ": cover
#import "monash-template/report/heading.typ": apply as apply-heading
#import "monash-template/report/page.typ": apply as apply-page, apply-header-footer
#import "monash-template/report/monash-colors.typ": monash-blue, monash-bright-blue, monash-navy, monash-yellow, monash-light-blue, monash-deep-blue
#import "@preview/thmbox:0.3.0": *

#show: thmbox-init()
// Main template function
#let monash-report(
  // Required parameters
  title,
  author,
  
  // Optional parameters with defaults
  subtitle: none,
  student-id: none,
  course-code: none,
  course-name: none,
  assignment-type: "Assignment",
  tutor-name: none,
  date: none,
  word-count: none,
  despair-mode: false,
  show-typst-attribution: true,
  show-outline: true,
  body
) = {
  // Set document metadata
  set text(lang: "en", size: 13pt)
  set document(title: title, author: author, date: if date != none { date } else { datetime.today() })
  
  // Apply page and heading styles
  show: apply-page.with(despair-mode: despair-mode)
  show: apply-heading
  
  // Cover page
  cover(
    title, 
    author, 
    none, // date-start (deprecated)
    none, // date-end (deprecated) 
    subtitle: subtitle, 
    logo: none, 
    logo-horizontal: true,
    student-id: student-id,
    course-code: course-code,
    course-name: course-name,
    assignment-type: assignment-type,
    tutor-name: tutor-name,
    word-count: word-count,
    date: date,
    show-typst-attribution: show-typst-attribution
  )
  pagebreak()
  
  // Apply header and footer
  show: apply-header-footer.with(course-code: course-code, assignment-type: assignment-type)
  
  // Table of contents (optional)
  if show-outline {
    outline(title: [Table of Contents], indent: 1em, depth: 2)
    pagebreak()
  }
  
  // User content
  body
}