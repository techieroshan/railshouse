# Portfolio Case Studies Seeds

Portfolio.delete_all

Portfolio.create([
  {
    title: "Omnichannel Commerce Replatform for a Mid-Market Retail Brand",
    client: "Northstar Outfitters (Representative Client)",
    industry: "Retail & E-Commerce",
    description: "Representative case study for a growing retail brand that needed a faster storefront, tighter inventory coordination, and a more reliable checkout experience across web and mobile.",
    challenge: "<h3>Business Challenge</h3>
    <p>This representative engagement reflects the type of modernization work often required by retail teams that have outgrown a monolithic storefront and a patchwork of third-party tools. The business needed stronger performance during promotional spikes, better inventory visibility, and a simpler path for launching new merchandising campaigns.</p>

    <h4>Common delivery pressures:</h4>
    <ul>
      <li><strong>Peak traffic instability:</strong> traffic surges during campaign launches caused degraded response times and intermittent checkout failures</li>
      <li><strong>Catalog complexity:</strong> product data was fragmented across ERP, warehouse, and storefront systems</li>
      <li><strong>Operational friction:</strong> merchandising teams depended on engineering for routine landing page and promotion updates</li>
      <li><strong>Mobile conversion gap:</strong> mobile sessions were high, but conversion lagged behind desktop materially</li>
      <li><strong>Order visibility:</strong> support teams lacked a unified view of payment, fulfillment, and return status</li>
    </ul>",
    solution: "<h3>Our Solution</h3>
    <p>We designed a representative Rails-based commerce platform architecture focused on resilience, maintainability, and faster change cycles for internal teams.</p>

    <h4>Implementation highlights:</h4>
    <ul>
      <li><strong>Application redesign:</strong> modular Rails services for catalog, checkout, order orchestration, and merchandising workflows</li>
      <li><strong>Performance tuning:</strong> Redis caching, query optimization, background processing, and CDN-backed asset delivery</li>
      <li><strong>Checkout improvements:</strong> streamlined multi-step checkout with clearer validation and recoverable cart states</li>
      <li><strong>Operational tooling:</strong> internal admin interfaces for campaign scheduling, pricing adjustments, and featured collections</li>
      <li><strong>Integration layer:</strong> stable connectors for inventory sync, shipping providers, and transactional email systems</li>
      <li><strong>Observability:</strong> application monitoring, alerting, and business KPI dashboards for release confidence</li>
    </ul>",
    results: "<h3>Representative Outcomes</h3>
    <p>The results below are indicative of what this type of engagement is intended to deliver rather than claims about a specific named client.</p>

    <h4>Measured improvements:</h4>
    <ul>
      <li><strong>Page performance:</strong> median storefront response time improved by roughly 55%</li>
      <li><strong>Checkout completion:</strong> checkout abandonment reduced by approximately 18%</li>
      <li><strong>Release velocity:</strong> merchandising teams launched campaign changes in hours instead of days</li>
      <li><strong>Support efficiency:</strong> fewer order-status tickets due to clearer customer communications and better internal visibility</li>
      <li><strong>Peak readiness:</strong> platform sustained seasonal traffic spikes with materially fewer incidents</li>
    </ul>",
    technologies: "Ruby on Rails 7, PostgreSQL, Redis, Sidekiq, Stimulus, Hotwire, Elasticsearch, Stripe, Docker, AWS",
    published_at: Time.now - 30.days,
    featured: true
  },
  {
    title: "Care Coordination Platform for a Regional Health Network",
    client: "Summit Health Network (Representative Client)",
    industry: "Healthcare",
    description: "Representative case study for a healthcare organization that needed a secure patient engagement and care coordination platform spanning appointments, messaging, and operational reporting.",
    challenge: "<h3>Business Challenge</h3>
    <p>This indicative project reflects a common healthcare digital transformation pattern: fragmented patient communication, disconnected scheduling workflows, and limited visibility for care teams trying to coordinate follow-up effectively.</p>

    <h4>Typical constraints:</h4>
    <ul>
      <li><strong>Data sensitivity:</strong> platform design needed to support strong access controls, auditability, and secure data handling</li>
      <li><strong>Scheduling friction:</strong> appointment reschedules and intake steps created heavy call-center load</li>
      <li><strong>Care team coordination:</strong> patient updates lived across multiple systems and inboxes</li>
      <li><strong>Patient experience:</strong> inconsistent reminders and confusing workflows led to missed visits and delayed follow-up</li>
      <li><strong>Reporting gaps:</strong> leadership lacked reliable operational metrics across clinics and service lines</li>
    </ul>",
    solution: "<h3>Our Solution</h3>
    <p>We modeled a secure Rails application that centralizes patient communications, operational workflows, and care-team reporting while keeping the product simple enough for clinical staff to adopt quickly.</p>

    <h4>Delivery scope:</h4>
    <ul>
      <li><strong>Unified workflows:</strong> intake, appointment reminders, secure messaging, and follow-up tasks in one application layer</li>
      <li><strong>Role-aware access:</strong> differentiated permissions for coordinators, providers, managers, and support teams</li>
      <li><strong>Background automation:</strong> reminder delivery, task routing, and status updates via background jobs</li>
      <li><strong>Integration support:</strong> import and synchronization patterns for EHR-adjacent and scheduling data</li>
      <li><strong>Operational dashboards:</strong> clinic-level visibility into response times, no-show trends, and staff workload</li>
      <li><strong>Secure foundations:</strong> auditing, authentication hardening, and encrypted data pathways throughout the stack</li>
    </ul>",
    results: "<h3>Representative Outcomes</h3>
    <p>These outcomes are realistic benchmarks for this category of implementation and are presented as indicative results only.</p>

    <h4>Operational impact:</h4>
    <ul>
      <li><strong>Missed appointments:</strong> no-show rates improved by an estimated 12% to 16%</li>
      <li><strong>Staff efficiency:</strong> coordination teams handled follow-up tasks more quickly with less manual re-entry</li>
      <li><strong>Patient communication:</strong> response consistency improved through centralized messaging workflows</li>
      <li><strong>Reporting accuracy:</strong> managers gained timely operational views without spreadsheet consolidation</li>
      <li><strong>Adoption:</strong> phased rollout supported steady uptake across multiple clinics</li>
    </ul>",
    technologies: "Ruby on Rails 7, PostgreSQL, Redis, Sidekiq, Turbo, Twilio, Auth0, Docker, AWS",
    published_at: Time.now - 45.days,
    featured: true
  },
  {
    title: "Digital Onboarding and Self-Service Portal for a Financial Institution",
    client: "Harbor Point Financial (Representative Client)",
    industry: "Banking & Finance",
    description: "Representative case study for a financial services organization improving digital onboarding, account servicing, and internal case handling without exposing real customer or institution data.",
    challenge: "<h3>Business Challenge</h3>
    <p>Many established financial institutions have strong core systems but weak digital servicing layers. This indicative engagement centers on reducing onboarding friction, improving self-service, and giving operations teams better tools for exception handling.</p>

    <h4>Typical business pain points:</h4>
    <ul>
      <li><strong>Slow onboarding:</strong> multi-day account opening due to document back-and-forth and manual review</li>
      <li><strong>Service bottlenecks:</strong> routine account changes generated avoidable branch and call-center volume</li>
      <li><strong>Fragmented workflows:</strong> operations teams worked across legacy systems with limited status visibility</li>
      <li><strong>Compliance overhead:</strong> manual audit preparation increased delivery risk and cycle time</li>
      <li><strong>Experience gap:</strong> digital expectations outpaced what the existing portal could provide</li>
    </ul>",
    solution: "<h3>Our Solution</h3>
    <p>We shaped a Rails-based servicing platform that supports secure onboarding, document collection, workflow routing, and a more modern self-service experience on top of existing institutional systems.</p>

    <h4>Platform capabilities:</h4>
    <ul>
      <li><strong>Guided onboarding:</strong> dynamic application flows with validation, document uploads, and status tracking</li>
      <li><strong>Case management:</strong> queues and SLA views for compliance, operations, and support teams</li>
      <li><strong>Customer self-service:</strong> profile updates, secure messaging, and request initiation without assisted support</li>
      <li><strong>Audit readiness:</strong> workflow history, activity logs, and exportable reporting for review processes</li>
      <li><strong>Integration patterns:</strong> connectors for identity verification, notifications, and downstream core systems</li>
    </ul>",
    results: "<h3>Representative Outcomes</h3>
    <p>The following metrics are presented as realistic indicative outcomes for this type of transformation.</p>

    <h4>Business improvements:</h4>
    <ul>
      <li><strong>Application turnaround:</strong> new account review time reduced by approximately 40%</li>
      <li><strong>Self-service adoption:</strong> a larger share of routine requests moved out of assisted service channels</li>
      <li><strong>Operational clarity:</strong> teams gained better status visibility for exception cases and pending approvals</li>
      <li><strong>Compliance support:</strong> audit preparation became faster due to better workflow traceability</li>
      <li><strong>Customer satisfaction:</strong> improved digital completion rates and fewer status-related support calls</li>
    </ul>",
    technologies: "Ruby on Rails 7, PostgreSQL, Redis, Sidekiq, React Native, Plaid, Docker, Kubernetes, AWS",
    published_at: Time.now - 60.days,
    featured: true
  },
  {
    title: "Learning Experience Platform for a Multi-Campus Education Group",
    client: "Westbridge Education Alliance (Representative Client)",
    industry: "Education",
    description: "Representative case study for an education provider consolidating course delivery, progress tracking, and communication tools into a single learning platform.",
    challenge: "<h3>Business Challenge</h3>
    <p>This indicative scenario reflects a common issue in education: multiple learning tools, inconsistent student journeys, and limited visibility for instructors trying to identify disengagement early.</p>

    <h4>Common platform gaps:</h4>
    <ul>
      <li><strong>Disconnected tools:</strong> content, assignments, live sessions, and communication lived in separate systems</li>
      <li><strong>Inconsistent reporting:</strong> faculty lacked timely insight into progress, completion risk, and participation trends</li>
      <li><strong>Administrative overhead:</strong> manual setup for cohorts, course templates, and assessments slowed launch cycles</li>
      <li><strong>Student usability:</strong> navigation and mobile access made routine learning tasks harder than necessary</li>
      <li><strong>Scalability concerns:</strong> the existing stack struggled during enrollment and assessment peaks</li>
    </ul>",
    solution: "<h3>Our Solution</h3>
    <p>We designed a representative Rails learning platform centered on course operations, student communication, and insight dashboards that help faculty act earlier.</p>

    <h4>Key features delivered:</h4>
    <ul>
      <li><strong>Course operations:</strong> reusable templates, cohort management, assignment scheduling, and deadline controls</li>
      <li><strong>Student experience:</strong> mobile-friendly dashboards, progress views, and centralized announcements</li>
      <li><strong>Instructor tools:</strong> grading workflows, discussion moderation, and engagement monitoring</li>
      <li><strong>Automation:</strong> reminders, nudges, and course milestone notifications through background jobs</li>
      <li><strong>Analytics:</strong> progress, attendance, and participation reporting for faculty and academic operations</li>
    </ul>",
    results: "<h3>Representative Outcomes</h3>
    <p>These results are indicative of a realistic implementation of this scope rather than a claim tied to a named institution.</p>

    <h4>Observed gains:</h4>
    <ul>
      <li><strong>Student engagement:</strong> stronger participation in scheduled coursework and discussion activity</li>
      <li><strong>Faculty efficiency:</strong> less time spent on manual course administration and status chasing</li>
      <li><strong>Operational scalability:</strong> smoother handling of enrollment and assessment traffic peaks</li>
      <li><strong>Progress visibility:</strong> earlier identification of at-risk learners through centralized reporting</li>
      <li><strong>Platform consistency:</strong> improved experience across desktop and mobile learning workflows</li>
    </ul>",
    technologies: "Ruby on Rails 7, PostgreSQL, Redis, Sidekiq, ActionCable, Active Storage, Zoom API, Vimeo API, Docker, AWS",
    published_at: Time.now - 75.days,
    featured: false
  }
])

puts "Created #{Portfolio.count} portfolio case studies"
