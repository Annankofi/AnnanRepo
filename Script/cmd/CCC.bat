@echo off
::����ʼǰҪ�ȵ���putcstart������һ����ɫ�ļ�
call:putcstart


::���ù��̾���[putcchar ���� ��ɫ]�����ֲ�����\/:*?"<>|��Щ���ţ���Ϊ��ͨ���ļ�����������ɫ�ģ�����ɫ���color�����е�һ����
call:putcchar "This is a test" 2b
call:putcchar " !" 2e
echo.
echo.


::�����ܵ��ļ����������ã��ո��Ҳ���������ƣ������ַ����Կո�ʼ���м京�пո��Կո��β�����ַ�ʽ���еĽ������ͬ��
echo �������[___�ո���ǰ��]
call:putchar "ʵ�����["
call:putcchar "   �ո���ǰ��" 5b
echo ]
echo.
echo �������[�ո���___�м�]
call:putchar "ʵ�����["
call:putcchar "�ո���   �м�" 5b
echo ]
echo.
echo �������[�ո��ں���___]
call:putchar "ʵ�����["
call:putcchar "�ո��ں���   " 5b
echo ]
echo.

call:putcchar "  ��" 09
call:putcchar "ʾ" 02
call:putcchar "��" 03
call:putcchar "��" 04
call:putcchar " Power" 05
call:putcchar " By" 06
call:putcchar " Kisiboo" 0E

pause>nul
goto :eof



::�����ǹ��̲��֣�����ֱ�Ӹ����ߣ�

:putcstart
set crp=c:\
set crf=crfile.tmp
set /p=   <nul>%crp%%crf%
goto :eof

:putcchar
ren %crp%%crf% %1
pushd .&C:&cd\
findstr /a:%2 . %1?
ren %crp%%1 %crf%
popd
goto :eof

:putchar
set /p=%1<nul
goto :eof
