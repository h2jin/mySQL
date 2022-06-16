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
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `title` varchar(30) NOT NULL,
  `actorName` varchar(20) NOT NULL,
  `category` char(2) DEFAULT NULL,
  `roleName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`title`,`actorName`),
  CONSTRAINT `role_ibfk_1` FOREIGN KEY (`title`) REFERENCES `movie` (`title`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES ('82년생 김지영','공유','주연','대현'),('82년생 김지영','정유미','주연','지영'),('과속스캔들','박보영','주연','황정남'),('과속스캔들','왕석현','주연','황기동'),('과속스캔들','차태현','주연','남현수'),('관상','송강호','주연','내경'),('관상','이정재','주연','수양대군'),('관상','조정석','주연','팽헌'),('극한직업','공명','주연','재훈'),('극한직업','류승룡','주연','고반장'),('극한직업','이동휘','주연','영호'),('극한직업','이하늬','주연','장형사'),('극한직업','진선규','주연','마형사'),('더 킹','류준열','주연','최두일'),('더 킹','정우성','주연','한강식'),('더 킹','조인성','주연','박태수'),('라라랜드','라이언 고슬링','주연','세바스찬'),('라라랜드','엠마 스톤','주연','미아'),('리틀 포레스트','김태리','주연','혜원'),('리틀 포레스트','류준열','주연','재하'),('리틀 포레스트','문소리','조연','혜원 엄마'),('미녀는 괴로워','김아중','주연','강한나'),('미녀는 괴로워','성동일','조연','최사장'),('미녀는 괴로워','주진모','주연','한상준'),('바람','손호준','주연','김영주'),('바람','정우','주연','짱구'),('바람','황정음','주연','주희'),('반지의 제왕','숀 애스틴','주연','샘'),('반지의 제왕','앤디 서키스','주연','골룸'),('반지의 제왕','일라이저 우드','주연','프로도'),('범죄도시','마동석','주연','마석도'),('범죄도시','윤계상','주연','장첸'),('범죄도시','조재윤','조연','황사장'),('범죄도시','최귀화','조연','전반장'),('베테랑','오달수','조연','오팀장'),('베테랑','유아인','주연','조태오'),('베테랑','유해진','주연','최상무'),('베테랑','이동휘','조연','윤홍렬'),('베테랑','황정민','주연','서도철'),('부산행','공유','주연','석우'),('부산행','마동석','주연','상화'),('부산행','정유미','주연','성경'),('부산행','최우식','주연','영국'),('신과함께-죄와 벌','김향기','주연','덕춘'),('신과함께-죄와 벌','주지훈','주연','해원맥'),('신과함께-죄와 벌','차태현','주연','자홍'),('신과함께-죄와 벌','하정우','주연','강림'),('아이언맨','기네스 팰트로','주연','페퍼 포츠'),('아이언맨','로버트 다우니 주니어','주연','토니 스타크'),('아이언맨','테렌스 하워드','조연','제임스 로드'),('어벤져스','기네스 팰트로','조연','페퍼 포츠'),('어벤져스','로버트 다우니 주니어','주연','토니 스타크'),('어벤져스','마크 러팔로','주연','헐크'),('어벤져스','스칼릿 조핸슨','주연','나타샤 로마노프'),('어벤져스','크리스 에반스','주연','캡틴 아메리카'),('어벤져스','크리스 헴스워스','주연','토르'),('어벤져스','톰 히들스턴','주연','로키'),('엑시트','고두심','조연','현옥'),('엑시트','윤아','주연','의주'),('엑시트','조정석','주연','용남'),('크루엘라','마크 스트롱','조연','보리스'),('크루엘라','엠마 스톤','주연','크루엘라'),('크루엘라','엠마 톰슨','조연','바로네스'),('토르: 라그나로크','마크 러팔로','주연','헐크'),('토르: 라그나로크','크리스 헴스워스','주연','토르'),('토르: 라그나로크','톰 히들스턴','주연','로키'),('히말라야','라미란','조연','조명애'),('히말라야','정우','주연','박무택'),('히말라야','정유미','조연','최수영'),('히말라야','황정민','주연','엄홍길');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
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
