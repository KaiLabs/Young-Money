# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Year.create([{year: "Freshman"}, {year: "Sophomore"}, {year: "Junior"}, {year: "Senior"}, {year: "Graduate"}])

Inside.create([
  { name: 'Beckman Scholars Program',
  		deadline: '2020-01-02',
  		category: 'Research',
  		department: 'CIS',
  		semester: 'Full year',
  		year_ids:[2, 3],
  		description: "The Wesleyan Beckman Scholars Program is designed to advance the education, research training and personal development of exceptionally talented students in chemistry, biochemistry, biophysics, and the biological sciences. Scholars are selected on a competitive basis, and conduct research in chemical or biological sciences over two years under the direction of a Wesleyan faculty member in one of the participating departments: Biology; Chemistry; Molecular Biology and Biochemistry; Physics.",
  		location: "Wesleyan",
  		link: "http://www.wesleyan.edu/cis/beckman/admission.html"},

  { name: 'CIS Fellows',
  		deadline: '2020-01-02',
  		category: 'Research',
  		department: 'CIS',
  		semester: 'Summer',
  		year_ids:[1, 2, 3, 4],
  		description: "Ideally, CIS fellows are jointly mentored by two faculty in complementing fields – for example, biology and physics. Dual mentoring is not a requirement, but research must be interdisciplinary. CIS fellowships encourage faculty and students to explore ways in which their research can benefit from combinations of fields.",
  		location: "Wesleyan",
  		link: "http://www.wesleyan.edu/cis/application-wesfiles.html"},

  { name: 'Research in the Sciences',
  		deadline: '2020-01-02',
  		category: 'Research',
  		department: 'CIS',
  		semester: 'Summer',
  		year_ids:[1, 2, 3, 4],
  		description: "Each summer, the CIS runs a summer research program across the sciences that hosts more than 100 Wesleyan undergraduates. In addition to faculty mentored research, we offer a weekly seminar series, skills workshops, and the summer culminates with poster presentations by all students of their research work.",
  		location: "Wesleyan",
  		link: "http://www.wesleyan.edu/scienceresearch/researchsupport/index.html"},

  { name: 'Winchester Fellowship',
  		deadline: '2020-01-02',
  		category: 'Research',
  		department: 'English',
  		semester: 'Spring',
  		year_ids:[4, 5],
  		description: "The Winchester award is intended to be used as a substantial supplement to fellowships, teaching assistantships, and the like, or to enable students to undertake research or travel. The maximum award is $5,000.",
  		location: "Wesleyan",
  		link: "http://www.wesleyan.edu/english/prizes/index.html"},

  { name: 'Olin Fellowship',
  		deadline: '2020-01-02',
  		category: 'Research',
  		department: 'English',
  		semester: 'Spring',
  		year_ids:[1, 2, 3],
  		description: "Awarded in recognition of achievement in English to support independent research or creative writing. The fellowships are to be used for work in English outside the Wesleyan course structure. Suitable projects may include, for example, study in an academic program, research, training in research methods, or sustained work on a piece of writing.",
  		location: "Wesleyan",
  		link: "http://www.wesleyan.edu/english/prizes/index.html"}
  ])