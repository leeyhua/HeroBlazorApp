# 使用官方的 .NET 5.0 运行时作为基础镜像
FROM mcr.microsoft.com/dotnet/aspnet:5.0

# 设置工作目录
WORKDIR /app

# 将发布的应用程序复制到 Docker 容器中
COPY ./publish/ .

# 设置环境变量，使得应用程序能够在非 HTTPS 环境中运行
ENV ASPNETCORE_URLS=http://+:80

# 暴露 80 端口
EXPOSE 80

# 设置应用程序的入口点
ENTRYPOINT ["dotnet", "HeroBlazorApp.dll"]