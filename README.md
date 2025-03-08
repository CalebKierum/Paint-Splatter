# Paint Splatter

![Image](https://i.imgur.com/NW2RWCM.png)

This is a first attempt at the simulation of watercolors vaguely based on "Real-time simulation of watery paint" Tom Laerhoven.

This project generates water-color paint splatters procedurally then simulates the mixing and drying of paint colors.

See project files for a basic Metal Tutorial and a guide on how this effect is created.

## Generation of paint splatters

The geometry of the paint splatter consists of procedurally generated components.

### First Phase: Base Geometry

1. Create a central ball
2. Generate "orbiters" or circles that slightly extrude from the central ball
3. Create some random splatters out from the center
4. Create lines out from the center with some beads on them

![Core Ball](https://i.imgur.com/7xU1Pzt.png)

### Second Phase: Post Processing

After generating the course geometry the following steps are preformed to make it look organic

1. Blur the texture
![Blurred](https://i.imgur.com/40iekB3.png)

2. Add Random Noise

3. Add "Natural" looking noise
![Noised](https://i.imgur.com/HplckwN.png)

4. Clamp the result within a range
![Clamped](https://i.imgur.com/cktL0EJ.png)


## Watercolor simulation

The alpha channel is used to store the water level/wettness of the paint.

## Video

This simulation was originally made to be a Playground. However due to the buggy nature of Playgrounds it has been ported to just an iOS app.


https://github.com/user-attachments/assets/506ac093-7130-4f78-99ad-b58804f2d0d5


[![](http://img.youtube.com/vi/pRubVq0Fulc/0.jpg)](http://www.youtube.com/watch?v=pRubVq0Fulc "")
