############### Load the libraries ##############

library(tidyverse)
library(tidytext)
library(syuzhet)
library(textdata)
library(rvest)

############## Scraping data from web ##############

url <- "https://americanliterature.com/author/w-w-jacobs/short-story/the-monkeys-paw/"

webpage <- read_html(url)

titles <- html_nodes(webpage, ".story-description p") %>%  html_text() 

titles1 <- as.data.frame(titles)

############### Tokenize the text data ##############

tidy_text <- titles1 %>%
  unnest_tokens(word, titles)

############### View the tokenized data ##############

tidy_text

############### Get the bing sentiment lexicon ##############

sentiments <- get_sentiments("bing")

############### Join the tokenized words with the sentiment lexicon ##############

sentiment_data <- tidy_text %>%
  inner_join(sentiments, by = "word")

############### View the sentiment data ##############

sentiment_data

############### Summarize sentiment by counting positive and negative words ##############

sentiment_summary <- sentiment_data %>%
  count(sentiment) %>%
  spread(sentiment, n, fill = 0) %>%
  mutate(sentiment_score = positive - negative)

############### View the sentiment summary ##############

sentiment_summary

############### Perform sentiment analysis using the syuzhet package ##############

syuzhet_sentiments <- get_sentiment(tidy_text$word, method = "syuzhet")

############### Add sentiment scores to the original data ##############

text_data <- tidy_text %>%
  mutate(syuzhet_sentiment = syuzhet_sentiments)

############### View the sentiment scores ##############

text_data

############### Perform sentiment analysis using the NRC lexicon ##############
nrc_sentiments <- get_nrc_sentiment(tidy_text$word)

############### Add NRC sentiment scores to the original data ##############

text_data <- cbind(text_data, nrc_sentiments)

############### View the NRC sentiment data ##############

text_data

############## Plot sentiment scores using the NRC lexicon ##############

nrc_sentiments %>%
  gather(key = "emotion", value = "count") %>%
  group_by(emotion) %>%
  summarise(count = sum(count)) %>%
  ggplot(aes(x = emotion, y = count, fill = emotion)) +
  geom_bar(stat = "identity") +
  theme_minimal() +
  labs(title = "Sentiment Distribution in Text Data")

############## End of code ##############

print(titles1$titles[55])
