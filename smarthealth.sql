-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2021 at 11:35 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smarthealth`
--

-- --------------------------------------------------------

--
-- Table structure for table `disease`
--

CREATE TABLE `disease` (
  `DiseaseID` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Definition` varchar(500) NOT NULL,
  `mainSymptom` varchar(255) NOT NULL,
  `Symptom1` varchar(255) NOT NULL,
  `Symptom2` varchar(255) NOT NULL,
  `Symptom3` varchar(255) NOT NULL,
  `Symptom4` varchar(255) NOT NULL,
  `Treatment` varchar(1000) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `disease`
--

INSERT INTO `disease` (`DiseaseID`, `Title`, `Definition`, `mainSymptom`, `Symptom1`, `Symptom2`, `Symptom3`, `Symptom4`, `Treatment`, `location`) VALUES
(1, 'depression', 'Depression is a kind of depressive disorder, is a chronic recurrent disease.', 'upset', 'slow thinking', 'anxiety', 'not breathing smoothly', 'head pressure', 'Medications and psychotherapy are effective for most people with depression. Your primary care doctor or psychiatrist can prescribe medications to relieve symptoms. However, many people with depression also benefit from seeing a psychiatrist, psychologist or other mental health professional.If you have severe depression, you may need a hospital stay, or you may need to participate in an outpatient treatment program until your symptoms improve.', 'psychological'),
(2, 'hypertension', 'Hypertension is a cardiovascular syndrome with elevated systemic arterial pressure as the main clinical manifestation. Hypertension is the most common chronic disease and the main risk of cardiovascular and cerebrovascular diseases.', 'dizziness', 'visual impairment', 'cardiac decompensation', 'severe headache', 'azotemia', 'Changing your lifestyle can help control and manage high blood pressure. Your doctor may recommend that you make lifestyle changes including: 1.Eating a heart-healthy diet with less salt. 2.Getting regular physical activity. 3.Maintaining a healthy weight or losing weight if you are overweight or obese. 4.Limiting the amount of alcohol you drink. But sometimes lifestyle changes are not enough. If diet and exercise do not help, your doctor may recommend medication to lower your blood pressure.', 'cardiovascular'),
(3, 'prostatitis', 'Prostatitis is a pathological change related to inflammation, immunity and neuroendocrine caused by a variety of complex reasons and incentives.', 'burning when I pee', 'asymptomatic bacteriuria', 'pelycalgia', 'dribble urination', 'acute urinary retention', '1.Soak in a warm bath (sitz bath) or use a heating pad. 2.Limit or avoid alcohol, caffeine, and spicy or acidic foods, which can irritate your bladder. 3.Avoid activities that can irritate your prostate, such as prolonged sitting or bicycling. 4.Drink plenty of caffeine-free beverages. This will cause you to urinate more and help flush bacteria from your bladder.', 'prostate'),
(4, 'cervical spondylosis', 'Cervical spondylosis, also known as cervical spine syndrome, is a degenerative disorder based on pathological changes, mainly due to long-term strain of cervical spine, hyperosteogeny, or disc prolapse, ligament thickening, resulting in cervical spinal cord, nerve root or vertebral artery compression, a series of clinical syndromes of functional dysfunction.', 'neck pain', 'paralysis brachialis', 'shoulder and back pain', 'pain in the occiput and back of theneck', 'limited head movement', '1.Regular exercise. Maintaining activity will help speed recovery, even if you have to temporarily modify some of your exercises because of neck pain. People who walk daily are less likely to experience neck and low back pain. 2.Over-the-counter pain relievers. Ibuprofen (Advil, Motrin IB, others), naproxen sodium (Aleve) or acetaminophen (Tylenol, others) is often enough to control the pain associated with cervical spondylosis. 3.Heat or ice. Applying heat or ice to your neck can ease sore neck muscles. 4.Soft neck brace. The brace allows your neck muscles to rest. However, a neck brace should be worn for only short periods of time because it can eventually weaken neck muscles.', 'neck'),
(5, 'diabetes', 'Diabetes is a common disease caused by the interaction of genetic and environmental factors. The common symptoms include polydipsia, polyuria, polyphagia, and weight loss. Diabetes can cause damage to multiple systems of the body.', 'glucosuria', 'polyuria', 'emaciation', 'polydipsia', 'dermopathy', 'Diabetes is a serious disease. Following your diabetes treatment plan takes round-the-clock commitment. Careful management of diabetes can reduce your risk of serious - even life-threatening - complications. Make a commitment to managing your diabetes. Choose healthy foods and maintain a healthy weight. Make physical activity part of your daily routine.', 'pancreas'),
(6, 'kidney stone', 'kidney stones refer to the calculi occurring in the calyces, renal pelvis and the junction of renal pelvis and ureter. Kidney is the main site of urinary calculi formation, stones in any other site can be primary kidney.', 'hematuria', 'pain while urinating', 'burning while urinating', 'sudden colic', 'sharp pain in the side and back', 'You may reduce your risk of kidney stones if you: 1.Drink water throughout the day. 2.Eat fewer oxalate-rich foods. 3.Choose a diet low in salt and animal protein. 4.Continue eating calcium-rich foods, but use caution with calcium supplements.', 'kidney'),
(7, 'pharyngitis', 'Pharyngitis is diffuse inflammation of pharyngeal mucosa, submucosa and lymphatic tissue, often a part of upper respiratory tract inflammation, more common in adults, long course, stubborn symptoms, more difficult to cure.', 'sore throat', 'congestion of throat', 'scratchy sensation in the throat', 'difficulty swallowing', 'red tonsils', '1.Rest. Get plenty of sleep. Rest your voice, too. 2.Drinkfluids. Fluids keep the throat moist and prevent dehydration. Avoid caffeine and alcohol, which can dehydrate you. 3.Try comforting foods and beverage. 4.Consider lozenges or hard candy. 5.Avoid irritants.', 'throat'),
(8, 'pneumonia', 'Pneumonia is an infection that inflames the air sacs in one or both lungs. The air sacs may fill with fluid or pus (purulent material), causing cough with phlegm or pus, fever, chills, and difficulty breathing. A variety of organisms, including bacteria, viruses and fungi, can cause pneumonia.', 'chest pain when cough', 'fever', 'fatigue', 'shortness of breath', 'expectoration', '1.Get plenty of rest. Do not go back to school or work until after your temperature returns to normal and you stop coughing up mucus. Even when you start to feel better, be careful not to overdo it. Because pneumonia can recur, it is better not to jump back into your routine until you are fully recovered. Ask your doctor if you are not sure. 2.Stay hydrated. Drink plenty of fluids, especially water, to help loosen mucus in your lungs. 3.Take your medicine as prescribed. Take the entire course of any medications your doctor prescribed for you. If you stop taking medication too soon, your lungs may continue to harbor bacteria that can multiply and cause your pneumonia to recur.', 'lung'),
(9, 'peptic ulcer', 'Peptic ulcers are open sores that develop on the inside lining of your stomach and the upper portion of your small intestine. The most common symptom of a peptic ulcer is stomach pain.', 'stomachache', 'heartburn', 'nausea', 'bloating', 'hematochezia', 'Treatment for peptic ulcers depends on the cause. Usually treatment will involve killing the H. pylori bacterium if present, eliminating or reducing use of NSAIDs if possible, and helping your ulcer to heal with medication. 1.Consider using pain relievers. 2.Control stress. 3.Do not smoke. 4.Limit or avoid alcohol.', 'stomach'),
(10, 'Heart attack', 'A heart attack occurs when the flow of blood to the heart is blocked. The blockage is most often a buildup of fat, cholesterol and other substances, which form a plaque in the arteries that feed the heart (coronary arteries). Sometimes, a plaque can rupture and form a clot that blocks blood flow. The interrupted blood flow can damage or destroy part of the heart muscle. A heart attack, also called a myocardial infarction, can be fatal, but treatment has improved dramatically over the years.', 'pain in chest', 'shortness of breath', 'cold sweat', 'fatigue', 'sudden dizziness', 'Each minute after a heart attack, more heart tissue deteriorates or dies. Restoring blood flow quickly helps prevent heart damage. 1.Avoid smoking. 2.Control your blood pressure and cholesterol levels. 3.Get regular medical checkups. 4.Exercise. Regular exercise helps improve heart muscle function after a heart attack and helps prevent a heart attack. 5.Maintain a healthy weight. Excess weight strains your heart and can contribute to high cholesterol, high blood pressure and diabetes. 6.Eat a heart-healthy diet. Saturated fat, trans fats and cholesterol in your diet can narrow arteries to your heart, and too much salt can raise blood pressure. 7.Control stress. 8.Avoid or limit alcohol.', 'heart'),
(11, 'Asthma', 'Asthma is a condition in which your airways narrow and swell and may produce extra mucus. This can make breathing difficult and trigger coughing, a whistling sound (wheezing) when you breathe out and shortness of breath. For some people, asthma is a minor nuisance. For others, it can be a major problem that interferes with daily activities and may lead to a life-threatening asthma attack. Asthma can not be cured, but its symptoms can be controlled. Because asthma often changes over time, it is i', 'wheezing', 'shortness of breath', 'chest tightness or pain', 'coughing', 'wheezing when exhaling', 'The right medications for you depend on a number of things - your age, symptoms, asthma triggers and what works best to keep your asthma under control. Preventive, long-term control medications reduce the swelling (inflammation) in your airways that leads to symptoms. Quick-relief inhalers (bronchodilators) quickly open swollen airways that are limiting breathing. In some cases, allergy medications are necessary. Long-term asthma control medications, generally taken daily, are the cornerstone of asthma treatment. Avoid your triggers: 1.Use air conditioner. Air conditioning reduces the amount of airborne pollen from trees, grasses and weeds that finds its way indoors. 2.Decontaminate your decor. Minimize dust that may worsen nighttime symptoms by replacing certain items in your bedroom. 3.Clean regularly. Clean your home at least once a week. 4.Get regular exercise. Having asthma does not mean you have to be less active. Treatment can prevent asthma attacks and control symptoms during a', 'lung'),
(12, 'stroke', 'A stroke occurs when the blood supply to part of your brain is interrupted or reduced, preventing brain tissue from getting oxygen and nutrients. Brain cells begin to die in minutes. A stroke is a medical emergency, and prompt treatment is crucial. Early action can reduce brain damage and other complications.', 'headache', 'trouble walking', 'problems seeing in one or both eyes', 'numbness of the arm or leg', 'trouble speaking', 'Emergency treatment for stroke depends on whether you are having an ischemic stroke or a stroke that involves bleeding into the brain (hemorrhagic). Ischemic stroke: To treat an ischemic stroke, doctors must quickly restore blood flow to your brain. Hemorrhagic stroke: Emergency treatment of hemorrhagic stroke focuses on controlling the bleeding and reducing pressure in your brain caused by the excess fluid. After emergency treatment, you will be closely monitored for at least a day. After that, stroke care focuses on helping you recover as much function as possible and return to independent living. The impact of your stroke depends on the area of the brain involved and the amount of tissue damaged.', 'head'),
(13, 'Parkinson disease', 'Parkinson disease is a progressive nervous system disorder that affects movement. Symptoms start gradually, sometimes starting with a barely noticeable tremor in just one hand. Tremors are common, but the disorder also commonly causes stiffness or slowing of movement. In the early stages of Parkinson disease, your face may show little or no expression. Your arms may not swing when you walk. Your speech may become soft or slurred. Parkinson disease symptoms worsen as your condition progresses ove', 'tremor', 'slowed movement', 'rigid muscles', 'impaired posture and balance', 'loss of automatic movements', 'Parkinson disease can not be cured, but medications can help control your symptoms, often dramatically. In some more advanced cases, surgery may be advised. Your doctor may also recommend lifestyle changes, especially ongoing aerobic exercise. In some cases, physical therapy that focuses on balance and stretching also is important. A speech-language pathologist may help improve your speech problems. 1.Healthy eating: While no food or combination of foods has been proved to help in Parkinson disease, some foods may help ease some of the symptoms. For example, eating foods high in fiber and drinking an adequate amount of fluids can help prevent constipation that is common in Parkinson disease. 2.Exercise: Exercising may increase your muscle strength, flexibility and balance. Exercise can also improve your well-being and reduce depression or anxiety. 3.Avoiding falls: In the later stages of the disease, you may fall more easily. In fact, you may be thrown off balance by just a small push ', 'nerve'),
(14, 'Tenosynovitis', 'Tenosynovitis is a painful condition affecting the tendons on the thumb side of your wrist. If you have tenosynovitis, it will probably hurt when you turn your wrist, grasp anything or make a fist.', 'pain near the base of thumb', 'swelling near the base of thumb', 'difficulty moving thumb', '', '', '1.Avoid moving your wrists the same way repeatedly. 2.Wear a brace or splint if suggested by your doctor. 3.Follow through with recommended exercises. 4.Note activity that causes pain, swelling or numbness in your thumb and wrist, try to avoid it, and share that information with your doctor.', 'hand'),
(15, 'Cavities', 'Cavities are permanently damaged areas in the hard surface of your teeth that develop into tiny openings or holes. Cavities, also called tooth decay or caries, are caused by a combination of factors, including bacteria in your mouth, frequent snacking, sipping sugary drinks and not cleaning your teeth well.', 'toothache', 'visible holes in teeth', 'black on tooth surface', 'pain when biting', 'tooth sensitivity', 'Regular checkups can identify cavities and other dental conditions before they cause troubling symptoms and lead to more-serious problems. The sooner you seek care, the better your chances of reversing the earliest stages of tooth decay and preventing its progression. If a cavity is treated before it starts causing pain, you probably will not need extensive treatment.', 'tooth'),
(16, 'Periodontitis', 'Periodontitis, also called gum disease, is a serious gum infection that damages the soft tissue and, without treatment, can destroy the bone that supports your teeth. Periodontitis can cause teeth to loosen or lead to tooth loss.', 'swollen gums', 'bad breath', 'painful chewing', 'gums bleed easily', 'gums feel tender', 'Periodontitis is common but largely preventable. It is usually the result of poor oral hygiene. Brushing at least twice a day, flossing daily and getting regular dental checkups can greatly improve your chances of successful treatment for periodontitis and can also reduce your chance of developing it. Treatment may be performed by a periodontist, a dentist or a dental hygienist. The goal of periodontitis treatment is to thoroughly clean the pockets around teeth and prevent damage to surrounding bone. You have the best chance for successful treatment when you also adopt a daily routine of good oral care, manage health conditions that may impact dental health and stop tobacco use. 1.Brush your teeth twice a day or, better yet, after every meal or snack. 2.Use a soft toothbrush and replace it at least every three months. 3.Floss daily. 4.Use a mouth rinse to help reduce plaque between your teeth, if recommended by your dentist. 5.Do not smoke or chew tobacco.', 'tooth');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `username` char(45) NOT NULL,
  `password` char(45) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `cpassword` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `disease`
--
ALTER TABLE `disease`
  ADD PRIMARY KEY (`DiseaseID`),
  ADD UNIQUE KEY `mainSymptom` (`mainSymptom`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disease`
--
ALTER TABLE `disease`
  MODIFY `DiseaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
