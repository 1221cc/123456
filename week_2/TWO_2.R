library(xml2)
library(tmcn)
library(rvest)
pttTestFunction <- function(URL, filename)
{
  #URL   = "https://www.ptt.cc/bbs/NTUcourse/index.html"
  html  = read_html(URL)
  title = html_nodes(html, "a")
  href  = html_attr(title, "href")
  data = data.frame(title = toUTF8(html_text(title)),
                    href = href)
  data = data[-c(1:10),]
  getContent <- function(x) {
    url  = paste0("https://www.ptt.cc", x)
    tag  = html_node(read_html(url), 'div#main-content.bbs-screen.bbs-content')
    text = toUTF8(html_text(tag))
  }
  #getContent(data$href[1])
  allText = sapply(data$href, getContent)
  allText
  #out <- file(filename, "w", encoding="BIG-5") 
  write.table(allText, filename) 
  #close(out) 
}


source('pttTestFunction.R')
id = c(6128:6125)
URL = paste0("https://www.ptt.cc/bbs/NBA/index", id, ".html")
filename = paste0(id, ".txt")
pttTestFunction(URL[1], filename[1])
mapply(pttTestFunction, 
       URL = URL, filename = filename)


#網頁 https://www.ptt.cc/bbs/NBA/index6128.html

