CREATE DATABASE  IF NOT EXISTS `mathdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mathdb`;
-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: mathdb
-- ------------------------------------------------------
-- Server version	5.7.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dbmanagement_subtopic`
--

DROP TABLE IF EXISTS `dbmanagement_subtopic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbmanagement_subtopic` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` longtext,
  PRIMARY KEY (`id`),
  KEY `DBManagement_subtopic_57732028` (`topic_id`),
  CONSTRAINT `topic_id_refs_id_5fb279b4` FOREIGN KEY (`topic_id`) REFERENCES `dbmanagement_topic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbmanagement_subtopic`
--

LOCK TABLES `dbmanagement_subtopic` WRITE;
/*!40000 ALTER TABLE `dbmanagement_subtopic` DISABLE KEYS */;
INSERT INTO `dbmanagement_subtopic` VALUES (101,1,'Linear Functions'),(102,1,'Trigonometrical Functions'),(103,1,'Exponential and Logarithmic Functions'),(104,1,'Power Functions'),(105,1,'Conics'),(201,2,'Translation'),(202,2,'Scaling'),(203,2,'Reflection'),(204,2,'Composite Transformations'),(301,3,'Asymptotes of Rational Functions'),(302,3,'Graphs of Rational Functions'),(303,3,'Parametric Equations'),(401,4,'Graphs of the Form $$y = |f(x)|$$ and $$y = f(|x|)$$'),(402,4,'Graphs of the Form $$y^2 = f(x)$$'),(403,4,'Graphs of the Form $$y = \\frac{1}{f(x)}$$'),(501,5,'Definition of a Function'),(502,5,'One-One Functions'),(503,5,'Restriction to One-to-One Function'),(504,5,'Inverse Functions'),(505,5,'Composite Functions'),(601,6,'Solutions of Inequalities'),(602,6,'Inequalities involving Polynomials'),(603,6,'Inequalities involving Factorizable and Non-Factorizable Quadratics'),(604,6,'Inequalities involving Rational Functions'),(605,6,'Graphical Method'),(606,6,'Inequalities involving Modulus Functions'),(607,6,'Graphs of Modulus Functions'),(701,7,'Systems of Linear Equations'),(801,8,'Binomial Theorem for a Positive Integral Index'),(802,8,'Binomial Theorem for a Fraction or Negative Integral Index'),(803,8,'Binomial Series in Ascending and Descending Powers of x'),(804,8,'Binomial Series in Numerical Approximations'),(901,9,'Sequences and Series'),(902,9,'Arithmetic Progressions'),(903,9,'Geometric Progressions'),(904,9,'Sum to Infinity of a Geometric Series'),(905,9,'General Sequences and Series'),(1001,10,'The Sigma $$\\sum$$ Notation'),(1002,10,'Standard Summations'),(1003,10,'General Rules of Summations'),(1004,10,'Changing the Limits of Summation'),(1005,10,'Method of Difference'),(1006,10,'General Infinite Series'),(1101,11,'Induction Involving Summation of Series'),(1102,11,'Recursive Formulas for Sequences'),(1103,11,'Induction Involving Recursive Formulas for Sequences'),(1201,12,'Vectors - Concepts and Properties'),(1202,12,'Vector Algebra'),(1203,12,'Vector Theorem'),(1204,12,'2D Vectors'),(1205,12,'3D Vectors'),(1301,13,'Scalar Product'),(1302,13,'Applications of Scalar Product'),(1303,13,'Vector Product'),(1304,13,'Applications of Vector Product'),(1401,14,'Vector Equation of a Straight Line'),(1402,14,'Cartesian Equation of a Straight Line'),(1501,15,'Vector Equation of a Plane in Parametric Form'),(1502,15,'Vector Equation of a Plane in Scalar Product Form'),(1503,15,'Cartesian Equation of a Plane'),(1601,16,'A Point and a Line'),(1602,16,'A Pair of Lines'),(1603,16,'A Line and a Plane'),(1604,16,'A Point and a Plane'),(1605,16,'A Pair of Planes'),(1606,16,'Three Planes'),(1701,17,'Cartesian Form of Complex Numbers'),(1702,17,'Conjugate Complex Numbers'),(1703,17,'Theorems in Complex Algebra'),(1801,18,'Geometry of Complex Numbers'),(1802,18,'Trigonometric Form of Complex Numbers'),(1803,18,'Geometry of Complex Numbers in Trigonometric Form'),(1901,19,'Exponential Form of Complex Numbers'),(1902,19,'De Moivre s Theorem'),(1903,19,'nth Roots of Unity'),(1904,19,'nth Roots of w of Complex Numbers'),(2001,20,'Locus in the Argand Diagram'),(2002,20,'Regions in the Argand Diagram'),(2003,20,'Geometrical Interpretations of Complex Expressions'),(2101,21,'Differentiation by First Principles'),(2102,21,'Standard Derivatives'),(2103,21,'Rules of Differentiation'),(2104,21,'Inverse Trigonometrical Differentiation'),(2105,21,'Implicit Differentiation'),(2106,21,'Parametric Differentiation'),(2107,21,'Higher Derivatives'),(2201,22,'Equations of Tangents and Normals'),(2202,22,'Stationary Points'),(2203,22,'Graphical Interpretations of Derivatives'),(2204,22,'Minimization and Maximization'),(2205,22,'Rates of Change'),(2206,22,'Graphical Relation between $$y=f(x)$$ and $$y=f\'(x)$$'),(2301,23,'Maclaurin\'s Series'),(2302,23,'Standard Maclaurin?s Series Expansions'),(2303,23,'Small Angle Approximations'),(2401,24,'Standard Integrals'),(2402,24,'Rules of Integration'),(2403,24,'Integration Results from Inverse Trigonometrical Differentiation'),(2404,24,'Trigonometrical Integration using Trigonometrical Identities'),(2405,24,'Integration of Rational Functions by using Partial Fractions'),(2406,24,'Integration Results from using Partial Fractions'),(2407,24,'Integration by Substitution'),(2408,24,'Integration by Parts'),(2501,25,'Definite Integrals'),(2502,25,'Definite Integral involving Integration by Parts'),(2503,25,'Definite Integral involving Substitution'),(2504,25,'Interpretation of Definite Integral'),(2601,26,'Plane Areas'),(2602,26,'Volumes of Revolution'),(2701,27,'Solutions of First-Order Differential Equations'),(2702,27,'Solutions of Second-Order Differential Equations'),(2703,27,'Family of Solution Curves'),(2704,27,'Formulation of Differential Equations'),(2801,28,'Basic Counting Principles'),(2802,28,'Permutations'),(2803,28,'Combinations'),(2804,28,'Permutations involving Repetitions'),(2805,28,'Circular Permutations'),(2806,28,'Miscellaneous Problems'),(2901,29,'Probability'),(2902,29,'Conditional Probability'),(2903,29,'Probabilities of Independent Events'),(2904,29,'Methods of Solving Probability Problems'),(3001,30,'Discrete Random Variables'),(3002,30,'Binomial Distribution'),(3003,30,'Recurrence Formula for the Binomial Distribution'),(3101,31,'Poisson Distribution'),(3102,31,'Recurrence Formula for the Poisson Distribution'),(3103,31,'Sum of Two Independent Poisson Random Variables'),(3104,31,'Poisson Approximation to the Binomial Distribution'),(3201,32,'Continuous Random Variables'),(3202,32,'Normal Distribution'),(3203,32,'Standard Normal Distribution'),(3204,32,'Standardization of Normal Distribution'),(3205,32,'Linear Combination of Independent Identically Distributed Normal Random Variables'),(3206,32,'Normal Approximation to the Binomial Distribution'),(3207,32,'Normal Approximation to the Poisson Distribution'),(3301,33,'Sampling Methods'),(3302,33,'Sampling Distribution'),(3303,33,'Central Limit Theorem'),(3304,33,'Sample Statistics'),(3305,33,'Unbiased Estimates'),(3401,34,'z-Test for the Population Mean'),(3402,34,'t-Test for the Population Mean'),(3501,35,'Pearson Product-Moment Correlation Coefficient'),(3502,35,'Least Squares Regression Line of y on x'),(3503,35,'Least Squares Regression Line of x on y'),(3504,35,'Relation between Correlation Coefficient r and Coefficients b, d'),(3505,35,'Interpolation and Extrapolation'),(3506,35,'Transformations to Linearity'),(3601,36,'Others'),(3602,36,'Applied Mathematics'),(3603,36,'Particle Mathematics'),(3701,37,'Nature of Roots of Quadratic Equations'),(3702,37,'Quadratic Inequality'),(3703,37,'Sum and Products of Roots '),(3704,37,'Quadratic Graphs'),(3801,38,'Indices'),(3802,38,'Surds'),(3901,39,'Identities'),(3902,39,'Remainder Theorem'),(3903,39,'Factor Theorem'),(3904,39,'Solving Cubic Equations'),(4001,40,'Partial Fractions'),(4101,41,'Simultaneous Linear Equations in Two Unknowns'),(4102,41,'Simultaneous Linear and Non-linear Equations in Two Unknowns'),(4103,41,'Determinant, Inverse Matrix and Simultaneous Equations'),(4201,42,'Binomial Expansions'),(4301,43,'Exponential Functions and Equations'),(4302,43,'Logarithmic Functions and Equations'),(4401,44,'Modulus Functions'),(4403,44,'Modulus Functions'),(4501,45,'Trigonometric Functions for the General Angles'),(4502,45,'Trigonometric Identities and Equations'),(4503,45,'Solutions of Trigonometric Equations '),(4601,46,'Simple Coordinate Geometry in Two Dimensions '),(4602,46,'Straight Line Graphs'),(4603,46,'Coordinate Geometry of Circles'),(4604,46,'Graphs of  `y = ax^n` and `y^2 = kx`'),(4701,47,'Midpoint Theorem and Intercept Theorem for Triangles'),(4702,47,'Tangent and Scant	'),(4801,48,'Differentiation Techniques '),(4802,48,'Tangents and Normals'),(4803,48,'Stationary points, Maxima and Minima Problems '),(4804,48,'Rates of Change'),(4901,49,'Indefinite Integrals'),(4902,49,'Definite Integrals'),(4903,49,'Plane Areas by Integration '),(5001,50,'Kinematics '),(5101,51,'Set Language'),(5201,52,'Functions '),(5301,53,'Matrices'),(5401,54,'Vectors in Two Dimensions '),(5402,54,'Applications of Vectors in Relative Velocities'),(5501,55,'Permutations and Combinations'),(5601,56,'Arithmetic Progression and Geometric Progression'),(5701,57,'Circular Measure'),(5801,58,'Others'),(5901,59,'Numbers, Time and Percentage'),(5902,59,'Ratio, Rate, Proportion, Speed and Map Problems'),(5903,59,'Everyday Mathematics'),(6001,60,'Area and Perimeters of Figures'),(6002,60,'Volume and Surface Area of Solids'),(6101,61,'Algebraic Symbols and Manipulations'),(6102,61,'Subjects of Formulae'),(6103,61,'Expansion and Factorization of Algebraic Expression'),(6104,61,'Algebraic Fractions'),(6105,61,'Linear Equations'),(6106,61,'Linear Inequalities'),(6107,61,'Simultaneous Linear equations'),(6108,61,'Quadratic Equations'),(6109,61,'Indices'),(6201,62,'Number Sequence and Problem Solving'),(6301,63,'Coordinate Geometry'),(6401,64,'Graphs of Functions, Graphical Solutions of Equations'),(6402,64,'Distance-Time Graphs and Speed-Time Graphs'),(6403,64,'Variations'),(6501,65,'Geometrical Properties of Angles, Angle Properties of Polygons, Symmetry'),(6502,65,'Similarity and Congruence'),(6503,65,'Geometrical Properties of Circles'),(6504,65,'Geometrical Construction'),(6601,66,'Transformations'),(6701,67,'Trigonometric Ratios, Solution of Triangles'),(6702,67,'Angles of Elevation and Depression, Bearings'),(6801,68,'Set Language and Notation'),(6901,69,'Matrices'),(7001,70,'Vectors in Two Dimensions'),(7101,71,'Probability'),(7201,72,'Presentation of Data, Dot Diagram, Stem and Leaf Diagram, Histogram, Mean, Median and Mode,  Standard Deviation'),(7202,72,'Cumulative Frequency Curves, Box-and-Whisker Plot (or Box Plot)'),(7301,73,'Others'),(10101,114,'Number notation and place values'),(10102,114,'Order of operation'),(10103,114,'Factors and multiples'),(10104,114,'Decimal and fraction'),(10105,114,'Four operations'),(10201,115,'Length, mass and volume'),(10202,115,'Time'),(10203,115,'Area, perimeter, circumference'),(10204,115,'Speed and distance'),(10205,115,'Money'),(10301,116,'Line, curve and surface'),(10302,116,'Angles'),(10303,116,'Symmetry'),(10304,116,'Tessellation'),(10305,116,'Nets and solids'),(10401,117,'Picture graph'),(10402,117,'Bar graph'),(10403,117,'Tables'),(10404,117,'Line graph'),(10405,117,'Average of a set of data'),(10406,117,'Pie chart'),(10501,118,'Equivalent fraction'),(10502,118,'Fraction of a set of objects'),(10503,118,'Four operations'),(10601,119,'Percentage, ratio and fraction'),(10602,119,'Percentage'),(10603,119,'Percentage, decimal, fraction'),(10604,119,'Ratio'),(10701,120,'Guess and check'),(10702,120,'Pattern'),(10703,120,'Draw a diagram'),(10704,120,'Work backwards'),(10801,121,'Algebra');
/*!40000 ALTER TABLE `dbmanagement_subtopic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-15 19:53:54