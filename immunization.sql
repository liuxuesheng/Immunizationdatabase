-- phpMyAdmin SQL Dump
-- version 4.5.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2016 at 11:15 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `immunization`
--

-- --------------------------------------------------------

--
-- Table structure for table `baby_infomation`
--

CREATE TABLE `baby_infomation` (
  `email` varchar(100) DEFAULT NULL,
  `token` varchar(256) NOT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 NOT NULL,
  `birthdate` date NOT NULL,
  `province` varchar(50) CHARACTER SET utf8 NOT NULL,
  `city` varchar(50) CHARACTER SET utf8 NOT NULL,
  `gender` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baby_infomation`
--

INSERT INTO `baby_infomation` (`email`, `token`, `nickname`, `birthdate`, `province`, `city`, `gender`) VALUES
('hanmingyue.hanna@gmail.com', '', 'nick', '2016-03-20', 'null', 'null', 0),
('test@163.com', '476462cd0a8ee627fa57d523de9309b7936c23b3fe214a556de925549f7c62924ff96fe88fcbec86783a2fd7c8b20deac69594327ff5cb8cac4de8b49278c920', 'tony', '2015-09-16', 'Alberta', 'Calgary', 0),
('test@163.com', '476462cd0a8ee627fa57d523de9309b7936c23b3fe214a556de925549f7c62924ff96fe88fcbec86783a2fd7c8b20deac69594327ff5cb8cac4de8b49278c920', 'sky', '2016-03-17', 'Ontario', 'Mississauga', 1),
('test@163.com', '476462cd0a8ee627fa57d523de9309b7936c23b3fe214a556de925549f7c62924ff96fe88fcbec86783a2fd7c8b20deac69594327ff5cb8cac4de8b49278c920', 'unfortunately', '2016-03-31', 'Alberta', 'Calgary', 1);

-- --------------------------------------------------------

--
-- Table structure for table `clinics_hospitals`
--

CREATE TABLE `clinics_hospitals` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clinics_hospitals`
--

INSERT INTO `clinics_hospitals` (`id`, `name`, `address`, `phone`, `latitude`, `longitude`) VALUES
(1, 'Westmont Hospitality Group', '5090 Explorer Dr', '905 602-1137', 43.6612, -79.5963),
(2, 'Boston Scientific ', '6430 Vipond Dr', '905 696-1800', 43.6594, -79.6635),
(3, 'Trillium Health Centre', '5770 Hurontario St', '905 755-0963', 43.6212, -79.6743),
(4, 'Trillium Health Partners', '150 Sherway Dr', '416 259-6671', 43.5725, -79.6087),
(5, 'Gt Hospitality Group', '3939 Duke of York Blvd', '905 363-7675', 43.5884, -79.641),
(6, 'Veenarun Health Facility Ltd', '3038 Hurontario St', '905 803-0768', 43.5813, -79.6181),
(7, 'Mississauga Hospital ', '100 Queensway W', '905 848-7100', 43.5716, -79.6084),
(8, 'Spinal Touch Wellness Centre', '1100 Burnhamthorpe Rd W', '905 232-8600', 43.5699, -79.6612),
(9, 'Erindale Animal Hospital', '4040 Creditview Rd', '905 232-8383', 43.5685, -79.6655),
(10, 'Credit Valley Health Center', '16-2555 Erin Centre Blvd', '905 828-0270', 43.5629, -79.7103),
(11, 'Pinewood Medical Centre', '1471 Hurontario St', '905 274-1475', 43.565, -79.594),
(12, 'City Centre Orthodontics', '151 City Centre Dr', '905 270-0888', 43.591, -79.6399),
(13, 'Pediatrician Clinic', '107-3885 Duke of York Blvd', '905 366-4441', 43.5875, -79.6399),
(14, 'Mississauga Optometric Clinic', '70-50 Burnhamthorpe Rd W', '289 326-0707', 43.5918, -79.6363),
(15, 'Innomar Strategies Inc', '55 City Centre Dr', '905 897-0794', 43.5938, -79.6383),
(16, 'Living Arts Medical Centre', '4100 Living Arts Dr', '905 270-5600', 43.5885, -79.6456),
(17, 'Pediatric Urgent Care For Kids', '4033 Hurontario St', '905 270-5437', 43.5951, -79.6358),
(18, 'Membership Dental Clinic', '3453 Palgrave Rd', '905 270-3637', 43.5852, -79.6335),
(19, 'Square One Medical Management Corp', '4175 Confederation Pky', '905 848-4880', 43.589, -79.6494),
(20, 'MyDiet Clinic', '750-2 Robert Speck Pky', '647 955-0461', 43.5966, -79.6371),
(21, 'Iona Dental Clinic', '1585 Mississauga Valley Blvd', '289 724-1708', 43.5926, -79.6265),
(22, 'Skinatomy Laser Clinic', '4092 Confederation Pky', '905 949-9198', 43.5895, -79.6507),
(23, 'NewLife Fertility Centre', '4250 Sherwoodtowne Blvd', '905 896-7200', 43.6005, -79.6403),
(24, 'Om Sai Physiotherapy Clinic ', '3960 Grand Park Dr', '905 804-1117', 43.5809, -79.6477),
(25, 'Thunder Bay Regional Health Sciences Centre', '980 Oliver Road', '(807) 684-60', 48.4247, -89.2693),
(26, 'The Dilico Family Health Team Clinic', '200 Anemki Pl, Fort William First Nation', '(807) 626-52', 48.3543, -89.2567),
(27, 'George Jeffrey Children\'s Centre', '200 Brock St E', '(807) 623-43', 48.3687, -89.2694),
(28, 'Centre For Addiction And Mental Health', 'St Jospeh\'s Hospital', '(807) 343-24', 48.3812, -89.2463),
(29, 'Residential Wellness', '307 Euclid Ave', '(807) 577-05', 48.3804, -89.2816),
(30, 'Thunder Bay District Health Unit', '999 Balmoral St', '(807) 625-59', 48.401, -89.255),
(31, 'Community Midwives of Thunder Bay', '610 Hewitson St', '(807) 622-22', 48.4055, -89.2461),
(32, 'Primacy - Aurora Family Health Clinic', '971 Carrick St', '(807) 285-18', 48.4076, -89.2397),
(33, 'Thunder Bay Veterinary Hospital', '920 Carrick St', '(807) 623-35', 48.4123, -89.2464),
(34, 'Northwestern Veterinary Hospital', '1160 Oliver Rd', '(807) 345-33', 48.4203, -89.2721),
(35, 'Elevate NWO', '574 Memorial Avenue', '(807) 345-15', 48.4194, -89.2361),
(36, 'Crossfit Subzero', '221 Bay St', '(807) 252-17', 48.4299, -89.2227),
(37, 'St Joseph\'s Hospital Audio', '35 Algoma St S', '(807) 343-24', 48.4395, -89.2249),
(38, 'St. Joseph\'s Care Group', '63 Carrie St', '(807) 768-44', 48.4442, -89.2417),
(39, 'CML HealthCare Ultrasound, X-ray, Bone Density, Mammography', '194 North Court Street', '(807) 346-62', 48.4448, -89.216),
(40, 'Mitomics Inc', '290 Munro St', '(807) 346-81', 48.4499, -89.2056),
(41, 'Lakehead Psychiatric Hospital', '580 Algoma St N', '(807) 343-43', 48.4578, -89.2005);

-- --------------------------------------------------------

--
-- Table structure for table `health_knowledge`
--

CREATE TABLE `health_knowledge` (
  `id` int(8) NOT NULL,
  `news_date` date NOT NULL,
  `news_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `news_subtitle` varchar(100) CHARACTER SET utf8 NOT NULL,
  `news_content` text NOT NULL,
  `news_imageURL` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_knowledge`
--

INSERT INTO `health_knowledge` (`id`, `news_date`, `news_title`, `news_subtitle`, `news_content`, `news_imageURL`) VALUES
(1, '2016-02-24', 'Canada needs to revamp its vaccine policy, says expert panel', 'Health care professionals in Canada have started to put pressure on the Canadian government to invol', '"In a recent review, an expert panel of health professionals said Canada’s immunization strategy needs better economic justification for its decisions.\r\nConducted by health care researchers from across the country, the review studied a number of economic evaluations of vaccines in Canada and concluded that such evaluations need to play a larger role in Canada’s public health decision-making processes concerning vaccines.\r\n“Given the increased complexity of economic studies evaluating vaccines and the impact of results on public health practice, Canada needs improved, transparent and consistent processes to review and assess the findings of the economic evaluations of vaccines,” say the review’s authors.\r\nWhen it comes to immunization policy, Canadian governments both federal and provincial have traditionally been focused on the twin lodestones of efficacy and safety, the only relevant question on the table being, If we immunize against this disease, will we save lives?\r\nBut with the rise in drug costs over the past two decades and the emergence of newer, more sophisticated (and more expensive) vaccines, governments the world over have had to contend with concerns both epidemiological and budgetary."', 'news_immunized_1.jpg'),
(2, '2016-02-25', 'New flu vaccine for seniors approved by Health Canada', 'Health Canada has approved a new high-dose flu vaccine for seniors aged 65 and up.', '"The vaccine is manufactured by Sanofi Pasteur, a Toronto-based company that makes vaccines for a wide range of viruses and infectious diseases.\r\nFluzone High-Dose has just been approved in Canada, and it’s four times as powerful as the standard influenza vaccine. It’s designed specifically for older seniors, who require a higher dose of the drug to most effectively prevent the flu.\r\nDr. Janet McElhaney, scientific director for the Advanced Medical Research Institute of Canada, said Fluzone High-Dose is the first vaccine of its kind in Canada. It’s been approved in the United States since 2009.\r\n“It’s the same vaccine formulation we use for influenza every year, but at four times the dose,” McElhaney said in an interview Thursday. “It’s basically a more concentrated vaccine for seniors. As we get older we get a weakened immune system, so it requires a bigger stimulus to get that same boost we need for influenza protection.”\r\nMcElhaney said seniors’ health is a priority during flu season, because older folks are more at risk of developing other serious health problems when they’re sick.\r\n“In the clinical trials, this vaccine was shown to be 24 per cent more effective in preventing influenza in older people,” she said. “It also has an impact in terms of preventing pneumonia, and other influenza-related health complications that lead to hospitalization.”\r\nShe also said Fluzone High-Dose is an important innovation for all Canadian seniors.\r\n“For seniors, the most important thing is to take the steps that will keep them independent in the community. Their top fear getting older is becoming dependent for care and having to move to a nursing home,” she said. “They get enhanced protection with this vaccine over what is currently available.”\r\nNova Scotia has one of the largest concentrations of seniors in the country. Dr. Frank Atherton, the province’s deputy chief medical officer of health, said influenza remains a huge problem for older folks.\r\n“Last year was a terribly difficult year for seniors. We had more influenza cases and outbreaks in long-term care facilities than the last 10 years, possibly longer,” he said in an interview Thursday. “We’ve had fewer cases this year, but last season was particularly bad.”\r\nHe said the new vaccine could be good for Nova Scotians, but significant long-term evidence on its effectiveness is still lacking.\r\n“There appears to be a slight benefit in terms of the immune response older people get, but there’s very little evidence it actually leads to better health outcomes,” said Atherton. “As with all vaccines, we need to ask questions about how effective it actually is. We know there is some benefit, but we don’t know if it leads to fewer influenza cases, fewer admissions to hospital, and a lower mortality rate.”\r\nAtherton said the province won’t be rolling out Fluzone High-Dose any time soon, but the Department of Health is monitoring it closely.\r\n“We have to look at the cost as well, and we know this will cost between four and six times as much as the traditional flu vaccine,” he said. “If we were to introduce this vaccine, we would need to see significant benefits in terms of fewer influenza cases, fewer hospital visits, and fewer deaths. Those are the health outcomes we\'re looking for to see if this is the best way to spend taxpayer dollars in Nova Scotia.”"', 'news_immunized_2.jpg'),
(3, '2016-01-28', 'Zika virus: Canadian-U.S. vaccine could be ready by year\'s end', 'Human tests could start as early as September, says University of Laval\'s Gary Kobinger', '"A vaccine for the Zika virus in development by U.S. and Canadian scientists could be available for emergency use before the end of the year, possibly making it the first, one of the lead scientists said on Thursday.\r\nCanadian-U.S. vaccine could be ready by year\'s end\r\nZika virus outbreak \'spreading explosively\': WHO\r\n6 things to know about the Zika virus\r\nCanadian Blood Services to defer donations from travellers to Zika areas\r\nAirlines to refund or let passengers change flights over Zika concerns\r\nThe consortium working on the vaccine includes University of Pennsylvania, led by scientist David Weiner, University of Laval, led by Gary Kobinger, Inovio Pharmaceuticals Inc. and South Korea\'s GeneOne Life Science, Kobinger told Reuters in an interview.\r\nHe hopes to start trials by September to test its safety on humans, pending regulator approval. A month later it could be ready for emergency use."', 'news_immunized_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `health_news`
--

CREATE TABLE `health_news` (
  `id` int(8) NOT NULL,
  `news_date` date NOT NULL,
  `news_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `news_subtitle` varchar(100) CHARACTER SET utf8 NOT NULL,
  `news_content` text NOT NULL,
  `news_imageURL` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `health_news`
--

INSERT INTO `health_news` (`id`, `news_date`, `news_title`, `news_subtitle`, `news_content`, `news_imageURL`) VALUES
(1, '2016-02-25', 'Ontario budget 2016: Mixed reaction from health-care, student groups\r\n', 'A budget can\'t be balanced on sheer faith,\' Canadian Taxpayers Federation says\r\n', '"Free college and university tuition for low-income families, a new climate change fighting cap-and-trade system and a projected drop in the deficit by nearly $2 billion dollars were among the highlights in Thursday\'s provincial budget announcement.\r\nThat prompted mixed reaction from health, student and finance groups who saw in the budget everything from a ""train wreck"" to ""sweeping improvements.""\r\nHere\'s a survey of initial reaction from the Ontario Health Coalition, the Ontario Undergraduate Student Alliance, Canadian Taxpayers Federation and the Toronto Financial Services Alliance.\r\nOn hospitals:\r\nAfter a four-year freeze in base funding for hospitals, the Ontario Health Coalition says it welcomes the province\'s announcement of a $60 million increase for hospital budgets this year, but the coalition says the funds are not nearly enough to stop what it calls the erosion of patient care and services across Ontario.\r\n""Today\'s announcement is one small step, but there is still a long way to go to,"" said board member Sara Labelle.\r\nThe organization points to ""significant and damaging cuts"" in Ontario hospitals including slashing hospital beds, services, and a greater number of complicated cases at long-term care homes. Hospitals in Toronto, Hamilton, Windsor and Kitchener announced layoffs of more than 500 registered nurses in the first few weeks of 2016 alone.\r\nThose cuts are resulting in more health care privatization and contributing to a two-tier system, the coalition says.  \r\n\r\n""Ontario\'s larger town hospitals are now the most dangerously overcrowded of any jurisdiction in the developed world,"" it said in a release.\r\n\r\n""We need to continue to hold their feet to the fire, and demand that services are restored,"" Labelle said.\r\n\r\nOn student financial assistance:\r\n\r\nThe province\'s move to slash provincial debt for college and university students from families making less than $50,000 is a welcome development to the Ontario Undergraduate Student Alliance (OUSA).\r\n\r\nOntario budget 2016: Liberals pitch grant to cover average tuition for low-income students\r\n""These are sweeping improvements that will dramatically improve financial aid for our students,"" said OUSA president Spencer Nestico-Semianiw.\r\n\r\nThe organization, which represents the interests of over 140,000 full and part-time Ontario university students at seven member associations, said in a release that it is also pleased to see the removal of tuition and education tax credits.\r\n\r\n""Tax credits did not provide assistance when students needed it, and they diverted aid money to those who did not need the help,"" Nestico-Semianiw said.\r\n\r\nIn addition to the newly announced Ontario Student Grant (OSG), the association said it welcomes what it calls the simplicity of the new grant programs.\r\n\r\n""University education is now more affordable, and more students will know it,"" said Nestico-Semianiw.\r\n\r\nOn fiscal targets:\r\n\r\nThe Toronto Financial Services Alliance said Thursday it supports the province maintaining its target to balance the budget by 2017-18 and delaying the Ontario Retirement Pension Plan (ORPP) by one year.\r\n\r\n""It is critical that they stick to their fiscal targets and we strongly encourage them to focus on lowering the province\'s debt-to-GDP ratio,"" said TFSA president and CEO Janet Ecker in a release.\r\n\r\nThe association said it welcomes the 12-year, $160 billion infrastructure investment and urges the government to expand the use of public-private partnerships for long-term infrastructure projects.  \r\n\r\nEcker also said she was pleased that the budget acknowledged the need ""to foster a homegrown innovation ecosystem,"" which it said will be a key step to promoting jobs and growth.   \r\n\r\nThe Canadian Taxpayers Federation (CTF), meanwhile, said it was ""troubled"" at budget projections for over $300 billion in debt.\r\n\r\n""The government\'s long-term plan outlined in the 2016 budget will never lead to a balanced budget,"" said CTF Ontario director Christine Van Geyn. ""Where Mr. Sousa is getting his projections is a mystery. His budget assumes unrealistic growth rates. A budget can\'t be balanced on sheer faith.""\r\n\r\nThe federation pointed to a number of tax hikes, including a projected 4.3 cent per litre increase in the cost of gasoline as a result of the cap-and-trade plan to reduce greenhouse gas emissions, a $5 per month increase in the cost of natural gas for home heating.\r\n\r\n""The fiscal train wreck in Ontario needs to end,""  Van Geyn said.\r\n\r\nOntario budget 2016: Liberals\' cap and trade expected to generate $1.9B\r\nThe CTF also pointed to a five per cent increase on the markup on wine over the next three years, as well as a one per cent hike in the wine tax on imported wine.\r\n\r\nOntario budget 2016: What\'s going to cost you more after Ontario\'s latest budget (sorry, wine drinkers)\r\n""Commuters in Ontario already pay high taxes at the pump, and this gas tax hike will make life in this province even more unaffordable,"" said Van Geyn.\r\n\r\n""And now we can\'t even find solace about the state of the province\'s economy in a nice glass of wine, because the premier is hiking the tax on that too."""\r\n', 'news_health_1.jpg'),
(2, '2016-02-26', 'Canadian companies tweaking health plans to appeal to millennials, insurers say\r\n', 'Life insurers such claim a growing number of employers have been looking to implement corporate well', '"During his three-year tenure as a financial analyst at one of Canada’s biggest banks, Devon Wright never once used his company health plan.\r\n“There was just nothing there that was of any interest to me,” says Wright, 28.\r\nSo when Wright quit his job in 2012 to launch technology company Turnstyle Solutions, he decided to create a benefits package tailored to his needs.\r\nTurnstyle is one example of how Canadian companies are tweaking their health plans to appeal to a new generation of employees in the coming years.\r\nPwC predicts that millennials, who it defines as people born between 1980 and 2000, will comprise 50 per cent of the global workforce by 2020.\r\nIn addition to the standard drug and dental benefits, Turnstyle covers naturopathic medicine, mental health counselling and provides employees with a fitness subsidy that they can spend on anything from a gym membership to yoga classes to participation in a Frisbee league.\r\nThe Toronto-based startup also offers free, healthy meals several times a week, a major perq. for 23-year-old Sam Hillman.\r\n“Some mornings we have soup, or avocados and eggs,” says Hillman, an account director with the company’s sales team.\r\n“This emphasis on living a healthy lifestyle really shows the company’s commitment to me as a holistic individual, and not just a Turnstyle employee.”\r\nLife insurance companies such as Sun Life Financial and Manulife Financial say a growing number of employers have been looking to implement corporate wellness programs in recent years, partly in response to the desires of millennial workers.\r\nWellness programs include services such as smoking cessation, on-site flu shots and biometric screening, which measures characteristics including blood pressure, body mass index and cholesterol to track employee health.\r\nPreventative health care has become increasingly popular as employers have come to realize how it can benefit not only the individual, but the company. Healthy workers are more productive, miss fewer days of work due to illness and are less likely to request costly drugs later down the road.\r\n“We’re trying to respond to what millennials are looking for, but there are also benefits to the organization for doing these things,” says Joy Sloane, a partner in the Toronto health and benefits consulting practice at human resources firm Morneau Shepell.\r\nInsurers have also started using wearable fitness trackers and incentive programs that reward customers for practising healthy behaviours, such as undergoing annual checkups or regularly hitting the gym.\r\nManulife, which launched an incentive program south of the border last year, announced on Tuesday it will bring it to Canada this year.\r\nFlexible plans, such as health spending accounts, are also on the rise as employers look to recruit and retain young workers.\r\n“The millennial generation is looking for different things than their parents had in terms of benefits plans,” says Lori Casselman, assistant vice-president of integrated health solutions at Sun Life Financial.\r\nMillennials place a much greater priority on mental health services, such as counselling and support groups, than their predecessors did, according to insurers.\r\n“Mental health is now recognized as being one of the key factors in absenteeism and lost productivity, as well as drug claims and long-term disability,” says Lisa Callaghan, assistant vice-president of products for Manulife’s group benefits division.\r\n“Mental health not only impacts the individuals, but also impacts the team, the environment and the culture, and, for those reasons, it is becoming more culturally accepted to have those conversations.”\r\nWhile much of the change to corporate health plans is being fuelled by millennials entering the workforce, it isn’t just young workers who reap the rewards of such changes, Sloane says.\r\n“Although it’s being targeted at the millennials, I think it’s really beneficial for the whole working population,” she says."\r\n', 'news_health_2.jpg'),
(3, '2016-02-27', 'Toronto police board creates new mental-health committee', 'After the shooting of Sammy Yatim, a committee of mental-health experts was formed but met infrequen', '"The Toronto police board voted unanimously Wednesday to create an external mental health advisory committee comprised of mental health experts and hospital leaders to assess the Toronto police force and its board on dealing with people experiencing mental illness.\r\nBoard chair Andy Pringle says he wanted to form a group to annually conduct an independent evaluation on everything from training to use of force options when it comes to safely dealing with people in crisis.\r\nThe aim is to ensure “we are the best in class in mental health,” Pringle said after the public board meeting at police headquarters, where the committee was approved without discussion.\r\nPringle said he hopes the advisory group will provide the oversight that was originally intended expected from the so-called Iacobucci report advisory committee, group specifically tasked with monitoring the implementation of the report on Toronto police use of force.\r\nCommissioned after the July 2013 shooting death of Sammy Yatim by Toronto police Const. James Forcillo, the report — penned by retired Supreme Court of Canada justice Frank Iacobucci — made 84 recommendations to reduce fatal encounters between Toronto police and people in crisis, including mental-health crisis.\r\nAmong them was the establishment of an advisory committee to oversee the implementation process. A committee of mental-health experts was formed, but its members complained it met infrequently. Pringle said Wednesday the group would no longer meet, which is why he suggested the broader committee.\r\nLast fall, the Toronto police released a detailed breakdown regarding Iacobucci’s recommendations, as well as those that came out of a triple inquest into the deaths of three people in crisis shot dead by Toronto police. According to that report, Toronto police have implemented, in full or in part, 79 of Iacobucci’s 84 recommendations.\r\nBut critics have said it is not enough to take the word of the Toronto police on implementation.\r\nJulian Falconer, a veteran Toronto criminal lawyer who is representing members of Yatim’s family in a civil suit, has called for an independent audit of the Iacobucci report.\r\n“No matter the propaganda and public relations exercise they put you through about implementing those 84 recommendations, the truth is that the heart of those recommendations has yet to be fully implemented,” Falconer said last month, after Forcillo was found guilty of attempted murder in Yatim’s death.\r\nIn an interview with Torstar News Service earlier this month, Ontario’s independent police review director Gerry McNeilly said his office may be the one most suited to taking a close look at the Toronto police response to use-of-force recommendations. McNeilly said he would soon be calling for Toronto police provide him with a breakdown of actions on various recommendations from use-of-force reports and coroner’s inquests.\r\n“We want to see what’s being done,” McNeilly said. “I just don’t want them to tell me they did it — show me how you did it.”\r\nAsked Wednesday if there is a need for an independent audit of the Iacobucci report implementation, Toronto Police Chief Mark Saunders would not comment directly, but said the force has taken the report “very seriously.”\r\n“I don’t mind transparency. If people want to look and see what we have already done, so be it, I am fine,” Saunders said. “But I’m certainly not going to lead from behind.”"', 'news_health_3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `immu_knowledge`
--

CREATE TABLE `immu_knowledge` (
  `id` int(8) NOT NULL,
  `immu_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `immu_subtitle` varchar(100) CHARACTER SET utf8 NOT NULL,
  `immu_description` text NOT NULL,
  `immu_times` int(8) NOT NULL,
  `immu_importance` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `immu_knowledge`
--

INSERT INTO `immu_knowledge` (`id`, `immu_name`, `immu_subtitle`, `immu_description`, `immu_times`, `immu_importance`) VALUES
(1, 'DTaP-IPV-Hib', 'Diphtheria, Tetanus, acellular Pertussis, Polio and Haemophilus influenzae type b', 'Diphtheria, Tetanus, acellular Pertussis, Polio and Haemophilus influenzae type b (DTaP-IPV-Hib) is a combined vaccine that protects children against five diseases ? diphtheria, tetanus, pertussis, polio and serious diseases like meningitis caused by the Hib (Haemophilus influenzae type b) germ.  The abbreviation "aP" stands for "acellular pertussis." Hib vaccine is also available as a separate shot.', 4, 1),
(2, 'Pneu-C-13', 'Infections of the lungs, blood and covering of the brain', 'Pneumococcal infection can cause serious and sometimes fatal disease, including infections of the lungs (pneumonia), blood (bacteremia) and covering of the brain (meningitis). Meningitis can lead to permanent problems like deafness and brain damage. There are more than 90 different types of pneumococcal bacteria. Pneu-C-13 vaccine protects against the l3 types that cause most of the severe pneumococcal infections in children.', 3, 1),
(3, 'Rot', 'Rotavirus is the most common cause of severe vomiting and diarrhoea', 'Rotavirus is the most common cause of severe vomiting and diarrhoea among infants and young children. It is a genus of double-stranded RNA virus in the family Reoviridae. Nearly every child in the world has been infected with rotavirus at least once by the age of five.  Immunity develops with each infection, so subsequent infections are less severe; adults are rarely affected? ', 2, 1),
(4, 'MMR', 'The MMR vaccine protects against measles, mumps, and rubella', 'The MMR vaccine protects against measles, mumps, and rubella. The vaccine contains weakened forms of the measles, mumps and rubella viruses that do not cause disease. The vaccine is approved by Health Canada.\r\nThe MMR vaccine is provided free as part of your child’s routine immunizations. Call your health care provider to make an appointment.\r\n', 2, 1),
(5, 'Men-C-C', 'Against infection from common types of meningococcal bacteria, type C', 'The Men-C vaccine protects against infection from one of the most common types of meningococcal bacteria, type C. The vaccine is approved by Health Canada.\r\nThe Men-C vaccine is provided free as part of your child’s routine immunizations. Call your health care provider to make an appointment.\r\n', 1, 1),
(6, 'MMR  and Var', 'Varicella is a very common and highly infectious childhood disease ', 'Varicella, also known as chickenpox, is a very common and highly infectious childhood disease that is found worldwide. Symptoms appear 10 to 21 days after infection and last about 2 weeks. The defining symptom is a characteristic blister-like rash, which can cause severe irritation. Most children have a relatively mild illness, but severe illness may occur in adults and people with depressed immunity because of existing illness or because of a treatment that they are receiving', 2, 1),
(7, 'MMRV', 'Measles causes fever, rash, cough, and runny nose', 'Measles causes fever, rash, cough, and runny nose, and red, watery eyes. Complications can include ear infection, diarrhea, pneumonia, brain damage, and death. Mumps causes fever, headache, muscle aches, tiredness, loss of appetite, and swollen salivary glands. Complications can include swelling of the testicles or ovaries, deafness, inflammation of the. Rubella causes fever, sore throat, rash, headache, and red, itchy eyesVaricella (chickenpox) causes blister-like rash, itching, fever, and tiredness. Complications can include severe skin infection, scars, pneumo¬nia, brain damage, or death.', 2, 1),
(8, 'DTaP-IPV', 'Combined vaccine that protects children against diphtheria, tetanus, pertussis and polio', 'TaP-IPV is a combined vaccine that protects children against four diseases ? diphtheria, tetanus, pertussis and polio. The abbreviation "aP" stands for "acellular pertussis." This vaccine is recommended for use in infants and children younger than seven years. Diphtheria is a serious disease of the nose, throat and skin. It causes sore throat, fever and chills. It can be complicated by breathing problems, heart failure and nerve damage. Pertussis can also cause brain damage, seizures and death. Pertussis spreads very easily from an infected person to others through coughing or sneezing.', 1, 1),
(9, 'HB', 'Hepatitis B is an infectious disease caused by the hepatitis B virus', 'Hepatitis B is an infectious disease caused by the hepatitis B virus (HBV) which affects the liver. It can cause both acute and chronic infections. Many people have no symptoms during the initial infection. Some develop a rapid onset of sickness with vomiting, yellowish skin, tiredness, dark urine and abdominal pain. Often these symptoms last a few weeks and rarely does the initial infection result in death. It may take 30 to 180 days for symptoms to begin. Most of those with chronic disease have no symptoms; however, cirrhosis and liver cancer may eventually develop.', 2, 1),
(10, 'Men-C-ACYW135', 'The vaccine contains no adjuvant, preservatives, or thimerosal', 'Men-C-ACYW-135-CRM contains capsular polysaccharides from serogroups A (10 ?g), C (5 ?g), W135 (5 ?g) and Y (5 ?g). The vaccine contains no adjuvant, preservatives, or thimerosal. The container closures do not contain latex. The vaccine is packaged in two separate vials that are mixed prior to administration. Subsequently, 0.5 ml of the reconstituted solution is withdrawn from the vial that previously contained the meningococcal A powder. There may be a small amount of reconstituted vaccine remaining in the vial after the 0.5 ml is withdrawn.', 1, 1),
(11, 'HPV', 'HPV is the most common sexually transmitted infection', 'HPV is the most common sexually transmitted infection (STI). HPV is a different virus than HIV and HSV (herpes). HPV is so common that nearly all sexually active men and women get it at some point in their lives. There are many different types of HPV. Some types can cause health problems including genital warts and cancers. But there are vaccines that can stop these health problems from happening.', 2, 1),
(12, 'Tdap', 'Protects against three diseases: tetanus, diphtheria, and pertussis', 'Tdap is a combination vaccine that protects against three potentially life-threatening bacterial diseases: tetanus, diphtheria, and pertussis (whooping cough). Td is a booster vaccine for tetanus and diphtheria. It does not protect against pertussis.', 1, 1),
(13, 'Hib', 'Prevent Haemophilus influenzae type b infection', 'Haemophilus influenzae type B vaccine is a vaccine used to prevent Haemophilus influenzae type b infection. In countries that include it as a routine vaccine, rates of severe Hib infections have decreased more than 90%', 1, 0),
(14, 'Pneu-P-23', 'Pneu-P-23 vaccine efficacy against IPD among the elderly', 'Pneumococcal infection can cause serious and sometimes fatal disease, including infections of the lungs (pneumonia), blood (bacteremia) and covering of the brain (meningitis). Meningitis can lead to permanent problems like deafness and brain damage. When you are immunized, you also help protect others because you are less likely to spread infection.', 1, 0),
(15, '4CMenB', '4CMenB antigens are important for meningococcal survival, function, or virulence', 'The 4CMenB vaccine is an immunogenic vaccine, though its effectiveness, impact on carriage and the duration of protection remains unknown. Further research, evaluation and surveillance will be required to determine the duration of protection, the efficacy or effectiveness of 4CMenB vaccine, its ability to induce herd protection, and the risk of adverse events with widespread use.', 3, 1),
(16, 'HA', 'An infection of the liver caused by a virus', 'Hepatitis A is an infection of the liver caused by a virus. Adults and children are equally at risk. The virus most frequently spreads through direct contact with infected people or indirectly through ingestion of contaminated foods or water. Symptoms include fever, fatigue, loss of appetite, nausea, vomiting, abdominal pain, and jaundice (yellow skin and eyes).', 2, 0),
(17, 'Typh-I', 'Typhoid vaccine can prevent typhoid', 'Typhoid vaccine can prevent typhoid. There are two vaccines to prevent typhoid. One is an inactivated (killed) vaccine gotten as a shot, and the other is live, attenuated (weakened) vaccine, which is taken orally (by mouth).', 3, 0),
(18, 'BCG', 'BCG vaccine is used against tuberculosis', 'Bacillus Calmette–Guérin (BCG) vaccine is a vaccine primarily used against tuberculosis. Tuberculosis (TB) is a potentially serious infectious disease that mainly affects your lungs. The bacteria that cause tuberculosis are spread from one person to another through tiny droplets released into the air via coughs and sneezes.', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `email` varchar(100) NOT NULL,
  `hash` varchar(128) NOT NULL,
  `token` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`email`, `hash`, `token`) VALUES
('guochaohe@163.com', '$2a$10$j5O1u425bWbZ.aoltQji8eJQRmdo5BU7ugoQ1fdqxO5cpsEXG4naO', '8cc83973da1a10a7a15453d93f7035a9d33859f56a53a8984fb7a954d260bacf44197563653422736b5aa5796c3baf87a58a512730c98f1c3f96d0534740b643'),
('hanmingyue.hanna@gmail.com', '$2a$10$1rVaDLBf1rVpY7fz/nOqfezzIrq3ZmikP2DaM9UxdTCX7olAnjKEW', 'f1ca8b9d4416ac146567a4c40fc2441ce4411827576dd811caea1bf6e1c6c0574aab74f42ed8e009ed858b5eb009351e61b55c166a69249cd843cacfeee25597'),
('hhshshd@jsj.xs', '$2a$10$OkeHRS69MYzfEK2VngmSLuXLB5i8e3QuNuuuVI29kYXnMdRzAvvrC', '8400be995c2dafa633fc1a4700b1a85ea42464fbfc3a3337e66b322c5d359d40316dea8a77c46ca56475606abd29f52def71c726f71023ddff913c8a4dd187e0'),
('hjdn@gmail.com', '$2a$10$YyArGq4Ofeg4UvEyJC3Es.t0jf4y.usrBp7yGgZqftOsCVbxWHIoy', '7fba8e58249947099c091eb3ec803c6b106a65987cba405804afd85834695b7c8cd7c8d4b268c6030161c4511ba649671ba5a6336d8fe1df55f13aa8c2f8bec0'),
('jsj@jdj.co', '$2a$10$xVHgLnaGLLzNRX0a/9xETe.8VMgdnmyT.qZr.VO3MPuiv66LK2Caa', 'f58413750b053d9dd14ea8e3c21189a348b061c93d4d38d4ca51e3f16f94791925700ea47b897cb1d68207806a3ad2d3ad88aaa8c74f9436bc9a0a6e50d155c2'),
('sdsa@gmail.com', '$2a$10$fGZGUHoiR.vE/K64gbLBS.ECeZvQ7zbV4JMgdmsGkMrahA6.E77ei', ''),
('test@163.com', '$2a$10$J5xg91SiRLjgLQMLTRq0bO55Ftqvlk8fS/wNe8fEqCbnYfVuwTQlW', '476462cd0a8ee627fa57d523de9309b7936c23b3fe214a556de925549f7c62924ff96fe88fcbec86783a2fd7c8b20deac69594327ff5cb8cac4de8b49278c920'),
('test@gmail.com', '$2a$10$jdji1aFQMO.CRhzisYh9d.lHcNtnAXpG0n7Jy74cwHnoRcKx.CipO', '4d4d7f4d6181da23dc0c9f7a5bcbecd0969b58229a39d322187072c6fc7f7e4fd8123ca15285f0f52d7c485cc604fee4b6c463a4a619fc3ff7acf990bb8e4faa'),
('yhuang10@lakeheadu.ca', '$2a$10$BU9BjCzxtGPnvrYheHBEyO4gqKeTCryVZEFv2UWH2lRaHQAWoeLcy', 'ab5e6d808390bcc24fb534c15d0eecea7bd842b426dd2fa585ee0e7b99518f2539f06625f60060b2f4aad95ae469be99462ddaec342a5d58a84de6cc0ed3d45f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baby_infomation`
--
ALTER TABLE `baby_infomation`
  ADD KEY `baby_infomation_ibfk_1` (`email`);

--
-- Indexes for table `immu_knowledge`
--
ALTER TABLE `immu_knowledge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baby_infomation`
--
ALTER TABLE `baby_infomation`
  ADD CONSTRAINT `baby_infomation_ibfk_1` FOREIGN KEY (`email`) REFERENCES `userprofile` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
