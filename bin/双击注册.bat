@echo off
echo =====================ע���ӡ�ؼ�===================
echo ע���ӡ�ؼ���ע���360��ɱ��������롰�������С�
echo ====================================================
echo �밴�������ʼע��
pause>nul
set v=%~dp0
echo Windows Registry Editor Version 5.00 >regist.reg
echo [HKEY_CLASSES_ROOT\albertprint] >>regist.reg
echo "URL Protocol"="%v:\=\\%PrintClient.exe" >>regist.reg
echo @="AlbertPrintProtocol" >>regist.reg
echo [HKEY_CLASSES_ROOT\albertprint\DefaultIcon] >>regist.reg
echo @="%v:\=\\%PrintClient.exe,1" >>regist.reg
echo [HKEY_CLASSES_ROOT\albertprint\shell] >>regist.reg
echo [HKEY_CLASSES_ROOT\albertprint\shell\open] >>regist.reg
echo [HKEY_CLASSES_ROOT\albertprint\shell\open\command] >>regist.reg
echo @="\"%v:\=\\%PrintClient.exe\" \"%%1\"" >>regist.reg
regedit /s %v%regist.reg
del /q regist.reg
echo ��ӡ�ؼ�ע��ɹ�,��������˳�
pause>nul