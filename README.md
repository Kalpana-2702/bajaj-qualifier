# bajaj-qualifier
Spring Boot application for Bajaj Finserv Health Qualifier 1 (JAVA) – Webhook registration, SQL query solution, and secure submission using JWT.



# Bajaj Finserv Health | Qualifier 1 | JAVA

## 📌 Problem Statement
Spring Boot app to:
- Register a webhook
- Solve assigned SQL problem
- Submit final SQL query securely with JWT

Since my **regNo ends with an odd digit**, my assigned task is **Question 1**:  
Find the highest salary (not credited on 1st of the month) with employee Name, Age, and Department.

---

## 📊 Output Format
- SALARY  
- NAME  
- AGE  
- DEPARTMENT_NAME  

---

## ✅ Final SQL Query
```sql
SELECT 
    p.AMOUNT AS SALARY,
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS NAME,
    TIMESTAMPDIFF(YEAR, e.DOB, CURDATE()) AS AGE,
    d.DEPARTMENT_NAME
FROM PAYMENTS p
JOIN EMPLOYEE e ON p.EMP_ID = e.EMP_ID
JOIN DEPARTMENT d ON e.DEPARTMENT = d.DEPARTMENT_ID
WHERE DAY(p.PAYMENT_TIME) <> 1
ORDER BY p.AMOUNT DESC
LIMIT 1;
