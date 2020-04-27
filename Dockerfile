FROM centos:centos7.7.1908

LABEL "com.github.actions.name"="Create Zip File"
LABEL "com.github.actions.description"="Create a zip file containing specific files from your repository"
LABEL "com.github.actions.icon"="folder-plus"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/montudor/action-zip"
LABEL "homepage"="https://github.com/montudor/action-zip"
LABEL "maintainer"="Monte Hellawell <monte@montudor.com>"

RUN yum install -y \
		curl \
		wget \
		subversion \
		git \
		git-svn \
		sshpass \
		kde-l10n-Chinese \
		glibc-common \
		unzip \
		zip && \
	svn --version && \
	localedef -c -f UTF-8 -i zh_CN zh_CN.utf8
ENV LC_ALL zh_CN.UTF-8
