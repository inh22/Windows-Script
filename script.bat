echo off
chcp 65001

@echo =========초기 분석 점검 날짜==========
date /t
@echo =========초기분석 점검 시간==========
time /t
@echo =========시스템 기본 정보(psinfo)==========
psinfo -h -s -d
@echo =========IP정보 (ipconfig /all)==========
ipconfig /all
@echo =========세션 정보 (net sess)==========
net sess
@echo =========포트 정보(netstat -na)==========
netstat -na
@echo =========로그온 사용자 정보(ntlast)==========
powershell -Command "Get-WinEvent -FilterHashtable @{LogName='Security'; ID=4624; Data='2'}"
@echo =========포트별 서비스 정보(fport /i)==========
powershell -Command "Get-NetTCPConnection"
@echo =========Promiscuous 모드 정보(promiscdetect)==========
promiscdetect
@echo =========로컬 서비스 정보(net start)==========
net start
@echo =========프로세스 기본 정보(pslist -t)==========
pslist -t
@echo =========DLL 정보(listdll)==========
Listdlls64
@echo =========핸들 정보(handle)==========
handle64
@echo =========공유 정보(net share)==========
net share
@echo =========사용자정보(net user)==========
net user
@echo =========도메인 그룹 정보(net group)==========
net group
@echo =========로컬 그룹 정보(net localgroup)==========
net localgroup
@echo =========관리자 그룹 정보==========
net localgroup administrators
