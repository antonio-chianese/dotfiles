# import warnings

# with warnings.catch_warnings():
#     warnings.filterwarnings("ignore", message="networkx backend defined more than once: nx-loopback")
#     import networkx as nx

# from manim import *
# import numpy as np

# class waves(Scene):
#     def construct(self):
#         a = Axes(x_range=[-1,10], y_range=[-1,10])

#         graph = a.plot(lambda x: np.sin(x), color=BLUE)
#         self.add(graph)

from manim import *

class SquareToCircleWithModifications(Scene):
    def construct(self):
        circle = Circle()
        square = Square()
        square.flip(RIGHT)
        square.rotate(-3 * TAU / 8)
        circle.set_fill(PINK, opacity=0.5)

        self.play(Create(square))
        self.play(Transform(square, circle))
        self.play(FadeOut(square))