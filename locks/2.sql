SELECT B.Owner, B.Object_Name, A.Oracle_Username, A.OS_User_Name  
FROM V$Locked_Object A, All_Objects B
WHERE A.Object_ID = B.Object_ID