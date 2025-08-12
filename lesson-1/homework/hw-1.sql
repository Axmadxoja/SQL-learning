Ma’lumot – bu hali tartiblanmagan, tahlil qilinmagan yoki kontekstga ega bo‘lmagan faktlar, raqamlar, matnlar, belgilar yoki boshqa turdagi xom axborot. Ma’lumotlar bazasi – bu ma’lumotlarni saqlash, boshqarish va ularga kirishni osonlashtirish uchun mo‘ljallangan tartiblangan elektron tizim. Relatsion ma’lumotlar bazasi – ma’lumotlar jadval ko‘rinishida saqlanadigan, jadvallar orasidagi bog‘lanishlar kalitlar (asosiy va tashqi kalitlar) orqali belgilanadigan ma’lumotlar bazasi turi. Jadval – bu relatsion ma’lumotlar bazasida ma’lumotlar satrlar (yozuvlar) va ustunlar (maydonlar) shaklida saqlanadigan struktura
SQL Server katta hajmdagi tuzilgan (structured) ma’lumotlarni samarali saqlash, qidirish va boshqarishni ta’minlaydi. Har xil ma’lumot turlari, indekslar (indexing) va bo‘lish (partitioning) orqali ishlash tezligini oshiradi. Foydalanuvchini aniqlash (Windows yoki SQL autentifikatsiyasi) va ruxsatlar (authorization) orqali ma’lumotlarga kirish nazorat qilinadi. Ma’lumotlarni shifrlash (encryption), satr darajasida xavfsizlik (row-level security) va dinamik ma’lumotni yashirish (data masking) funksiyalari mavjud.Always On Availability Groups, Failover Clustering va Backup/Restore kabi funksiyalar yordamida tizim uzluksiz ishlashda davom etadi va nosozlik holatida tiklanadi.Transact-SQL (T-SQL) orqali murakkab so‘rovlar, protseduralar, funksiyalar va triggerlar yozish mumkin.Ko‘p jadvalli qo‘shilishlar (JOIN), ichki so‘rovlar (subqueries) kabi ilg‘or so‘rovlar bajariladi.SQL Server quyidagi vositalarni o‘z ichiga oladi:SSRS (Reporting Services) – hisobotlar yaratish.SSIS (Integration Services) – ma’lumotlarni ko‘chirish va o‘zgartirish.SSAS (Analysis Services) – analitik modellash va ko‘p o‘lchovli tahlillar.
SQL Server’ga ulanishda foydalaniladigan ikki asosiy autentifikatsiya (foydalanuvchini aniqlash) rejimi mavjud:Windows Authentication (Windows orqali autentifikatsiya),SQL Server Authentication (SQL Server orqali autentifikatsiya) 
CREATE DATABASE SchoolDB
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
Bu nima? Microsoft tomonidan ishlab chiqilgan ma’lumotlar bazasi boshqaruv tizimi (DBMS). U orqali ma’lumotlarni saqlash, boshqarish, tahlil qilish va ularga xizmat ko‘rsatish mumkin.
Bu nima? Bu grafik interfeysli dastur bo‘lib, u orqali foydalanuvchilar SQL Server bilan o‘zaro ishlaydi.
INSERT INTO Students (StudentID, Name, Age)
VALUES (1, 'Ali', 20);
INSERT INTO Students (StudentID, Name, Age)
VALUES 
    (1, 'Ali', 20),
    (2, 'Dilnoza', 22),
    (3, 'Jasur', 19);
C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup
