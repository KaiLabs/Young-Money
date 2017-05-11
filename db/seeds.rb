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
  		year_ids:[2, 3],
  		description: "The Wesleyan Beckman Scholars Program is designed to advance the education, research training and personal development of exceptionally talented students in chemistry, biochemistry, biophysics, and the biological sciences. Scholars are selected on a competitive basis, and conduct research in chemical or biological sciences over two years under the direction of a Wesleyan faculty member in one of the participating departments: Biology; Chemistry; Molecular Biology and Biochemistry; Physics.",
  		location: "On-Campus",
  		link: "http://www.wesleyan.edu/cis/beckman/admission.html"},

  { name: 'CIS Fellows',
  		deadline: '2020-01-02',
  		category: 'Research',
  		department: 'CIS',
  		year_ids:[1, 2, 3, 4],
  		description: "Ideally, CIS fellows are jointly mentored by two faculty in complementing fields – for example, biology and physics. Dual mentoring is not a requirement, but research must be interdisciplinary. CIS fellowships encourage faculty and students to explore ways in which their research can benefit from combinations of fields.",
  		location: "On-Campus",
  		link: "http://www.wesleyan.edu/cis/application-wesfiles.html"},

  { name: 'Research in the Sciences',
  		deadline: '2020-01-02',
  		category: 'Research',
  		department: 'CIS',
  		year_ids:[1, 2, 3, 4],
  		description: "Each summer, the CIS runs a summer research program across the sciences that hosts more than 100 Wesleyan undergraduates. In addition to faculty mentored research, we offer a weekly seminar series, skills workshops, and the summer culminates with poster presentations by all students of their research work.",
  		location: "On-Campus",
  		link: "http://www.wesleyan.edu/scienceresearch/researchsupport/index.html"},

  { name: 'Winchester Fellowship',
  		deadline: '2020-01-02',
  		category: 'Research',
  		department: 'English',
  		year_ids:[4, 5],
  		description: "The Winchester award is intended to be used as a substantial supplement to fellowships, teaching assistantships, and the like, or to enable students to undertake research or travel. The maximum award is $5,000.",
  		location: "On-Campus",
  		link: "http://www.wesleyan.edu/english/prizes/index.html"},

  { name: 'Olin Fellowship',
  		deadline: '2020-01-02',
  		category: 'Research',
  		department: 'English',
  		year_ids:[1, 2, 3],
  		description: "Awarded in recognition of achievement in English to support independent research or creative writing. The fellowships are to be used for work in English outside the Wesleyan course structure. Suitable projects may include, for example, study in an academic program, research, training in research methods, or sustained work on a piece of writing.",
  		location: "On-Campus",
  		link: "http://www.wesleyan.edu/english/prizes/index.html"},

  { name: 'Carnegie Endowment For International Peace',
      deadline: '2017-11-01',
      category: 'Fellowship',
      department: 'Center for Global Studies',
      year_ids:[4],
      description: "The Junior Fellows Program is designed to provide a substantive work experience for students who have a serious career interest in the area of international affairs.  The Carnegie Endowment offers a one-year work experience in Washington, D.C. to Junior Fellows who provide research assistance to Associates working on the Endowment's research projects such as non-proliferation, democracy building, international economics, China-related issues and Russian/Eurasian affairs.",
      location: "Off-Campus",
      link: "http://www.wesleyan.edu/cgs/fellowship/nomination.html"},

  { name: 'Gilbert Clee Scholarship',
      deadline: '2017-11-04',
      category: 'Fellowship',
      department: 'Career Center',
      year_ids:[3],
      description: "To be eligible, an individual must have demonstrated high standards of leadership, a deep commitment to Wesleyan University. The award also includes career guidance by a representative of McKinsey and Company, an international management consulting firm.",
      location: "On-Campus",
      link: "http://www.wesleyan.edu/careercenter/students/wesleyan-grants/clee.html"},

  { name: 'Invisible Men Internship Grants',
      deadline: '2017-03-05',
      category: 'Grant',
      department: 'Career Center',
      year_ids:[2, 3],
      description: "The aims of the group are to provide support for one another, to pursue personal growth, to create greater unity among people of color, and to enhance the success of multicultural community.",
      location: "On-Campus",
      link: "http://www.wesleyan.edu/careercenter/students/wesleyan-grants/invisible-men.html"},

  { name: 'Davis Projects For Peace',
      deadline: '2017-01-29',
      category: 'Entrepreneurship',
      department: 'Patricelli Center',
      year_ids:[1, 2, 3, 4],
      description: "Davis Projects for Peace is an initiative for all students at the Davis United World College Scholars Program partner schools to design grassroots projects for the summer of 2017 -- anywhere in the world -- which promote peace and address the root causes of conflict among parties.",
      location: "On-Campus",
      link: "http://www.wesleyan.edu/careercenter/students/wesleyan-grants/invisible-men.html"},

  { name: 'Seed Grant Challenge',
      deadline: '2017-12-01',
      category: 'Entrepreneurship',
      department: 'Patricelli Center',
      year_ids:[1, 2, 3, 4],
      description: "Davis Projects for Peace is an initiative for all students at the Davis United World College Scholars Program partner schools to design grassroots projects for the summer of 2017 -- anywhere in the world -- which promote peace and address the root causes of conflict among parties.",
      location: "On-Campus",
      link: "http://www.wesleyan.edu/patricelli/grants/seedgrantinfo.html"},

  { name: 'Wesleyan Black Alumni Council Memorial Prize',
      deadline: '2017-03-27',
      category: 'Research',
      department: 'African American Studies',
      year_ids:[1, 2, 3, 4],
      description: "Established in 1986 by the Wesleyan Black Alumni Council in memory of deceased black alumni. The prize provides a summer stipend to support a deserving student engaged in independent study or community service related to the concerns of black people.",
      location: "On-Campus",
      link: "http://www.wesleyan.edu/inclusion/resources.html"},

  ])
