# Oracle Database Sample Schemas: HR

## What is the liquibase?
[liquibase.org]|www.liquibase.org

## How should I install schema?
You should specify database params, login/password of dba user in the update.bat file and run it. Starting process will create HR user, schema objects and will insert table data.

For example:

```
create user akk0rd87 identified by "12345" default tablespace users quota 100m on users;

grant dba to akk0rd87;
```
and specify this params in the update.bat file

```
java -Dfile.encoding=UTF-8 -Duser.language=en -Duser.country=US ^
-jar lib/liquibase.jar ^
--logLevel=info ^
--classpath=lib/liquibase-ojdbc.jar ^
--driver=oracle.jdbc.OracleDriver ^
--changeLogFile=install.xml ^
--url="jdbc:oracle:thin:@127.0.0.1:1521:xe" ^
--username=akk0rd87 ^
--password=12345 ^
update
```