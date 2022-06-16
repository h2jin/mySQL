-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: movieinfo
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `title` varchar(30) NOT NULL,
  `releaseDate` date NOT NULL,
  `starScore` float DEFAULT NULL,
  `genre` varchar(10) DEFAULT NULL,
  `image` text,
  PRIMARY KEY (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES ('82년생 김지영','2019-10-23',9.13,'드라마','https://movie-phinf.pstatic.net/20191024_215/1571900079078PNazL_JPEG/movie_image.jpg?type=m203_290_2'),('과속스캔들','2008-12-03',9.2,'코미디','https://movie-phinf.pstatic.net/20111223_14/1324584883775HhKfa_JPEG/movie_image.jpg?type=m203_290_2'),('관상','2013-09-11',8.02,'드라마','https://movie-phinf.pstatic.net/20130819_110/1376895907326wlXma_JPEG/movie_image.jpg?type=m203_290_2'),('극한직업','2019-01-23',6.6,'코미디','https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20190116_206%2F1547615429111dINWj_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2'),('더 킹','2017-01-18',8.39,'범죄','https://movie-phinf.pstatic.net/20170118_172/1484704779507T3ahF_JPEG/movie_image.jpg?type=m203_290_2'),('라라랜드','2016-12-07',8.91,'드라마','https://movie-phinf.pstatic.net/20201229_146/1609226288425JgdsP_JPEG/movie_image.jpg?type=m203_290_2'),('리틀 포레스트','2018-02-28',9.01,'드라마','https://movie-phinf.pstatic.net/20180130_167/1517289346533DfzLE_JPEG/movie_image.jpg?type=m203_290_2'),('미녀는 괴로워','2006-12-14',8.79,'코미디','https://movie-phinf.pstatic.net/20111222_283/1324561166934KJyL7_JPEG/movie_image.jpg?type=m203_290_2'),('바람','2009-11-26',9.28,'드라마','https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20111223_242%2F1324597990008Nj67F_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2'),('반지의 제왕','2001-12-31',9.84,'판타지','https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20210308_290%2F16151786976685f4Mv_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2'),('범죄도시','2017-10-03',9.28,'액션','https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20220420_22%2F16504370785559wHfw_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2'),('베테랑','2015-08-05',9.24,'액션','https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20150622_131%2F14349365467550iQnC_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2'),('부산행','2016-07-20',8.6,'액션','https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20200612_248%2F1591937633750Vvyr6_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2\n'),('신과함께-죄와 벌','2017-12-20',8.73,'판타지','https://movie-phinf.pstatic.net/20201230_252/1609304926719vwxpF_JPEG/movie_image.jpg?type=m203_290_2'),('아이언맨','2008-04-30',8.4,'액션','https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20111222_37%2F1324501632182vbSoY_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2'),('어벤져스','2012-04-26',8.8,'액션','https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20120426_172%2F1335428116411i030K_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2'),('엑시트','2019-07-31',8.99,'액션','https://movie-phinf.pstatic.net/20190724_161/1563931152464tk11A_JPEG/movie_image.jpg?type=m203_290_2'),('크루엘라','2021-05-26',9.23,'드라마','https://movie-phinf.pstatic.net/20210512_139/1620799657168vGIqq_JPEG/movie_image.jpg?type=m203_290_2'),('토르: 라그나로크','2017-10-25',9.03,'액션','https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20170928_85%2F1506564710105ua5fS_PNG%2Fmovie_image.jpg%3Ftype%3Dw640_2'),('히말라야','2015-12-16',8.67,'드라마','https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20151119_280%2F1447895561914GiahL_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-16 11:47:12
