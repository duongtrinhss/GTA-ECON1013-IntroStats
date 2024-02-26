library(DiagrammeR)
library(htmltools)

add_mathjax(
  grViz(
    "digraph flowchart {
      graph [layout = dot,
         rankdir = TB,
         overlap = true,
         fontsize = 10]

      # node definitions with substituted label text
      node [fontname = Helvetica, shape = box, fixedsize = true, width = 1.75]
      tab1 [label = 'Hypothesis Tests \n for:']
      tab2 [label = 'Population \n Mean']
      tab3 [label = 'Population \n Proportion']
      tab4 [label = 'Population \n Variance']
      tab5 [label = '$\\\\sigma^2 \\\\text{ known}$']
      tab6 [label = '$\\\\sigma^2 \\\\text{ unknown}$']
      tab7 [label = '$nP(1-P) > 5$']

      # edge definitions with the node IDs
      edge[arrowhead = none]

      tab1 -> tab2;
      tab1 -> tab3;
      tab1 -> tab4;

      tab2 -> tab5;
      tab2 -> tab6;
      tab3 -> tab7;

      {rank = same; tab2 tab3 tab4}
      {rank = same; tab5 tab6 tab7}
      }
      "
  )
)

## HypothesisTestsGuide ====

add_mathjax(
  grViz(
    "digraph flowchart {
      graph [layout = dot,
         rankdir = TB,
         overlap = true,
         fontsize = 10]

      # node definitions with substituted label text
      node [fontname = Helvetica, shape = box, fixedsize = true, width = 1.75]
      tab1 [label = 'Which \n Test Statistic?']
      tab2 [label = 'Population \n Mean']
      tab3 [label = 'Population \n Proportion']
      tab4 [label = 'Population \n Variance']
      tab5 [label = '$\\\\sigma^2 \\\\text{ known}$']
      tab6 [label = '$\\\\sigma^2 \\\\text{ unknown}$']
      tab7 [label = '$nP(1-P) > 5$']
      tab11 [label = '$\\\\frac{\\\\bar{X}-\\\\mu_0}{\\\\sigma/\\\\sqrt{n}} \\\\sim N(0,1)$', color = green]
      tab12 [label = '$\\\\frac{\\\\bar{X}-\\\\mu_0}{s/\\\\sqrt{n}} \\\\sim t_{n-1}$', color = green]
      tab13 [label = '$\\\\frac{\\\\hat{P}-p_0}{\\\\sqrt{p_0(1-p_0)/n}} \\\\sim N(0,1)$', color = green]
      tab8 [label = '$z = \\\\frac{\\\\bar{x}-\\\\mu_0}{\\\\sigma/\\\\sqrt{n}}$', color = red]
      tab9 [label = '$t = \\\\frac{\\\\bar{x}-\\\\mu_0}{s/\\\\sqrt{n}}$', color = red]
      tab10 [label = '$z = \\\\frac{\\\\hat{p}-p_0}{\\\\sqrt{p_0(1-p_0)/n}}$', color = red]

      # edge definitions with the node IDs
      edge[arrowhead = none]

      tab1 -> tab2;
      tab1 -> tab3;
      tab1 -> tab4;

      tab2 -> tab5;
      tab2 -> tab6;
      tab3 -> tab7;

      tab5 -> tab11 [label = 'Use \n standard normal \n distribution', fontcolor = green, fontsize = 8, color = green]
      tab11 -> tab8 [label = 'Compute \n test statistic', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]

      tab6 -> tab12 [label = 'Use \n Student`s t \n distribution', fontcolor = green, fontsize = 8, color = green]
      tab12 -> tab9 [label = 'Compute \n test statistic', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]

      tab7 -> tab13 [label = 'Use \n standard normal \n distribution', fontcolor = green, fontsize = 8, color = green]
      tab13 -> tab10 [label = 'Compute \n test statistic', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]

      {rank = same; tab2 tab3 tab4}
      {rank = same; tab5 tab6 tab7}
      {rank = same; tab11 tab12 tab13}
      {rank = same; tab8 tab9 tab10}
      }
      "
  )
)

# ### Specify the path for the PNG file
# result_path <- paste0("/Users/duongtrinh/Dropbox/GTA/ECON1013/GTA-ECON1013-IntroStats/LAB3-2324/pictures/")
# png_file_path <- paste0(result_path,"HypothesisTestsGuide.png")
# ### Save the plot as an PNG file
# png(file = png_file_path, width = 800, height = 540, res = 150)
# print(pHypothesisTestsGuide)
# ### Close the PNG device
# dev.off()

## HypothesisTestsGuide-Case1 ====

add_mathjax(
  grViz(
    "digraph flowchart {
      graph [layout = dot,
         rankdir = TB,
         overlap = true,
         fontsize = 10]

      # node definitions with substituted label text
      node [fontname = Helvetica, shape = box, fixedsize = true, width = 1.75]
      tab1 [label = 'Which \n Test Statistic?', style = filled, fillcolor = lightblue]
      tab2 [label = 'Population \n Mean', style = filled, fillcolor = lightblue]
      tab3 [label = 'Population \n Proportion']
      tab4 [label = 'Population \n Variance']
      tab5 [label = '$\\\\sigma^2 \\\\text{ known}$', style = filled, fillcolor = lightblue]
      tab6 [label = '$\\\\sigma^2 \\\\text{ unknown}$']
      tab7 [label = '$nP(1-P) > 5$']
      tab11 [label = '$\\\\frac{\\\\bar{X}-\\\\mu_0}{\\\\sigma/\\\\sqrt{n}} \\\\sim N(0,1)$', color = green, style = filled, fillcolor = lightblue]
      tab12 [label = '$\\\\frac{\\\\bar{X}-\\\\mu_0}{s/\\\\sqrt{n}} \\\\sim t_{n-1}$', color = green]
      tab13 [label = '$\\\\frac{\\\\hat{P}-p_0}{\\\\sqrt{p_0(1-p_0)/n}} \\\\sim N(0,1)$', color = green]
      tab8 [label = '$z = \\\\frac{\\\\bar{x}-\\\\mu_0}{\\\\sigma/\\\\sqrt{n}}$', color = red, style = filled, fillcolor = lightblue]
      tab9 [label = '$t = \\\\frac{\\\\bar{x}-\\\\mu_0}{s/\\\\sqrt{n}}$', color = red]
      tab10 [label = '$z = \\\\frac{\\\\hat{p}-p_0}{\\\\sqrt{p_0(1-p_0)/n}}$', color = red]

      # edge definitions with the node IDs
      edge[arrowhead = none]

      tab1 -> tab2;
      tab1 -> tab3;
      tab1 -> tab4;

      tab2 -> tab5;
      tab2 -> tab6;
      tab3 -> tab7;

      tab5 -> tab11 [label = 'Use \n standard normal \n distribution', fontcolor = green, fontsize = 8, color = green]
      tab11 -> tab8 [label = 'Compute \n test statistic', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]

      tab6 -> tab12 [label = 'Use \n Student`s t \n distribution', fontcolor = green, fontsize = 8, color = green]
      tab12 -> tab9 [label = 'Compute \n test statistic', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]

      tab7 -> tab13 [label = 'Use \n standard normal \n distribution', fontcolor = green, fontsize = 8, color = green]
      tab13 -> tab10 [label = 'Compute \n test statistic', fontcolor = red, fontsize = 8, color = red, arrowhead = normal]

      {rank = same; tab2 tab3 tab4}
      {rank = same; tab5 tab6 tab7}
      {rank = same; tab11 tab12 tab13}
      {rank = same; tab8 tab9 tab10}
      }
      "
  )
)
