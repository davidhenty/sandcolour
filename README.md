# sharpen
Fun exercise to get a nice colour palette for the [Abelian
sandpile model](https://en.wikipedia.org/wiki/Abelian_sandpile_model) used for the coursework on the 2025/26 on-campus run of
the Message-Passing Programming course.

````
./sandcolour.sh 0 1 0  1 0 1  1 1 0
palette: h1=(0,1,0); h2=(1,0,1); h3=(1,1,0)
converting <sand512.dat> to <sandnew.ppm> ...
... done
````
dsh@laptop:sandcolour$ ./sandcolour.sh $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256))
palette: h1=(181,100,235); h2=(186,248,189); h3=(19,252,47)
converting <sand512.dat> to <sandnew.ppm> ...


https://github.com/davidhenty/sandcolour.git

<p align="center">
    <img src="sandnew.png" height="512">
</p>


