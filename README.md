# Colouring the Abelian Sandpile Model

This is a fun exercise to get a nice colour palette for the [Abelian
sandpile model](https://en.wikipedia.org/wiki/Abelian_sandpile_model)
which I used for the coursework on the 2025/26 on-campus run of the
Message-Passing Programming course. It's a very simple 2D cellular
automaton where you have piles of grains of sand at each cell. The only
rule is that, each step, if a pile is four or more grains high it
sheds a grain to each of its four nearest neighbours. Eventually you
reach a situation where all sandpiles are 0, 1, 2 or 3 grains
high. The output image is coloured by height and, remarkably for such
a simple model, shows really interesting fractal patterns:

<p align="center">
    <img src="sanddef.png" height="256">
</p>

The default colours I used for the four heights were black, green, magenta and yellow. However, I'm sure there are nicer ways to colour the picture.

**The challenge is to find the prettiest (in my opinion!) colouring**

I've provided a simple script for you to play around with the colour palette; the colours are specified as RGB triplets (I always use black for zero grains). For example,
to reproduce the colouring above:
````
./sandcolour.sh 0 1 0  1 0 1  1 1 0
palette: h1=(0,1,0); h2=(1,0,1); h3=(1,1,0)
converting <sand512.dat> to <sandnew.ppm> ...
... done
````
I think the PPM format is reasonably widely supported - it can definitely be viewed (or converted to, say, PNG) using `display` (or `convert`) from the ImageMagick suite.

If you want, you can play around with random colourings:

````
./sandcolour.sh $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256))
palette: h1=(212,100,138); h2=(49,181,93); h3=(54,26,135)
converting <sand512.dat> to <sandnew.ppm> ...
... done
````
<p align="center">
    <img src="sandrng.png" height="256">
</p>

I just want the colours (i.e. the nine integer values you provided to `sandcolour.sh`) and **not** the huge PNG image - there will be a small prize for the best entry!

Note that the palette is included in the header of the PPM file itself, e.g.:
````
user@laptop:$ head -3 sandnew.ppm
P3
# Written by sandcolour
# Palette: h1=(63,107,232); h2=(219,150,8); h3=(195,24,76)
````

## Email your best colour palette to me, d.henty@epcc.ed.ac.uk, by 10am on Monday 2nd February 2026
