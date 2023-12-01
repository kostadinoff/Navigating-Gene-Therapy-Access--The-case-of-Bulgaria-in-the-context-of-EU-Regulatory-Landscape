# Loading libraries
library(tidyverse)
library(readxl)
library(rsample)
library(ggthemes)
library(gt)
library(ggrepel)
library(gtsummary)
library(ggtext)

# Some setups
theme_nice = ggthemes::theme_tufte() +
  theme(
    axis.ticks = element_line(linewidth = 0.5, color = "black"), # tick width,
    axis.ticks.length = unit(4, "mm"),
    #grid elements
    # panel.grid.major = element_blank(),    #strip major gridlines
    # panel.grid.minor = element_blank(),    #strip minor gridlines
    # axis.ticks = element_blank(),          #strip axis ticks
    #since theme_minimal() already strips axis lines,
    #we don't need to do that again
    #text elements
    plot.title = element_text(
      #title
      family = "Sofia Sans Condensed",
      #set font family
      size = 20,
      #set font size
      face = 'bold',
      #bold typeface
      hjust = 0,
      #left align
      vjust = 2
    ),
    #raise slightly
    plot.subtitle = element_text(#subtitle
      family = "Sofia Sans Condensed",      #font family
      size = 18),
    #font size
    
    plot.caption = element_text(
      #caption
      family = "Sofia Sans Condensed",
      #font family
      size = 12,
      #font sizehttp://127.0.0.1:34401/graphics/plot_zoom_png?width=1200&height=900
      hjust = 1
    ),
    #right align
    axis.title = element_text(#axis titles
      family = "Sofia Sans Condensed",   #font family
      size = 22),
    #font size
    axis.text = element_text(#axis text
      family = "Sofia Sans Condensed",  #axis famuly
      size = 18),
    #font size
    axis.text.x = element_text(#margin for axis text
      margin = margin(5, b = 10)),
    #since the legend often requires manual tweaking
    #based on plot content, don't define it here
  )
theme_set(theme_nice)


d = read_excel("ema_gene.xlsx")


d |>ggplot(aes(date,cum_n)) +
  geom_line(linewidth = 4) +
  geom_point(aes(color  = type), size = 2.5) +
  geom_rangeframe(data = tibble(
    date = as.POSIXct(c("2010-01-01", "2025-01-01")),
    cum_n = c(0, 25)))+
  geom_label_repel(
    aes(label = name, fill  = type),
    family = "Sofia Sans Condensed",
    fontface = "bold",
    box.padding = 1,
    max.overlaps = Inf,
    size = 8,
    segment.linetype = 2
  )+ 
  geom_rug(aes(color = type), sides = "b")+
  scale_fill_manual(values = c("#F95CB7", "#ADE25D", "#9ADBEF"))+
  scale_color_manual(values = c("#F95CB7", "#ADE25D", "#9ADBEF"))+
  theme(legend.position = "none")+
  labs(caption = "<span style = 'color:#F95CB7'>**cell**</span>,
  <span style = 'color:#ADE25D'>**gene therapy**</span> and
  <span style = 'color:#9ADBEF'>**tissue engineered products**</span>",
    x = "Date of market authorization",
    y = "Cumulative number of market authorization")+
  theme(plot.caption =element_markdown(hjust = 0.5,
                                       family = "Sofia Sans Condensed",
                                       size = 20))
  ggsave("ema_gene.tiff", device = "tiff", width = 11, height = 7, dpi = 400, bg = "white")

d |> 
  filter(type == "GTMP") |> 
  group_by(prime, Orphan) |> 
  summarise(n = n()) |> 
  mutate(proc = n/sum(n))

d |> filter(is.na(comment) & type == "GTMP") |> 
  view()
  