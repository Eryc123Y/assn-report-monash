#import "../lib.typ": *
#import "@preview/thmbox:0.3.0": *
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.1": *
#import "@preview/lovelace:0.3.0": *

#show: monash-report.with(
  [Sample Assignment],        // title (positional)
  "Xingyu Yang",               // author (positional)
  subtitle: "A subtitle for your assignment",
  student-id: "33533563",
  course-code: "FIT3080",
  course-name: "Introduction to Artificial Intelligence",
  assignment-type: "Assignment Report",
  tutor-name: "Dr. Sample Tutor",
  date: datetime.today(),
  word-count: 1500,
  despair-mode: false,
  show-typst-attribution: true,
  show-outline: true,
)
#show: thmbox-init()
#show: codly-init.with()

= Sample Section

#lorem(300)

== Sample Subsection

#lorem(300)


=== Sample Sub-subsection

#lorem(300)

==== Sample Sub-sub-subsection

#lorem(300)


