# !/bin/bash

local_github_maven_repo='/Users/jinbum/Develop/GitHub/maven-repo'

./gradlew publishToMavenLocal

cp -R ~/.m2/repository/me/gogosing/github-maven-repository-test ${local_github_maven_repo}/snapshots/me/gogosing

cd ${local_github_maven_repo}

git status
git add ./
git status
git commit -m "github-maven-repository-test deploy"
git push origin master