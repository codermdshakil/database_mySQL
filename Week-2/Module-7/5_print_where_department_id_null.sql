
-- এমন এমন departments গুলো কে দেখাও যেইখানে  কোনো Employee নাই ।

SELECT DEPARTMENTS.DEPARTMENT_NAME
FROM DEPARTMENTS -- DEPARTMENT সব গুলো রাখব এই জন্য left department রাখছি 
	 LEFT JOIN EMPLOYEES  -- যেই  employee এর department ID Null তাদের ওপর Condition দিব  এই জন্য এই table right এ রাখছি  
		ON DEPARTMENTS.DEPARTMENT_ID = EMPLOYEES.DEPARTMENT_ID
WHERE EMPLOYEES.DEPARTMENT_ID IS NULL; -- condition 