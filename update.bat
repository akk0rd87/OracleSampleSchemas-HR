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