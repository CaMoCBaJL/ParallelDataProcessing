USE [master]
GO

/****** Object:  Database [SSU.ParallelProcessing.Master]    Script Date: 17.03.2024 9:47:13 ******/
CREATE DATABASE [SSU.ParallelProcessing.Master]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SSU.ParallelProcessing.Master', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SSU.ParallelProcessing.Master.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SSU.ParallelProcessing.Master_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SSU.ParallelProcessing.Master_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SSU.ParallelProcessing.Master].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET ARITHABORT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET  DISABLE_BROKER 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET RECOVERY FULL 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET  MULTI_USER 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET DB_CHAINING OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET QUERY_STORE = ON
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [SSU.ParallelProcessing.Master] SET  READ_WRITE 


USE [master]
GO

/****** Object:  Database [SSU.ParallelProcessing.Slave1]    Script Date: 17.03.2024 9:47:13 ******/
CREATE DATABASE [SSU.ParallelProcessing.Slave1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SSU.ParallelProcessing.Slave1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SSU.ParallelProcessing.Slave1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SSU.ParallelProcessing.Slave1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SSU.ParallelProcessing.Slave1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SSU.ParallelProcessing.Slave1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET ARITHABORT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET  DISABLE_BROKER 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET RECOVERY FULL 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET  MULTI_USER 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET DB_CHAINING OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET QUERY_STORE = ON
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave1] SET  READ_WRITE 


/****** Object:  Database [SSU.ParallelProcessing.Slave2]    Script Date: 17.03.2024 9:47:13 ******/
CREATE DATABASE [SSU.ParallelProcessing.Slave2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SSU.ParallelProcessing.Slave2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SSU.ParallelProcessing.Slave2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SSU.ParallelProcessing.Slave2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SSU.ParallelProcessing.Slave2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SSU.ParallelProcessing.Slave2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET ARITHABORT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET  DISABLE_BROKER 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET RECOVERY FULL 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET  MULTI_USER 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET DB_CHAINING OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET QUERY_STORE = ON
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave2] SET  READ_WRITE 


/****** Object:  Database [SSU.ParallelProcessing.Slave3]    Script Date: 17.03.2024 9:47:13 ******/
CREATE DATABASE [SSU.ParallelProcessing.Slave3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SSU.ParallelProcessing.Slave3', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SSU.ParallelProcessing.Slave3.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SSU.ParallelProcessing.Slave3_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SSU.ParallelProcessing.Slave3_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SSU.ParallelProcessing.Slave3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET ARITHABORT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET  DISABLE_BROKER 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET RECOVERY FULL 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET  MULTI_USER 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET DB_CHAINING OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET QUERY_STORE = ON
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave3] SET  READ_WRITE 



/****** Object:  Database [SSU.ParallelProcessing.Slave4]    Script Date: 17.03.2024 9:47:13 ******/
CREATE DATABASE [SSU.ParallelProcessing.Slave4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SSU.ParallelProcessing.Slave4', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SSU.ParallelProcessing.Slave4.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SSU.ParallelProcessing.Slave4_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SSU.ParallelProcessing.Slave4_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SSU.ParallelProcessing.Slave4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET ARITHABORT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET  DISABLE_BROKER 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET RECOVERY FULL 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET  MULTI_USER 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET DB_CHAINING OFF 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET QUERY_STORE = ON
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [SSU.ParallelProcessing.Slave4] SET  READ_WRITE 