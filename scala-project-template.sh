
projectname=$1

git clone  https://github.com/mravind3r/sbt-template.git  ${projectname}

cd ${projectname}

workingdir=$(pwd)

rm -rf .git

mkdir -p src/main/scala
mkdir -p src/main/java
mkdir -p src/main/resources

mkdir -p src/test/scala
mkdir -p src/test/resources
mkdir -p src/test/java

cd src/main/scala

echo "object Hello extends Trait { println(\"hello world\") }" >> Hello.scala

cd ${workingdir}

sbt run


