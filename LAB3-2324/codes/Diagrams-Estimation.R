library(DiagrammeR)
library(htmltools)

pEstimation <- add_mathjax(
  grViz(
    "digraph flowchart {
      graph [layout = dot,
         rankdir = TB,
         overlap = true,
         fontsize = 10]

      # node definitions with substituted label text
      node [fontname = Helvetica, shape = box, fixedsize = true, width = 1.6]
      tab1 [label = 'Estimation']
      tab2 [label = 'Population \n Mean']
      tab3 [label = 'Population \n Proportion']
      tab4 [label = 'Population \n Variance']
      tab5 [label = '$\\\\sigma^2 \\\\text{ known}$']
      tab6 [label = '$\\\\sigma^2 \\\\text{ unknown}$']
      tab7 [label = '$ME = z_{\\\\frac{\\\\alpha}{2}} \\\\frac{\\\\sigma}{\\\\sqrt{n}}$', color = red]
      tab8 [label = '$ME = t_{n-1, \\\\frac{\\\\alpha}{2}} \\\\frac{s}{\\\\sqrt{n}}$', color = red]
      tab9 [label = '$ME = z_{\\\\frac{\\\\alpha}{2}}\\\\sqrt{\\\\frac{\\\\hat{p}(1-\\\\hat{p})}{n}}$', color = red]
      tab10 [label = '$\\\\bar{x}\\\\pm ME$', color = green]
      tab11 [label = '$\\\\bar{x}\\\\pm ME$', color = green]
      tab12 [label = '$\\\\hat{p}\\\\pm ME$', color = green]

      # edge definitions with the node IDs
      edge[arrowhead = none]

      tab1 -> tab2;
      tab1 -> tab3;
      tab1 -> tab4;

      tab2 -> tab5;
      tab2 -> tab6;

      tab5 -> tab7 [label = 'Margin of Error', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]
      tab7 -> tab10 [label = 'Confidence Interval', fontcolor = green, fontsize = 8, color = green, arrowhead = normal]

      tab6 -> tab8 [label = 'Margin of Error', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]
      tab8 -> tab11 [label = 'Confidence Interval', fontcolor = green, fontsize = 8, color = green, arrowhead = normal]

      tab3 -> tab9 [label = 'Margin of Error', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]
      tab9 -> tab12 [label = 'Confidence Interval', fontcolor = green, fontsize = 8, color = green, arrowhead = normal]

      {rank = same; tab2 tab3 tab4}
      {rank = same; tab7 tab8 tab9}
      {rank = same; tab10 tab11 tab12}
      }
      "
  )
)

print(pEstimation)

# ### Specify the path for the PNG file
# result_path <- paste0("/Users/duongtrinh/Dropbox/GTA/ECON1013/GTA-ECON1013-IntroStats/LAB3-2324/pictures/")
# png_file_path <- paste0(result_path,"EstimationGuide.png")
# ### Save the plot as an PNG file
# png(file = png_file_path, width = 800, height = 540, res = 150)
# print(pEstimation)
# ### Close the PNG device
# dev.off()

## Case1 ====

