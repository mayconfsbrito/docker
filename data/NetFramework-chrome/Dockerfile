FROM mcr.microsoft.com/windows/servercore:1803

MAINTAINER Maycon Brito <maycon.fernando@totvs.com.br>

RUN powershell -Command iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')); 
RUN choco install -y googlechrome

RUN mkdir app
WORKDIR C:\\app
COPY bin\\Release\\ \\app

ENTRYPOINT [ "powershell" ]