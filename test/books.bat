


SET /A "topx = 1"
SET /A "bookx = 1"
del a.txt


:loop1
if %topx% leq 6 (
echo TOP %topx% >> a.txt



:loop2
echo test1
if %bookx% leq 5 (
echo BOOK %bookx% >> a.txt
SET /A "!bookx! = !bookx! + 1"
goto :loop2
)

SET /A "topx = topx + 1"
goto :loop1
)