add_mathjax(
  grViz(
    "digraph flowchart {
      graph [layout = dot,
         rankdir = TB,
         overlap = true,
         fontsize = 10]

      # node definitions with substituted label text
      node [fontname = Helvetica, shape = box, fixedsize = true, width = 1.6]
      tab1 [label = 'Estimation', style = filled, fillcolor = lightblue]
      tab2 [label = 'Population \n Mean']
      tab3 [label = 'Population \n Proportion', style = filled, fillcolor = lightblue]
      tab4 [label = 'Population \n Variance']
      tab5 [label = '$\\\\sigma^2 \\\\text{ known}$']
      tab6 [label = '$\\\\sigma^2 \\\\text{ unknown}$']
      tab7 [label = '$ME = z_{\\\\frac{\\\\alpha}{2}} \\\\frac{\\\\sigma}{\\\\sqrt{n}}$', color = red]
      tab8 [label = '$ME = t_{n-1, \\\\frac{\\\\alpha}{2}} \\\\frac{s}{\\\\sqrt{n}}$', color = red]
      tab9 [label = '$ME = z_{\\\\frac{\\\\alpha}{2}}\\\\sqrt{\\\\frac{\\\\hat{p}(1-\\\\hat{p})}{n}}$', color = red, style = filled, fillcolor = lightblue]
      tab10 [label = '$\\\\bar{x}\\\\pm ME$', color = green]
      tab11 [label = '$\\\\bar{x}\\\\pm ME$', color = green]
      tab12 [label = '$\\\\hat{p}\\\\pm ME$', color = green, style = filled, fillcolor = lightblue]

      # edge definitions with the node IDs
      edge[arrowhead = none]
      tab1 -> tab2;
      tab1 -> tab3;
      tab1 -> tab4;

      tab2 -> tab5;
      tab2 -> tab6;

      tab5 -> tab7 [label = 'Margin of Error', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]
      tab7 -> tab10 [label = 'Confidence Interval', fontcolor = green, fontsize = 8, color = green, arrowhead = normal]

      tab6 -> tab8 [label = 'Margin of Error', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]
      tab8 -> tab11 [label = 'Confidence Interval', fontcolor = green, fontsize = 8, color = green, arrowhead = normal]

      tab3 -> tab9 [label = 'Margin of Error', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]
      tab9 -> tab12 [label = 'Confidence Interval', fontcolor = green, fontsize = 8, color = green, arrowhead = normal]

      {rank = same; tab2 tab3 tab4}
      {rank = same; tab7 tab8 tab9}
      {rank = same; tab10 tab11 tab12}
      }
      "
  )
)

## Case2 ====

add_mathjax(
  grViz(
    "digraph flowchart {
      graph [layout = dot,
         rankdir = TB,
         overlap = true,
         fontsize = 10]

      # node definitions with substituted label text
      node [fontname = Helvetica, shape = box, fixedsize = true, width = 1.6]
      tab1 [label = 'Estimation', style = filled, fillcolor = lightblue]
      tab2 [label = 'Population \n Mean', style = filled, fillcolor = lightblue]
      tab3 [label = 'Population \n Proportion']
      tab4 [label = 'Population \n Variance']
      tab5 [label = '$\\\\sigma^2 \\\\text{ known}$']
      tab6 [label = '$\\\\sigma^2 \\\\text{ unknown}$', style = filled, fillcolor = lightblue]
      tab7 [label = '$ME = z_{\\\\frac{\\\\alpha}{2}} \\\\frac{\\\\sigma}{\\\\sqrt{n}}$', color = red]
      tab8 [label = '$ME = t_{n-1, \\\\frac{\\\\alpha}{2}} \\\\frac{s}{\\\\sqrt{n}}$', color = red, style = filled, fillcolor = lightblue]
      tab9 [label = '$ME = z_{\\\\frac{\\\\alpha}{2}}\\\\sqrt{\\\\frac{\\\\hat{p}(1-\\\\hat{p})}{n}}$', color = red]
      tab10 [label = '$\\\\bar{x}\\\\pm ME$', color = green]
      tab11 [label = '$\\\\bar{x}\\\\pm ME$', color = green, style = filled, fillcolor = lightblue]
      tab12 [label = '$\\\\hat{p}\\\\pm ME$', color = green]

      # edge definitions with the node IDs
      edge[arrowhead = none]
      tab1 -> tab2;
      tab1 -> tab3;
      tab1 -> tab4;

      tab2 -> tab5;
      tab2 -> tab6;

      tab5 -> tab7 [label = 'Margin of Error', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]
      tab7 -> tab10 [label = 'Confidence Interval', fontcolor = green, fontsize = 8, color = green, arrowhead = normal]

      tab6 -> tab8 [label = 'Margin of Error', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]
      tab8 -> tab11 [label = 'Confidence Interval', fontcolor = green, fontsize = 8, color = green, arrowhead = normal]

      tab3 -> tab9 [label = 'Margin of Error', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]
      tab9 -> tab12 [label = 'Confidence Interval', fontcolor = green, fontsize = 8, color = green, arrowhead = normal]

      {rank = same; tab2 tab3 tab4}
      {rank = same; tab7 tab8 tab9}
      {rank = same; tab10 tab11 tab12}
      }
      "
  )
)

