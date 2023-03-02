library(janeaustenr)
library(tidytext)
library(stringr)
library(dplyr)
library(wordcloud)

books <- austen_books() %>%
    group_by(book) %>%
    mutate(linenumber = row_number(),
           chapter = cumsum(str_detect(text,regex("^chapter [\\divxlc]",ignore_case =TRUE)))) %>%
    ungroup()

data("stop_words")
books_words <- books %>%
    unnest_tokens(word, text) %>% anti_join(stop_words)


books_words %>%
    count(word, sort = TRUE) %>%
    with(wordcloud(word, n, max.words = 100))
