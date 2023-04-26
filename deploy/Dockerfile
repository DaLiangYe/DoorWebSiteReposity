#下载java8的镜像
FROM primetoninc/jdk:1.8
#将本地文件挂载到/tmp
VOLUME /tmp
#复制文件到容器
ADD register.jar /register.jar
#暴露端口
EXPOSE 8001
#配置启动容器后执行的命令
ENTRYPOINT ["java","-jar","/register.jar"]