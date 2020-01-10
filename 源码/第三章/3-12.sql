--查看当前用户下的用户信息
select * from user_users;

--当前用户有权访问的所有用户的基本信息
select * from all_users;

--访问数据库所有用户的用户信息（要求具有dba权限的用户使用此数据字典）
select * from dba_users;