
# Seed for DevAbout
DevAbout.create!(
  title: "Senior React Developer",
  subtitle: "Versatile Developer Building Scalable, High-Performance Web Applications",
  content: <<~HTML
    <p>Senior Front End & Full Stack Developer with 11+ years of experience across Energy, Health/WellTech, EdTech, and eCommerce sectors. Proven expertise in:</p>
    <ul>
      <li>Optimizing UI performance and state management</li>
      <li>Building robust, scalable web and mobile applications</li>
      <li>Secure API integration and real-time data visualization</li>
      <li>Enhancing UX through advanced UI/UX design</li>
    </ul>
  HTML
)

# Seed for DevHome
DevHome.create!(
  title: "Hi, I'm Jess Hendricks",
  description: <<~HTML
    <p>I’m a full-stack developer specializing in React, TypeScript, and scalable applications. I’ve built everything from real-time trading platforms to cross-platform mobile apps and secure fitness tech solutions. Let’s build something powerful and user-friendly together.</p>
  HTML
)

# Seed for DevResume
DevResume.create!(
  name: "Jess Hendricks",
  title: "Senior React Developer",
  summary: <<~HTML
    <p>Senior developer with 11+ years of experience creating scalable, performant applications across industries. Highlights:</p>
    <ul>
      <li>Led frontend development at Hartree Partners for high-frequency trading tools</li>
      <li>Architected and launched mobile and web apps for clients as a freelancer</li>
      <li>Developed secure, interactive features at iFit, increasing engagement by 30%</li>
      <li>Built 20+ client websites and mobile apps at Common Media, Inc.</li>
    </ul>
  HTML
)

# Technology Stack
tech_names = %w[
  React.js Next.js React-Native TypeScript JavaScript Ruby-on-Rails Node Express
  SQL HTML CSS SCSS Jest Jasmine React-Testing-Library
]
tech_names.each do |name|
  Technology.create!(name: name, description: "")
end

# Clients
Client.create!(
  name: "Hartree Partners",
  website: "https://www.hartreepartners.com",
  description: "Global energy and commodities firm where Jess developed high-performance trading applications."
)
Client.create!(
  name: "iFit",
  website: "https://www.ifit.com",
  description: "Fitness technology company with secure user authentication and interactive features."
)

# Position Experience
Position.create!(
  company: "Hartree Partners",
  role: "Senior Frontend Developer",
  start_date: "2023-01-01",
  end_date: nil,
  description: "Built React + TypeScript trading applications, optimized real-time data visualizations, and refactored Grafana-based codebases."
)

Position.create!(
  company: "iFit",
  role: "Full Stack Developer",
  start_date: "2020-12-01",
  end_date: "2022-11-30",
  description: "Developed authentication and payment flows, UX improvements, and real-time analytics using React and TypeScript."
)

Position.create!(
  company: "Common Media, Inc.",
  role: "Front End Developer",
  start_date: "2016-06-01",
  end_date: "2020-10-31",
  description: "Created and maintained full-stack Rails/React sites and React Native apps for iOS/Android."
)

Position.create!(
  company: "Freelance",
  role: "Fullstack Engineer",
  start_date: "2016-05-01",
  end_date: nil,
  description: "Built scalable full-stack applications and React Native apps. Implemented CI/CD pipelines and SEO improvements."
)

# Dev Projects
DevProject.create!(
  title: "Energy Trading Platform",
  subtitle: "Real-Time Data Visualization",
  slug: "energy-trading-platform",
  excerpt: "Built high-performance UIs and real-time data tools for an energy trading desk.",
  link: "",
  content: <<~HTML
    <p>Jess led frontend development on a set of real-time energy trading tools. The stack included React.js, TypeScript, GraphQL APIs, and a Grafana-based visualization system.</p>
  HTML
)

DevProject.create!(
  title: "Game Master Guru",
  subtitle: "React Native Mobile App",
  slug: "game-master-guru",
  excerpt: "Built and deployed a mobile D&D tool with Expo.",
  link: "",
  content: <<~HTML
    <p>Created a cross-platform mobile app using React Native and Expo, enabling game masters to manage tabletop campaigns on the go.</p>
  HTML
)
