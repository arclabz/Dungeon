SET /A "count = 100"


SET /A "index = 0"
SET /A "count = count * 4"
del out.txt
echo ERSTEN 5 ZEILEN NICHT MITKOPIEREN >> out.txt
:while
if %index% leq %count% (

	SET /A "out1 = index"
	SET /A "out2 = index"
	SET /A "out2 = out2 / 4"
 	SET /A "out1 = out1 %%4"
	del %index%.json
  echo {"parent":"heads/p/%out1%","textures":{"particle":"heads/%out2%"}} >> %index%.json
	echo {"model":"heads/m/%index%"}, >> out.txt
	echo {"model":"heads/m/%index%","y":90}, >> out.txt
  echo {"model":"heads/m/%index%","y":180}, >> out.txt
	echo {"model":"heads/m/%index%","y":270}, >> out.txt
  SET /A "index = index + 1"
  goto :while
)
del 0.json
