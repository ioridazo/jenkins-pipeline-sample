@echo off

:input
set INPUT=
set /P INPUT="サービスを停止しますか？(n/Y):
if not defined INPUT (
  goto input
)
if not %INPUT% == Y (
  echo 処理を中断します。
  exit 0
)

:: サービス停止
sc.exe stop jenkins-pipeline-sample