## Case1 ====

add_mathjax(
  grViz(
    "digraph flowchart {
      graph [layout = dot,
         rankdir = TB,
         overlap = true,
         fontsize = 10]

      # node definitions with substituted label text
      node [fontname = Helvetica, shape = box, fixedsize = true, width = 1.6]
      tab1 [label = 'Estimation', style = filled, fillcolor = lightblue]
      tab2 [label = 'Population \n Mean', style = filled, fillcolor = lightblue]
      tab3 [label = 'Population \n Proportion']
      tab4 [label = 'Population \n Variance']
      tab5 [label = '$\\\\sigma^2 \\\\text{ known}$', style = filled, fillcolor = lightblue]
      tab6 [label = '$\\\\sigma^2 \\\\text{ unknown}$']
      tab7 [label = '$ME = z_{\\\\frac{\\\\alpha}{2}} \\\\frac{\\\\sigma}{\\\\sqrt{n}}$', color = red, style = filled, fillcolor = lightblue]
      tab8 [label = '$ME = t_{n-1, \\\\frac{\\\\alpha}{2}} \\\\frac{s}{\\\\sqrt{n}}$', color = red]
      tab9 [label = '$ME = z_{\\\\frac{\\\\alpha}{2}}\\\\sqrt{\\\\frac{\\\\hat{p}(1-\\\\hat{p})}{n}}$', color = red]
      tab10 [label = '$\\\\bar{x}\\\\pm ME$', color = green, style = filled, fillcolor = lightblue]
      tab11 [label = '$\\\\bar{x}\\\\pm ME$', color = green]
      tab12 [label = '$\\\\hat{p}\\\\pm ME$', color = green]

      # edge definitions with the node IDs
      edge[arrowhead = none]
      tab1 -> tab2;
      tab1 -> tab3;
      tab1 -> tab4;

      tab2 -> tab5;
      tab2 -> tab6;

      tab5 -> tab7 [label = 'Margin of Error', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]
      tab7 -> tab10 [label = 'Confidence Interval', fontcolor = green, fontsize = 8, color = green, arrowhead = normal]

      tab6 -> tab8 [label = 'Margin of Error', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]
      tab8 -> tab11 [label = 'Confidence Interval', fontcolor = green, fontsize = 8, color = green, arrowhead = normal]

      tab3 -> tab9 [label = 'Margin of Error', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]
      tab9 -> tab12 [label = 'Confidence Interval', fontcolor = green, fontsize = 8, color = green, arrowhead = normal]

      {rank = same; tab2 tab3 tab4}
      {rank = same; tab7 tab8 tab9}
      {rank = same; tab10 tab11 tab12}
      }
      "
  )
)


# style = filled, fillcolor = Linen

# https://cran.r-project.org/web/packages/DiagrammeR/DiagrammeR.pdf

# https://epirhandbook.com/en/diagrams-and-charts.html


# devtools::install_github("timelyportfolio/DiagrammeR@feature/svg-mathjax")
library(DiagrammeR)

add_mathjax(
  grViz(
    '
digraph G {
  # node definitions with substituted label text
  node [fontname = Helvetica, shape = rectangle]
  A [label="$\\\\cos (2\\\\theta) = \\\\cos^2 \\\\theta - \\\\sin^2 \\\\theta$"];
  A -> B;
}
'
  )
)
