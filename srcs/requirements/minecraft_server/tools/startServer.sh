wget https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar
java -jar server.jar --nogui
sed -i "s/eula=false/eula=true/" eula.txt 
exec java -jar server.jar --nogui
