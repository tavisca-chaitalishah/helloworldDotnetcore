FROM microsoft/dotnet:latest
MAINTAINER mike.lucas@wolterskluwer.com
RUN mkdir ~/test; \
    cd ~/test; \
	dotnet new; \
	sed -i 's/Console.WriteLine/Console.Clear(); Console.WriteLine/g' ~/test/Program.cs; \
	sed -i 's/Hello World!/H e l l o   W o r l d !/g' ~/test/Program.cs; \
    dotnet restore --infer-runtimes; \
	dotnet publish;
CMD ["/usr/bin/dotnet", "run", "-p", "/root/test/project.json"]
