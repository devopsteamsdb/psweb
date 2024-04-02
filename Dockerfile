FROM mcr.microsoft.com/powershell

RUN pwsh -c "Install-Module Polaris -Force"

WORKDIR /app

COPY  ./app .

CMD ["pwsh", "-f", "/app/polaris.ps1"]